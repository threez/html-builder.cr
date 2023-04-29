require "./tags"

# :nodoc:
def tag_attrs(tag : Symbol) : Array(Symbol)
  (HTML::Builder::TagAttributes[tag]? || Array(Symbol).new) +
    (HTML::Builder::TagAttributes[:*]? || Array(Symbol).new).uniq
end

# :nodoc:
def attrs_for_tag(tag : Symbol)
  String
  tag_attrs(tag).map do |key|
    str = "#{key}"
    if key == :class
      str += " _class"
    end
    case key
    when :data, :aria, :on
      str += " : Hash(String | Symbol, String | Symbol)? | NamedTuple = nil"
    when :style
      str += " : String | Hash(String | Symbol, String | Symbol)? | NamedTuple = nil"
    else
      str += " : (String | Symbol)? = nil"
    end
    str
  end.join(", ")
end

# :nodoc:
def attrs_to_args(tag : Symbol)
  String
  tag_attrs(tag).map do |key|
    str = "#{key}: "
    if key == :class
      str += "_class"
    else
      str += "#{key}"
    end
    str
  end.join(", ")
end

HTML::Builder::Tags.each do |tag|
  puts "def #{tag}(#{attrs_for_tag(tag)}, &block)"
  puts "  tag(:#{HTML::Builder::RenamedTags[tag]? || tag}, #{attrs_to_args(tag)}, &block)"
  puts "end"
  puts
  puts "def #{tag}(#{attrs_for_tag(tag)})"
  puts "  tag(:#{HTML::Builder::RenamedTags[tag]? || tag}, #{attrs_to_args(tag)})"
  puts "end"
  puts
end

HTML::Builder::EmptyTags.each do |tag|
  puts "def #{tag}(*, #{attrs_for_tag(tag)})"

  puts "  tag(:#{HTML::Builder::RenamedTags[tag]? || tag}, #{attrs_to_args(tag)})"
  puts "end"
  puts
end
