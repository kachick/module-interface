module-interface
=================

Description
-----------

BlockScope for to force define methods in module/class.

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

  interface Runnable do
    def run; end
  end #=> NotDefinedError "must add methods [walk]"

end
```

Requirements
------------

* Ruby - [1.9.2 or later](http://travis-ci.org/#!/kachick/module-interface)

Install
-------

```bash
$ gem install module-interface
```

Build Status
------------

[![Build Status](https://secure.travis-ci.org/kachick/module-interface.png)](http://travis-ci.org/kachick/module-interface)


Link
----

* [code](https://github.com/kachick/module-interface)
* [API](http://kachick.github.com/module-interface/yard/frames.html)
* [issues](https://github.com/kachick/module-interface/issues)
* [CI](http://travis-ci.org/#!/kachick/module-interface)
* [gem](https://rubygems.org/gems/module-interface)

License
-------

The MIT X License  
Copyright (c) 2012 Kenichi Kamiya  
See the file MIT-LICENSE for further details.
