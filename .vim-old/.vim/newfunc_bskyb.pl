#!/usr/bin/perl

#***********************************************************
#* A script to generate a new function structure given the *
#* prototype of it.                                        *
#* It takes a single line of input from the STDIN and      *
#* output to the STDOUT. So it can be used as a filter for *
#* vim, where you can stop at the line which you wan to    *
#* expand to a function and execute the following Ex       *
#* command: :.!perl newFunc.pl                             *
#* NOTE: This script doesn't do syntax checking. It will   *
#* take the sanity of the line for granted.                *
#***********************************************************

#subroutine to parse an indentifier and find out 
#the type and name of it.
sub ParseIdentifier
{
   $id = $_[0];

   $id =~ s/^[\s\t]*//;        #trim the string
   $id =~ s/[\s\t]*$//;        #trim the string
   $id =~ s/[\s\t]+/ /g;       # use single space only.
   $id =~ s/[\s]?\*+[\s]?/\*/; # if there is *, there is no space

   if ( $id eq "void" )
   {
      return 'void' . '#' . '---';
   }

   $lastSpace      = rindex( $id, " ");
   $lastStar       = rindex( $id, "\*");
   $startOfIdentifier
                   = ( $lastStar > $lastSpace ) ? $lastStar : $lastSpace;
   $dataType       = substr( $id, 0, $startOfIdentifier + 1);
   $identifier     = substr( $id,    $startOfIdentifier + 1 );

#ignore the following keywords
   $dataType =~ s/static\s?//g;
   $dataType =~ s/inline\s?//g;
   $dataType =~ s/INLINE\s?//g;
   $dataType =~ s/const\s?//g;
   $dataType =~ s/extern\s?//g;

   return $dataType . "#" . $identifier;
}

#Parse the argument list.
#and save the result into the global variables
#for future reference.
sub ParseArguments
{
   my ( @args, $a, @id );

   @args = split /\,/, $_[0];

   foreach $a (@args)
   {
      @id = split /#/, ParseIdentifier( $a );

      push @argumentList, $id[1];
      $argumentReturnTypes{ $id[1] } = $id[0];
   }
}

#Print out the funnction body
sub PrintFunctionBody
{
   my ( $printReturn, $a, $b );
   my ( $parameter, $fmt, $format );
   my ( $modName );

   $modName = $_[0];

   if ( $retType =~ /[\s|\t]*void[\s|\t]*$/ ) 
   {
      $printReturn = 0;
   }
   else
   {
      $printReturn = 1;
   }

   if ( $printReturn )
   {
      print "{\n\t$retType retVal=0;\n"; 
   }
   else
   {
      print '{';
   }
   print "\n\tDBG_ENTRY(( \"$funcName\", DBG_$modName, \"";

   if ( $argumentReturnTypes{ $argumentList[0] }
         eq 'void' )
   {
      print "\" ));\n";
   }
   else
   {
      foreach $a ( @argumentList )
      {
         $b = $argumentReturnTypes{ $a };
         if ( $b eq "void" )
         {
            last;
         }
         elsif ( $b =~ /\*/ )
         {
            push @fmt, "$a=0x\%x";
         }
         else
         {
            push @fmt, "$a=\%d";
         }
      }

      $parameter = join ( ',', @argumentList);
      $format = join ( ',', @fmt );

      print $format;
      print '", ';
      print $parameter;

      print " ));\n";
   }

   print "\tDBG_RETURN(( \"$funcName\", DBG_$modName, ";


   if ( $printReturn )
   {
      if ( $retType =~ /\*/ )
      {
         print "\"0x\%x\", retVal );\n";
      }
      else
      {
         print "\"\%d\", retVal ));\n";
      }
      print "\n\treturn retVal;\n}";
      print ' /* ', $funcName, '() */';
   }
   else
   {
      print "\"\" ));\n";
      print "}";
      print ' /* ', $funcName, '() */';
   }
}

#Print out the function header
#I.e the comments preceding the function
#describing the function input/output, etc.
sub PrintFunctionHeader
{
   my $starLine = '*' x 2;

   print "\/$starLine\n *";
   print " <FUNCTION-DESCRIPTION>\n *\n";
   print " * \@param\n *\n";

   #PrintInputs();
   #PrintOutputs();

   print " * \@sideeffect None.\n";
   print " *\n";
   print " * \@execution Synchronous.\n";
   print " *\n";
   print " * \@bug None.\n";
   print " *\n";
   print " * \@todo None.\n";
   print " *\n";
   print " * \@note None\n";
   print " *\n";
   print " */\n";

   print "\n";
}

#Print out the Input: section of the function header
sub PrintInputs
{
   my ( $a, $b );
   print " * Input(s):\n";
   foreach $a ( @argumentList )
   {
      $b = $argumentReturnTypes{ $a };
      if ( $b eq 'void' )
      {
         print " *    None.\n *\n";
      }
      else
      {
         print " *    Identifier:  $a\n";
         print " *    Type:        $argumentReturnTypes{ $a }\n";
         print " *    Description: \n *\n";
      }
   }
}

#Print out the Output(s): section of the function header
sub PrintOutputs
{
   my $starLine = '*' x 79;
   print " * Output(s): \n";
   print " *    None.\n *\n";
   print " * Returns:\n";

   if ( $retType =~ /^void\s?$/ )
   {
      print " *    None.\n *\n";
   }
   else
   {
      print " *    Type:        $retType\n";
      print " *    Description:\n";
      print " *\n";
   }
   print " $starLine\/\n";
}

#############################################
#                                           #
# the actuall main part of the script       #
#                                           #
#############################################
use Getopt::Std; # use this for module name

#Setup module name
my ( $mod, $arguments );
$mod = 'MODNAME';
getopt( 'm' );

$mod = $opt_m unless $opt_m.length() eq '0';

while ( <STDIN> )
{
#Global varibles
#to hold the argument list and their return type of the function
   local ( @argumentList, %argumentReturnTypes );
#to hold the function return type and function name
   local ( $retType, $funcName );

#Do some clean up of the function
   s/^[\s\t]*//;
   s/[\s\t]*$//;
   s/[\s\t]+/ /g;

#Divide the string into three parts: function type, funtion name and
#argument list
   $leftBrace = index ( $_, "(" );
   $rightBrace = rindex( $_, ")" );

   $funcName = substr ( $_, 0, $leftBrace );
   $arguments = substr( $_, $leftBrace + 1, $rightBrace - $leftBrace - 1 );

#Parse the function name itself
#@a[0] is the return type and [1] is the actual name of the function.
   @a  = split /#/, ParseIdentifier( $funcName );
   $retType=$a[0];
   $funcName=$a[1];

   ParseArguments( $arguments );

   #PrintFunctionHeader();

   print "$_\n"; # print out the function name itself.
   PrintFunctionBody( $mod );

   print "\n\n\n"; #onto the next function.
}

#<-EOF
