$VERBOSE = true

require_relative '../lib/module/interface'
require 'declare'

Declare do

  base_mod = Module.new do
    
    def walk
    end
    
    def run
    end
    
  end
  
  klass = Class.new
  
  The klass.dup do |kls|
    CATCH Module::Interface::NotDefinedError do
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
      NOT KIND?(base_mod)
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
      KIND base_mod
    end
    
    The kls.instance_methods(false) do
      is [:walk, :run]
    end
  end
  
end
