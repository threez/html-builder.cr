require "html"
require "./builder/tags"

# DSL module for building HTML. Include in a class that has `@io : IO`.
module HTML::Builder
  VERSION      = "0.1.4"
  INDENT_CACHE = Array.new(33) { |i| "  " * i }
  @indent : Int32 = 0

  def doctype(doctype_attr = "html")
    @io << "<!DOCTYPE "
    @io << doctype_attr
    @io << ">\n"
  end

  def tag_attributes(**attributes)
    attributes.each do |key, value|
      if name = HTML::Builder::AttributeNames[key]?
        key = name
      end

      if value.is_a? Hash || value.is_a? NamedTuple
        case key
        when :style
          @io << " "
          @io << key.to_s
          @io << "=\""
          value.each do |key2, value2|
            @io << key2.to_s
            @io << ": "
            @io << value2.to_s
            @io << ";"
          end
          @io << "\""
        when :on
          value.each do |key2, value2|
            if value2
              @io << " on"
              @io << key2.to_s
              @io << "="
              value2.to_s.inspect(@io)
            end
          end
        else
          value.each do |key2, value2|
            if value2
              @io << " "
              @io << key.to_s
              @io << "-"
              @io << key2.to_s
              @io << "="
              value2.to_s.inspect(@io)
            end
          end
        end
      elsif value
        @io << " "
        @io << key.to_s
        @io << "="
        value.to_s.inspect(@io)
      end
    end
  end

  def tag(_name : Symbol, **attributes, &)
    @io << INDENT_CACHE[@indent]
    @io << '<'
    @io << _name
    tag_attributes(**attributes)
    @io << ">\n"
    @indent += 1
    yield
    @indent -= 1
    @io << INDENT_CACHE[@indent]
    @io << "</"
    @io << _name
    @io << ">\n"
  end

  def tag(_name : Symbol, **attributes)
    @io << INDENT_CACHE[@indent]
    @io << '<'
    @io << _name
    tag_attributes(**attributes)
    @io << "></"
    @io << _name
    @io << ">\n"
  end

  def tag_empty(_name : Symbol, **attributes)
    @io << INDENT_CACHE[@indent]
    @io << '<'
    @io << _name
    tag_attributes(**attributes)
    @io << ">\n"
  end

  def text(txt : String?)
    if txt
      @io << INDENT_CACHE[@indent]
      HTML.escape(txt, @io)
      @io << "\n"
    end
  end

  def raw(raw_data : String?)
    if raw_data
      @io << INDENT_CACHE[@indent]
      @io << raw_data
      @io << "\n"
    end
  end

  def raw(io : IO)
    @io << INDENT_CACHE[@indent]
    IO.copy(io, @io)
    @io << "\n"
  end

  {{ run("./builder/dsl") }}
end
