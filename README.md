module-interface
=================

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org/ for releasing valuable namespace for others***

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

* Ruby 2.5 or later

License
-------

The MIT X11 License  
Copyright (c) 2012 Kenichi Kamiya  
See MIT-LICENSE for further details.
