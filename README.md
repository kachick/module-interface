Module::Interface
==================

Description
-----------

Block for to force define methods in module/class.

Usage
-----

### Overview

```ruby
require 'module/interface'

module Runnable

  def walk
  end

  def run
  end

end

class Person
  
  interface Runnable do
  
    def run
    end
  
  end #=> NotDefinedError "must add methods [walk]"

end
```

Requirements
------------

* Ruby 1.9.2 or later

  [MRI/YARV, Rubinius, JRuby](http://travis-ci.org/#!/kachick/module-interface)

Install
-------

```shell
$ gem install module-interface
```

Link
----

* [code](https://github.com/kachick/module-interface)
* [issues](https://github.com/kachick/module-interface/issues)
* [CI](http://travis-ci.org/#!/kachick/module-interface)
* [gem](https://rubygems.org/gems/module-interface)
* [gem+](http://metagem.info/gems/module-interface)

License
-------

The MIT X License

Copyright (c) 2012 Kenichi Kamiya

See the file LICENSE for further details.
