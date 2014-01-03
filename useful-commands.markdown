#Useful Tips

###Initialize project

> $ git init

###Staging Files (Its kind of packaging for shipping or preparing before 
publicing)
ADD Manual.
> $ git add <file>
ADD All.
> $ git add .
Remove Manual.
> $ git rm <file>
Remove All.
> $ git rm .

###Commiting or publicing staging package
Commit and tell you to insert message.
> $ git commit
Commit with message (shortcut for above).
> $ git commit -m 'initial commit'
Add changes in files to commiting stage.
> $ git commit -a
Add changes to commiting stage and commit with message.
> $ git commit -am 'initial commit'

###Ignore files and folders.
1. create .gitignore file.  
2. add ignore path or files and folder line by line.  
3. like temp, *.swp, etc.  
4. if you want any file on ignore folder must commit then add path with 
!temp/log.txt.  

###Check difference in files
Compare between working directory to repo index(last commit or last 
staged).
> $ git diff <file>
Compare staging area and last commit(index).
> $ git diff --staged <file> /new
> $ git diff --cached <file> /older
compared in working directory and last commit in HEAD
> $ git diff HEAD <file>
Comparision of all files.
> $ git diff
Comparesion between hash
> $ git diff 54s45a2 <file>

###Check status
> $ git status

###View history of Repo.
> $ git log
> $ git log --stat
> $ git log --oneline
> $ git log --graph
> $ git log --oneline --graph
Format log :
%H = Commit Hash, %h = Abbreviated Commit Hash, %T = Tree Hash, %t = 
Abberviated Tree Hash, %P = Parent Hashes, %p = Abberviated Parent 
Hashes, %an = Author Name, %ae = Author E-mail, %ad = Author Date, 
%ar = Author Date, Relative, %cn = Commiter Name, %ce = Committer 
Email, %cd = Committer Date, %cr = Commit Date, Relative, %s = Subject 
(Commit Message). http://git-scm.com/docs/git-log  
> $ git log --pretty="%h, %cn, %cr"
Check history log for all branches
> $ git log --all
> $ git log --oneline --graph --all --decorate

###Branch
output existing branch
> $ git branch
create branch
> $ git branch <name>
switch to branch
> $ git checkout <name>
create branch shortcut, and switch to new created branch.
> $ git checkout -b <name>

###Merge and rebase Branch
Merge content of branch <name> into current selected branch.
> $ git merge <name>
Rebasing will linear your history or merge branch.
> $ git rebase <name> 

###ADD interactive
> $ git add -i

###Git stash list
add current working directry to stash list.
> $ git stash
view list of stash.
> $ git stash list
pull latest stash and apply to directory.
> $ git stash apply
pop stash off to list and apply to directory.
> $ git stash pop
drop stash
> $ git stash drop

###Merge conflict
When both branches have changed same file differently and he is unable 
to understand the changes of file to be merged that is an merge conflict 
in that file.  
1. use "git merge <branch>".  
2. open the conflicted file in text editor.
3. reformat your content and save.
4. you are done.

