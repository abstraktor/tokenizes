module ApplicationHelper
  def tokenize_tag(element, relation, pre=nil)
	relation = element.class.reflections[relation] if String===relation or Symbol===relation

	# let's use the current value as preset if no special preset is given
	pre = pre || element.send(relation.name)

	# make it tokeninput-parsable json
	pre = pre.split(",") if String===pre
	pre = (pre||[]).map(&:attributes).to_json

	# ok render the very text field
	raw text_field element.class.to_s.downcase, "#{relation.name.to_s.singularize}_tokens", 
	  "class"	=>	"token_field",
	  "data-pre"	=>	pre,
	  "data-json-path"=>	polymorphic_url(relation.klass, :format => :json),
	  "data-max"	=>	relation.collection? ? 0 : 1
  end
end
