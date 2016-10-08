# automagic-scripts
A collection of useful scrips that speed up development

## Bash Scripts
### How To
`git-update` - this script automagically commits, and if given the argument -t, pushes to a git repo. You will need to edit the script with your Username & Password, so make sure you add the script to your `.gitignore`

The command looks like this:
`sudo ./git-update "Your commit message" -t` 

### Why not use an SSH Key?
SSH Keys can't be used for repos over HTTPS (or at least setting them up is a pain) so I made a script instead.
