# tokenizes

This rails-gem helps to use jquery.tokeninput with active-record.

## Usage

### Installation
1. require 'tokenizes' in your gemfile
2. run 'rails g tokenizes:install' to install the tokenizes javascripts and stylesheets

### the Model
Go to the model that tokenizes a relation and call 'tokenizes relation' where relation is the name of the relation you want to tokenize

### the Controller
Add REST to the controller for the target of this relation. there are few requirements about the output format and the query string. See jquery.tokeninput for details. you might want something like this:

	def index
	  @books = Book.where("title like ?", "%#{params[:q]}%")  
	  respond_to do |format|  
	    format.html  
	    format.json { render :json => @books.map(&:attributes) }
	  end
	end

### the View
In your views you can call tokenize_tag(element, relation, pre=nil) of the ApplicationHelper. It will generate the tokeninput field with ujs all this work is for :)

## Troubleshooting

As tokenizes optimizes the work with active record, you won't be able to use another ORM.

There are problems with conflicting jquery versions...any ideas?

Copyright (c) 2011 Bastian Kruck, released under the MIT license