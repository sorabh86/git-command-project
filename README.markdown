# Git Essentials : Read Me file

You are reading the README for this practise project.
The only reason this project exists is to give the
fine viewers a means to learning the Git commands.

BASIC USAGE
-----------
```bash
# init project
$ git init

# add all files staged to project
$ git add .

# commit code
$ git commit -m 'describe your changes'

# short code for add file to stage and commit
$ git commit -am 'your changes'

# list branches
$ git branch

# switch branch
$ git checkout <branch-name>

# clone repository, folderpath didn't specified then git will create it for you in current directory
$ git clone <git@github.com:username/reponame-git> <folderpath>

# bare copy you will need to hard reset or update-ref
$ git clone --bare <git@github.com:username/reponame-git> <folderpath>

# update delete last commit
$ git update-ref HEAD HEAD^
$ git update-ref refs/heads/branch-name branch-name^
$ git update-ref refs/heads/branch-name a12d48e2

```

FETCH ALL BRANCHES
------------------
```bash

# track remote branches
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done

# fetching git data
git fetch --all

# pulling 
git pull --all

# reset head forced
git reset --hard HEAD

```

------------------------------------------

This is change made. May 2013. Sorabh
