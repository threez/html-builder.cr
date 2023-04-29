# html-builder

Build HTML using a crystal DSL. The dsl strictly checks the attributes
using the compiler at build time.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     html-builder:
       github: threez/html-builder.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "html-builder"

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
      end
    end
  end
end

# Then simply render the page
puts Page.new(STDOUT).render
```

## Special attributes

There are a few special attributes:

* `:on` hash of event handlers
* `:style` hash or string of style configuration
* `:data` hash of data values
* `:aria` hash of aria attributes

## Special tags

* `para` instead of `p`
* `select_tag` instead of `select`

## Related projects

* [Lucky Framework](https://luckyframework.org/guides/frontend/rendering-html)
* [Water](https://github.com/shootingfly/water)

## HTML to code

The [converter](https://luckyframework.org/html) of the lucky project can
be used to handle most of the conversion.

## Contributing

1. Fork it (<https://github.com/threez/html-builder.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Vincent Landgraf](https://github.com/threez) - creator and maintainer
