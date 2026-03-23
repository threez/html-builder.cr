require "html"
require "./builder/tags"

# TODO: Write documentation for `HTML::Builder`
module HTML::Builder
  VERSION = "0.1.2"
  @indent : Int32 = 0

  def doctype(doctype_attr = "html")
    @io << "<!DOCTYPE "
    @io << doctype_attr
    @io << ">\n"
  end

  def tag_attributes(**attributes)
    attributes.each do |key, value|
      if attr = HTML::Builder::Attributes[key]?
        if name = attr[:name]?
          key = name
        end
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
              @io << value2.to_s.inspect
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
              @io << value2.to_s.inspect
            end
          end
        end
      elsif value
        @io << " "
        @io << key.to_s
        @io << "="
        @io << value.to_s.inspect
      end
    end
  end

  def tag(_name : Symbol, **attributes, &block)
    @indent.times { @io << "  " }
    @io << '<'
    @io << _name
    tag_attributes(**attributes)
    @io << ">\n"
    @indent += 1
    yield
    @indent -= 1
    @indent.times { @io << "  " }
    @io << "</"
    @io << _name
    @io << ">\n"
  end

  def tag(_name : Symbol, **attributes)
    @indent.times { @io << "  " }
    @io << '<'
    @io << _name
    tag_attributes(**attributes)
    if HTML::Builder::EmptyTags.includes? _name
      @io << ">\n"
    else
      @io << "></"
      @io << _name
      @io << ">\n"
    end
  end

  def text(txt : String?)
    if txt
      @indent.times { @io << "  " }
      HTML.escape(txt, @io)
      @io << "\n"
    end
  end

  def raw(raw_data : String?)
    if raw_data
      @indent.times { @io << "  " }
      @io << raw_data
      @io << "\n"
    end
  end

  def raw(io : IO)
    @indent.times { @io << "  " }
    IO.copy(io, @io)
    @io << "\n"
  end

  {{ run("./builder/dsl") }}
end
