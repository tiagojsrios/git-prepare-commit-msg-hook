# git-commit-hook

A lot of developers identify JIRA issue when they're creating their feature/hotfix branches, however identification on commit messages are also very important. Therefore, after investigating a bit how I could grab JIRA issue number from branch's name and add it into commit's message, in an automated way, I decided to create this small repository in order to help people that also struggle on this.

# How to setup

1. Globally
   * git config --global init.templatedir '~/.git-templates'
   * mkdir -p ~/.git-templates/hooks
   * cp ./prepare-commit-msg ~/.git-templates/hooks
   * chmod a+x ~/.git-templates/hooks/prepare-commit-msg

2. Existing repositories
   * Run the script: *./script.sh path/to/your/repositories/folder*
   * **Note:** If you don't set the path to your repositories' folder, it will use your current directory "."
