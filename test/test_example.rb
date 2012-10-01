$VERBOSE = true

require 'test/declare'
require_relative '../lib/module/interface'


base_mod = Module.new do

  def walk
  end
  
  def run
  end
  
end

klass = Class.new

The klass.dup do |kls|
  CATCH NotImplementedError do
    kls.module_eval do
      interface base_mod do
        def run
        end
      end
    end
  end
end

The klass.dup do |kls|
  The kls.new do
    ng {kls.kind_of? base_mod}
  end
  
  kls.module_eval do 

    interface base_mod, true do
      def walk
      end

      def run
      end
    end

  end
  
  The kls.new do
    kind_of base_mod
  end
  
  ok {(kls.instance_methods(false) - [:walk, :run]).empty?}
end
  
