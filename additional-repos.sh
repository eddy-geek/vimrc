#!/bin/bash

#The list of repos added as subomdules, kept here for reference and batch processing.


declare -a repos=( 
  "http://github.com/ciaranm/detectindent.git"
  "http://github.com/vim-scripts/scons.vim.git"
  "http://github.com/scrooloose/syntastic.git"

  "http://github.com/megaannum/self.git" 
  "http://github.com/megaannum/forms.git" 
  "http://github.com/Shougo/vimproc.git"
  "http://github.com/Shougo/vimshell.git"
  "-b scala-2.10 http://github.com/aemoncannon/ensime.git"
  "http://github.com/megaannum/vimside.git"
)

cd ~/.vim_runtime

setup() {
    for repo in "${repos[@]}"; do
        git submodule add $repo sources_non_forked/$(basename "${repo#*/}" .git)
    done;
}

#setup

