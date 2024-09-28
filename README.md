# How to connect and edit git from linux
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
git add . && git commit -m "init" (After Changes) <br />
git config --global user.email "user@email.com" (set what email is doing the update) <br />
git config --global user.name "Laptop" (name of the user doing it) <br />
(then rerun the git add) <br />
git push (sometimes you will need to rerun ssh -T git@github.com to run this) <br />
then edit install.conf.yaml <br />
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

.Dotfiles Template
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
