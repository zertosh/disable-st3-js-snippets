# disable-st3-js-snippets

This script doesn't overwrite the existing JavaScript package. It creates a custom package called "JavaScript" and places empty snippet files in it. This has the effect of "turning off" the stock snippets.

## DIY

Go to [ST3's data directory](http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/basic_concepts.html#the-data-directory) and create a `JavaScript` directory. Then create empty files with the following names:

  * `Get-Elements.sublime-snippet`
  * `Object-Method.sublime-snippet`
  * `Object-Value-JS.sublime-snippet`
  * `Object-key-key-value.sublime-snippet`
  * `Prototype-(proto).sublime-snippet`
  * `for-()-{}-(faster).sublime-snippet`
  * `for-()-{}.sublime-snippet`
  * `function-(fun).sublime-snippet`
  * `function.sublime-snippet`
  * `if-___-else.sublime-snippet`
  * `if.sublime-snippet`
  * `setTimeout-function.sublime-snippet`

### directories

* Windows: `%APPDATA%\Sublime Text 3\JavaScript`
* OS X: `~/Library/Application Support/Sublime Text 3/JavaScript`
* Linux: `~/.config/sublime-text-3/JavaScript`
