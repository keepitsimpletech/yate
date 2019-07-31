# svn-git

The official Yate repo uses Subversion (svn). Below are the inital setup instructions used to import the Yate `trunk` into the git `master` branch, using the "upstream" prefix for the svn remote repo. See the links below for more information.

**Read the documentation in the Links before pulling or merging from the svn upstream repo!**

## Initial Setup

```sh
# Initial setup
mkdir yate-git
cd yate-git

# Clone a repo with SVN trunk directory (like git clone):
git svn clone --prefix upstream/ -T trunk http://voip.null.ro/svn/yate

# Setup your git repository to ignore the same files that are ignored in the tracked Subversion repository
git svn show-ignore >> .git/info/exclude
```

## Links

- https://git-scm.com/docs/git-svn
- https://trac.webkit.org/wiki/UsingGitWithWebKit
- https://trac.webkit.org/browser/webkit/trunk/Tools/Scripts/webkitpy/tool/commands/setupgitclone.py
