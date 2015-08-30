#!/usr/bin/env bash

###
## This script doesn't overwrite the existing JavaScript package. It creates a
## custom package called "JavaScript" and places empty snippet files in it.
## This has the effect of "turning off" the stock snippets.
### 

set -e
# set -x

if [[ $(uname) == "Darwin" ]]; then
  st_data_dir="$HOME/Library/Application Support/Sublime Text 3"
elif [[ $(uname) == "Linux" ]]; then
  st_data_dir="$HOME/.config/sublime-text-3"
else
  echo "Couldn't figure out Sublime Text 3's data directory"
  exit 1
fi

if [[ ! -d "$st_data_dir" ]]; then
  echo "Sublime Text 3's data directory is missing"
  exit 1
fi

st_js_dir="$st_data_dir/Packages/JavaScript"

js_sublime_snippets=(
  'Get-Elements.sublime-snippet'
  'Object-Method.sublime-snippet'
  'Object-Value-JS.sublime-snippet'
  'Object-key-key-value.sublime-snippet'
  'Prototype-(proto).sublime-snippet'
  'for-()-{}-(faster).sublime-snippet'
  'for-()-{}.sublime-snippet'
  'function-(fun).sublime-snippet'
  'function.sublime-snippet'
  'if-___-else.sublime-snippet'
  'if.sublime-snippet'
  'setTimeout-function.sublime-snippet'
)

echo "Placing \"sublime-snippet\" files in \"$st_js_dir\""

mkdir -p "$st_js_dir"
cd "$st_js_dir"
touch ${js_sublime_snippets[@]}
