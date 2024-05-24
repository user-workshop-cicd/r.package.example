# r.package.example

An example package for the workshop.

## Setting up local environment

You'll need an SSH client and `git`.

For example on Ubuntu, you can install them like this. If you know how to use Docker, you can run these commands in `ubuntu` image.
```bash
apt-get update && apt-get install -yq openssh-client git
```

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

### Cloning the sample repository

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
