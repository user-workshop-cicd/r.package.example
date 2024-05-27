# r.package.example

An example package for the workshop.

## Install `git` and SSH client

### Windows
On Windows you can install `git` together with SSH client from https://git-scm.com/download/win.

Below you can find suggested installation customizations, but feel free to customize according to your preferences.

1. Select Components → you can unselect `Windows Explorer integration` and `Scalar (Git add-on to manage large-scale repositories)`.
1. Choosing the default editor used by Git → `Use the Nano editor by default`.
1. Adjusting the name of the initial branch in new repositories → `Override the default branch name for new repositories` with `main`.
1. Adjusting your PATH environment → `Use Git from Git Bash only`.
1. Use bundled OpenSSH (default).
1. Use the OpenSSL library (default).
1. Configure the line ending conversions → `Checkout as-is, commit as-is`.
1. Use MinTTY (default).
1. Fast-forward or merge (default).
1. Git Credential Manager (default).
1. Enable file system caching (default).
1. No experimental options.

### Ubuntu or Docker container
On Ubuntu, you can install them like this. If you know how to use Docker, you can run these commands in `ubuntu` image.
```bash
apt-get update && apt-get install -yq openssh-client git
```

## Setup write access to GitHub

Create an SSH key pair.
```bash
ssh-keygen -P '' -t rsa -b 4096 -C "$(whoami)@$(hostname)" -f ~/.ssh/$(whoami)-github
eval $(ssh-agent) && ssh-add ~/.ssh/$(whoami)-github
cat ~/.ssh/$(whoami)-github.pub
```

The result will look like this:
```
ssh-rsa AAAA...
```

Copy this and paste to https://github.com/settings/ssh/new.

Add any title, and leave key type equal to authentication key.

## Cloning the sample repository

Clone the `r.package.example` repository. Replace `<url>` with an URL similar to this one: `git@github.com:user-workshop-cicd/r.package.example.git`, but `user-workshop-cicd` should be replaced with your GitHub username.

```bash
git clone <url>
cd r.package.example
git status
```

The output should look like:
```
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

Configure your name and email address - this will be required to push commits.
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```
