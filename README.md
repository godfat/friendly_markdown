# friendly_markdown [![Build Status](https://secure.travis-ci.org/godfat/friendly_markdown.png?branch=master)](http://travis-ci.org/godfat/friendly_markdown) [![Coverage Status](https://coveralls.io/repos/godfat/friendly_markdown/badge.png)](https://coveralls.io/r/godfat/friendly_markdown) [![Join the chat at https://gitter.im/godfat/friendly_markdown](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/godfat/friendly_markdown)

by Lin Jen-Shin ([godfat](http://godfat.org))

## LINKS:

* [github](https://github.com/godfat/friendly_markdown)
* [rubygems](https://rubygems.org/gems/friendly_markdown)
* [rdoc](http://rdoc.info/github/godfat/friendly_markdown)

## DESCRIPTION:

Simple markdown for user input, with auto-link, auto-linebreak,
and sanitization.

## FEATURES:

* Auto-links
* Auto-linebreak
* Sanitization

## WHY?

Original markdown doesn't work well for user input, it's unsafe and
inconvenient for quick comments.

## REQUIREMENTS:

* kramdown
* sanitize
* Tested with MRI (official CRuby), Rubinius and JRuby.

## INSTALLATION:

    gem install friendly_markdown

## SYNOPSIS:

``` ruby
reqiore 'friendly_markdown'
FriendlyMarkdown.compile('user input')
```

## CONTRIBUTORS:

* Lin Jen-Shin (@godfat)

## LICENSE:

Apache License 2.0

Copyright (c) 2015, Lin Jen-Shin (godfat)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
