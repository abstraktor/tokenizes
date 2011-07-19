module Tokenizes
 module Rails
   module ActiveRecord
     module Base
     ::ActiveRecord::Base.extend Base
	  def tokenizes(rel)
	   create_tokens_accessors(rel)
	  end

	  def create_tokens_accessors(key)
	   collection = reflections[key.to_sym].collection?

	   reflections[key.to_sym].klass.class_eval {
	     define_method(:name) do
		     return attributes["title"] || attributes["id"]
	     end unless method_defined? :name
	   }

	   key = key.to_s.singularize.to_sym

	   define_method (:"#{key}_tokens") do
	    if collection
	     self.send("#{key}_ids").join(",")
	    else
	     self.send("#{key}_id")
	    end
	   end if not method_defined? :"#{key}_tokens"

	   define_method (:"#{key}_tokens=") do |new_value|
	    if collection
	     self.send("#{key}_ids=", new_value.split(","))
	    else
	     self.send("#{key}_id=", new_value.to_i)
	     save
	    end
	   end if not method_defined? :"#{key}_tokens"

	  end
    end
  end
 end
end
