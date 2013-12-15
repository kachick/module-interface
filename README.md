module-interface
=================

[![Build Status](https://secure.travis-ci.org/kachick/module-interface.png)](http://travis-ci.org/kachick/module-interface)
[![Gem Version](https://badge.fury.io/rb/module-interface.png)](http://badge.fury.io/rb/module-interface)

Force to define methods in module/class

Usage
-----

### Overview

```ruby
require 'module/interface'

module Runnable
  def walk; end
  def run; end
end

class Person
  include Runnable
  extend Module::Interface
  interface Runnable do
    def run; end
  end #=> NotImplementedError "shortage methods: [:walk]"
end
```

### Anywhere

```ruby
require 'module/interface/core_ext'
```

Requirements
------------

* [Ruby 1.9.3 or later](http://travis-ci.org/#!/kachick/module-interface)

Install
-------

```bash
$ gem install module-interface
```

Link
----

* [Home](http://kachick.github.com/module-interface)
* [code](https://github.com/kachick/module-interface)
* [API](http://kachick.github.com/module-interface/yard/frames.html)
* [issues](https://github.com/kachick/module-interface/issues)
* [CI](http://travis-ci.org/#!/kachick/module-interface)
* [gem](https://rubygems.org/gems/module-interface)

License
-------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
