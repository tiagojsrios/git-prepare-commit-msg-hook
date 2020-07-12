# git-commit-hook

A lot of developers identify JIRA issue when they're creating their feature/hotfix branches, however identification on commit messages are also very important. Therefore, after investigating a bit how I could grab JIRA issue number from branch's name and add it into commit's message, in an automated way, I decided to create this small repository in order to help people that also struggle on this.

# How to setup

1. In order to make sure this git hook is copied to all new cloned repositories, you have to do the following:
   * git config --global init.templatedir '~/.git-templates'
      * Tells git where he should look for templates.
   * mkdir -p ~/.git-templates/hooks
      * Create 'hooks' folder, in order to save our hooks
   * cp ./prepare-commit-msg ~/.git-templates/hooks
      * Copy **prepare-commit-msg** template to the newly created folder
   * chmod a+x ~/.git-templates/hooks/prepare-commit-msg
      * Makes sure the hook is executable.

2. To make this also working for cloned repositories, you can run a script created by me.
   * Run the script: *./script.sh path/to/your/repositories/folder*
   * **Note:** If you don't set the path to your repositories' folder, it will use your current directory "."

# References Used

* https://coderwall.com/p/jp7d5q/create-a-global-git-commit-hook
* https://medium.com/better-programming/how-to-automatically-add-the-ticket-number-in-git-commit-message-bda5426ded05
