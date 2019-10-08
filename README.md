RG-thesis-template
=====
RGの卒論TeXテンプレート
## Files
```
```

## 以下以前のREADME
# Requirement

* LaTeX2e with Japanese for your environment
    * Linux - Install from usual software source of your distribution or install [Tex Live](http://www.tug.org/texlive/)
    * Mac OS X - Install [Mac Tex](https://tug.org/mactex/)
    * Windows - Install via [Texインストーラ3](http://www.math.sci.hokudai.ac.jp/~abenori/soft/abtexinst.html)

* GNUMake

# Usage

## 1. Fork this repository

Fork this repository to your account.
When you push your changes to the forked repository, this repository provides URL to download your thesis PDF file.

## 2. Change Makefile and fit it to your environement

Change command paths in Makefile to match your environment.
If you are using Mac Tex, only thing you should do is that append TexLive "bin" directory to your "PATH" environement variable like below.

```bash
export PATH = $PATH:/usr/local/texlive/20xx/bin/x86_64-darwin
```

Additionary, if you are using Mac Tex, you should add a configuration below into your latex configuration file (like "/usr/local/texlive/texmf-local/web2c/texmf.cnf", this file may not exists at first) in order to create bounding box information file for images automatically.

```tex
shell_escape_commands = \
bibtex,bibtex8,bibtexu,pbibtex,upbibtex,biber,\
kpsewhich,\
makeindex,mendex,texindy,\
mpost,pmpost,upmpost,\
repstopdf,epspdf,extractbb
```

## 3. Write your thesis

* Latex files to edit is exists under the "src" directory.
* Use files under the "bib" directory to list citations.

## 4. Run "make" and create PDF

When you run GNU Make on the root directory of this repository, the command will produce the PDF file like "thesis.pdf".

```bash
$ make
```

## 5. Publish and share your thesis

Now, you can publish your thesis on the internet and share it to requiest reviews.
To do this, just commit all changes on your directory and push it to your forked directory.

```bash
$ git add -u
$ git commit -m "Your commit message here."
$ git push origin gh-pages:gh-pages
```

Anyone can download and review your newest thesis on http://your_github_username.github.io/thesis/thesis.pdf now!
