require "./spec_helper"

class Page
  include HTML::Builder

  def initialize(@io : IO)
  end

  def render
    doctype
    html lang: :en do
      head do
        meta name: :robots, content: :nofollow
        title do
          style { raw "h1 > span { font-size: 10px; }" }
        end
      end
      body do
        h1 style: {"font-family": "Helvetica"}, id: :title do
          text "Hello > World"
        end
        para aria: {label: "Example"} do
          a data: {sample: "foobar"}, on: {click: "event.preventDefault()"} { text "Click me!" }
        end
        select_tag name: "foo" do
          option value: "bar" { text "blub" }
        end
      end
    end
  end
end

describe HTML::Builder do
  it "works" do
    io = IO::Memory.new
    Page.new(io).render
    io.to_s.should eq("<!DOCTYPE html>\n" +
                      "<html lang=\"en\">\n" +
                      "  <head>\n" +
                      "    <meta content=\"nofollow\" name=\"robots\">\n" +
                      "    <title>\n" +
                      "      <style>\n" +
                      "        h1 > span { font-size: 10px; }\n" +
                      "      </style>\n" +
                      "    </title>\n" +
                      "  </head>\n" +
                      "  <body>\n" +
                      "    <h1 id=\"title\" style=\"font-family: Helvetica;\">\n" +
                      "      Hello &gt; World\n" +
                      "    </h1>\n" +
                      "    <p aria-label=\"Example\">\n" +
                      "      <a data-sample=\"foobar\" onclick=\"event.preventDefault()\">\n" +
                      "        Click me!\n" +
                      "      </a>\n" +
                      "    </p>\n" +
                      "    <select name=\"foo\">\n" +
                      "      <option value=\"bar\">\n" +
                      "        blub\n" +
                      "      </option>\n" +
                      "    </select>\n" +
                      "  </body>\n" +
                      "</html>\n")
  end
end
