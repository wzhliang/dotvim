# What
Manages your entire Vim environment.

# Intro
It can manage both modern plugins which are in github or other social coding
website or traditional plugins on vim.sf.net (you'll have to manage version
yourself though)

# How
Basically `.vimrc, .gvimrc` files are version controlled. Traditional vim
plugins are similarly controlled in git under the `.vim` directory. github
plugins are only named inside a `plugin-list.txt` file and cloned or pulled on
request.

The key of this is the `manager.sh` script, which has 3 sub-command.

* To start, clone this project and run `./manager.sh pull`. This will pull your
  **live** environment into this git repository and generate the
  `plugin-list.txt` file. You then can do `git add && git commit` to track your
  changes.

* Changes made within this git repository (perhaps from a second machine) can be
  **pushed** to live environment with `./manage.sh push` command. It'll also
  generate a backup before overwriting all your files.

* And finally, the `./manage.sh up` command can update or create those github
  plugins in `.vim/bundle`.


**NOTE** There is no gurantee that this script will do what's mentioned above
without any unwanted side effect. The author take no responsibility on any
incidents whatsoever.
