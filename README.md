# How to connect dotbot to linux instance!
# By: Nicholas Fisher 
![image](https://github.com/user-attachments/assets/848e208a-db9a-467f-9e4b-cafdcfa05d5c) <br />
***Dotbot and connecting my GitHub to my Linux ssh!*** <br />
**`Connecting to github`** <br />
ssh-keygen -t ed25519 <br />
cat ~/.ssh/id_ed25519.pub <br />
Copy and paste it to the ssh keys section of GitHub <br />
ssh -T git@github.com (Connect) <br />
**`Push changes to repo and getting repos to push`** <br />
git clone git@github.com:FishyStix12/.dotfishingbot.git <br /> (example Git clone of repositories to push updates) <br />

# Pushing Dotbot Git <br />
![image](https://github.com/user-attachments/assets/d64b6853-8c62-4c7c-aa2c-a6710c69fab4) <br />
**Ensure install.conf.yaml is updated to reflect new repositories before pushing!** <br />
`git add . && git commit -m "init" (After Changes)` <br />
**If it needs your userid and email for the push execute the following commands:** <br />
`git config --global user.email "user@email.com"` **(Set what email is doing the update)* <br />
`git config --global user.name "Laptop"` **(Name of the user doing it)* <br />
*(Then rerun the git add)* <br />
`git push` (Sometimes you will need to rerun ssh -T git@github.com to run this)* <br />
*then edit install.conf.yaml <br />
`(or dont git push edit in Linux then git push!)`<br />
**`Important Note:`** <br />
If it won't let you push because they try to enforce a username and password which no longer works in github since 2021. It means you are using an `https URL` instead of an `SSH URL`for your repository instead of the https URL. <br />
To switch to SSH, do these tasks: <br />
In dotfishingbot main click `Code -> SSH -> copy` <br />
git remote set-url origin `what you copied in ssh tab on Github repo` <br />

# Dotbot Post Configuration <br />
![image](https://github.com/user-attachments/assets/a6d706ff-3cc7-47ac-94b8-161ccb7b3aab) <br />
**To set up dotbot environment for your Kali Linux machine download the repository cd into it and run `./install` switch to home directory and then run `./kaliconfigdots/dotkaliconf.sh`** <br />
# Configuration commands to run afterwards: <br />
`cd ~/kaliconfigdots/` <br />
`./kaliconfigdots/dotkaliconf.sh` <br />
*Post Reboot* <br />
`./kaliconfigdots/reboot-change-kali-user` <br />
*Configure bluetooth keyboard if this is for a pi!* <br />
*Run below if pi for screen change for touchscreens! (If needed)* <br />
`./kaliconfigdots/after-bluetooth-piconf.sh` <br />

# Git Troubleshooting Guide
![image](https://github.com/user-attachments/assets/9081fffc-d0ec-40a3-b773-cdbd0635cf17)
## Overview

This guide provides a set of commands for troubleshooting common issues when pulling and pushing changes in Git, particularly when encountering divergent branches.

## Common Errors

These errors typically occur when there are changes in the remote repository that your local repository doesn’t have, leading to a divergence in the commit history. This situation can arise when multiple contributors are working on the same branch. If one person pushes their changes while another has local changes that haven’t been pushed yet, Git needs to reconcile these differences. If you attempt to pull without specifying how to handle these divergences, Git will prompt you to clarify your intent, as it doesn't know whether to create a merge commit or reapply your commits on top of the incoming changes.

## Table of Torubleshooting Commands: <br />

| **Command**                              | **Description**                                                                                   |
|------------------------------------------|---------------------------------------------------------------------------------------------------|
| `git status`                             | Displays the current branch, changes to be committed, and untracked files.                       |
| `git pull --no-rebase origin master`    | Pulls changes from the remote `master` branch, merging them with your local branch.              |
| `git pull --rebase origin master`       | Pulls changes from the remote `master` branch and replays your local commits on top of those changes. |
| `git add <file_with_conflict>`          | Stages a resolved file after handling merge conflicts, preparing it for the next commit.          |
| `git commit -m "Resolved merge conflicts"` | Commits the changes after resolving merge conflicts.                                            |
| `git push origin master`                 | Pushes your local commits to the remote `master` branch.                                        |
| `git config --global pull.rebase false` | Sets the default pull behavior to merge for all repositories.                                   |
| `git config --global pull.rebase true`  | Sets the default pull behavior to rebase for all repositories.                                  |
| `git config --global pull.ff only`       | Sets the default pull behavior to fast-forward only, meaning no merges or rebases will be allowed if local changes exist. |
| `git fetch origin`                       | Fetches changes from the remote repository without merging them into your local branch.          |
| `git reset --hard origin/master`        | Resets your local branch to match the remote `master` branch, discarding local changes.         |
| `git log --oneline --graph --decorate --all` | Displays a visual representation of your commit history, showing where branches diverge.       |
| `git fetch --prune`                     | Updates the list of remote branches and removes references to branches that have been deleted.  |

## Conclusion <br />
By using the commands listed above, you can effectively manage and resolve issues related to pulling and pushing in Git. This will ensure a smoother collaboration process in your Git workflow. <br />

# .Dotfiles Template
# By: anishathalye
=================

This is a template repository for bootstrapping your dotfiles with [Dotbot][dotbot].

To get started, you can [create a new repository from this template][template]
(or you can [fork][fork] this repository, if you prefer). You can probably
delete this README and rename your version to something like just `dotfiles`.

In general, you should be using symbolic links for everything, and using git
submodules whenever possible.
To keep submodules at their proper versions, you could include something like
`git submodule update --init --recursive` in your `install.conf.yaml`.

To upgrade your submodules to their latest versions, you could periodically run
`git submodule update --init --remote`.

Inspiration
-----------

If you're looking for inspiration for how to structure your dotfiles or what
kinds of things you can include, you could take a look at some repos using
Dotbot.

* [anishathalye's dotfiles][anishathalye_dotfiles]
* [csivanich's dotfiles][csivanich_dotfiles]
* [m45t3r's dotfiles][m45t3r_dotfiles]
* [alexwh's dotfiles][alexwh_dotfiles]
* [azd325's dotfiles][azd325_dotfiles]
* [wazery's dotfiles][wazery_dotfiles]
* [thirtythreeforty's dotfiles][thirtythreeforty_dotfiles]

And there are about [700 more here][dotbot-users].

If you're using Dotbot and you'd like to include a link to your dotfiles here
as an inspiration to others, please submit a pull request.

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

That being said, I would appreciate it if you could maintain a link back to
Dotbot (or this repository) to help other people discover Dotbot.
