# How to setup

1. Globally
   * git config --global init.templatedir '~/.git-templates'
   * mkdir -p ~/.git-templates/hooks
   * cp ./prepare-commit-msg ~/.git-templates/hooks
   * chmod a+x ~/.git-templates/hooks/prepare-commit-msg

2. Existing repositories
   * Run the script: *./script.sh path/to/your/repositories/folder*
   * **Note:** If you don't set the path to your repositories' folder, it will use your current directory "."