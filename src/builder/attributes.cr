# source https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes?retiredLocale=de
HTML::Builder::Attributes = {
  accept: {
    tags: %i(form input),
    desc: "List of types the server accepts, typically a file type.accept",
  },
  accept_charset: {
    name: "accept-charset",
    tags: %i(form),
    desc: "List of supported charsets.",
  },
  accesskey: {
    tags: %i(*),
    desc: "Keyboard shortcut to activate or add focus to the element.",
  },
  action: {
    tags: %i(form),
    desc: "The URI of a program that processes the information submitted via the form.",
  },
  align: {
    tags: %i(applet caption col colgroup hr iframe img table tbody td tfoot th thead tr),
    desc: "Specifies the horizontal alignment of the element.",
  },
  allow: {
    tags: %i(iframe),
    desc: "Specifies a feature-policy for the iframe.",
  },
  alt: {
    tags: %i(applet area img input),
    desc: "Alternative text in case an image can't be displayed.",
  },
  async: {
    tags: %i(script),
    desc: "Executes the script asynchronously.",
  },
  autocapitalize: {
    tags: %i(*),
    desc: "Sets whether input is automatically capitalized when entered by user",
  },
  autocomplete: {
    tags: %i(form input select textarea),
    desc: "Indicates whether controls in this form can by default have their values automatically completed by the browser.",
  },
  autofocus: {
    tags: %i(button input keygen select textarea),
    desc: "The element should be automatically focused after the page loaded.",
  },
  autoplay: {
    tags: %i(audio video),
    desc: "The audio or video should play as soon as possible.",
  },
  buffered: {
    tags: %i(audio video),
    desc: "Contains the time range of already buffered media.",
  },
  capture: {
    tags: %i(input),
    desc: "From the Media Capture specification, specifies a new file can be captured.",
  },
  challenge: {
    tags: %i(keygen),
    desc: "A challenge string that is submitted along with the public key.",
  },
  charset: {
    tags: %i(meta script),
    desc: "Declares the character encoding of the page or script.",
  },
  checked: {
    tags: %i(input),
    desc: "Indicates whether the element should be checked on page load.",
  },
  cite: {
    tags: %i(blockquote del ins q),
    desc: "Contains a URI which points to the source of the quote or change.",
  },
  class: {
    tags: %i(*),
    desc: "Often used with CSS to style elements with common properties.",
  },
  code: {
    tags: %i(applet),
    desc: "Specifies the URL of the applet's class file to be loaded and executed.",
  },
  codebase: {
    tags: %i(applet),
    desc: "This attribute gives the absolute or relative URL of the directory where applets' .class files referenced by the code attribute are stored.",
  },
  cols: {
    tags: %i(textarea),
    desc: "Defines the number of columns in a textarea.",
  },
  colspan: {
    tags: %i(td th),
    desc: "The colspan attribute defines the number of columns a cell should span.",
  },
  content: {
    tags: %i(meta),
    desc: "A value associated with http-equiv or name depending on the context.",
  },
  contenteditable: {
    tags: %i(*),
    desc: "Indicates whether the element's content is editable.",
  },
  contextmenu: {
    tags: %i(*),
    desc: "Defines the ID of a <menu> element which will serve as the element's context menu.",
  },
  controls: {
    tags: %i(audio video),
    desc: "Indicates whether the browser should show playback controls to the user.",
  },
  coords: {
    tags: %i(area),
    desc: "A set of values specifying the coordinates of the hot-spot region.",
  },
  crossorigin: {
    tags: %i(audio img link script video),
    desc: "How the element handles cross-origin requests",
  },
  csp: {
    tags: %i(iframe),
    desc: "Specifies the Content Security Policy that an embedded document must agree to enforce upon itself.",
  },
  data: {
    tags: %i(*),
    desc: "Specifies the URL of the resource.",
  },
  aria: {
    tags: %i(*),
    desc: "Accessible Rich Internet Applications (ARIA) is a set of roles and attributes that define ways to make web content and web applications (especially those developed with JavaScript) more accessible to people with disabilities..",
  },
  datetime: {
    tags: %i(del ins time),
    desc: "Indicates the date and time associated with the element.",
  },
  decoding: {
    tags: %i(img),
    desc: "Indicates the preferred method to decode the image.",
  },
  default: {
    tags: %i(track),
    desc: "Indicates that the track should be enabled unless the user's preferences indicate something different.",
  },
  defer: {
    tags: %i(script),
    desc: "Indicates that the script should be executed after the page has been parsed.",
  },
  dir: {
    tags: %i(*),
    desc: "Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl (Right-To-Left)",
  },
  dirname: {
    tags: %i(input textarea),
    desc: "",
  },
  disabled: {
    tags: %i(button fieldset input keygen optgroup option select textarea),
    desc: "Indicates whether the user can interact with the element.",
  },
  download: {
    tags: %i(a area),
    desc: "Indicates that the hyperlink is to be used for downloading a resource.",
  },
  draggable: {
    tags: %i(*),
    desc: "Defines whether the element can be dragged.",
  },
  enctype: {
    tags: %i(form),
    desc: "Defines the content type of the form data when the method is POST.",
  },
  enterkeyhint: {
    tags: %i(textarea contenteditable),
    desc: "The enterkeyhint specifies what action label (or icon) to present for the enter key on virtual keyboards. The attribute can be used with form controls (such as the value of textarea elements), or in elements in an editing host (e.g., using contenteditable attribute).",
  },
  for: {
    tags: %i(label output),
    desc: "Describes elements which belongs to this one.",
  },
  form: {
    tags: %i(button fieldset input keygen label meter object output progress select textarea),
    desc: "Indicates the form that is the owner of the element.",
  },
  formaction: {
    tags: %i(input button),
    desc: "Indicates the action of the element, overriding the action defined in the <form>.",
  },
  formenctype: {
    tags: %i(button input),
    desc: "If the button/input is a submit button (e.g. type='submit'), this attribute sets the encoding type to use during form submission. If this attribute is specified, it overrides the enctype attribute of the button's form owner.",
  },
  formmethod: {
    tags: %i(button input),
    desc: "If the button/input is a submit button (e.g. type='submit'), this attribute sets the submission method to use during form submission (GET, POST, etc.). If this attribute is specified, it overrides the method attribute of the button's form owner.",
  },
  formnovalidate: {
    tags: %i(button input),
    desc: "If the button/input is a submit button (e.g. type='submit'), this boolean attribute specifies that the form is not to be validated when it is submitted. If this attribute is specified, it overrides the novalidate attribute of the button's form owner.",
  },
  formtarget: {
    tags: %i(button input),
    desc: "If the button/input is a submit button (e.g. type='submit'), this attribute specifies the browsing context (for example, tab, window, or inline frame) in which to display the response that is received after submitting the form. If this attribute is specified, it overrides the target attribute of the button's form owner.",
  },
  headers: {
    tags: %i(td th),
    desc: "IDs of the <th> elements which applies to this element.",
  },
  height: {
    tags: %i(canvas embed iframe img input object video),
    desc: "Specifies the height of elements listed here.",
  },
  hidden: {
    tags: %i(*),
    desc: "Prevents rendering of given element, while keeping child elements, e.g. script elements, active.",
  },
  high: {
    tags: %i(meter),
    desc: "Indicates the lower bound of the upper range.",
  },
  href: {
    tags: %i(a area base link),
    desc: "The URL of a linked resource.",
  },
  hreflang: {
    tags: %i(a link),
    desc: "Specifies the language of the linked resource.",
  },
  http_equiv: {
    name: "http-equiv",
    tags: %i(meta),
    desc: "Defines a pragma directive.",
  },
  id: {
    tags: %i(*),
    desc: "Often used with CSS to style a specific element. The value of this attribute must be unique.",
  },
  integrity: {
    tags: %i(link script),
    desc: "Specifies a Subresource Integrity value that allows browsers to verify what they fetch.",
  },
  inputmode: {
    tags: %i(textarea contenteditable),
    desc: "Provides a hint as to the type of data that might be entered by the user while editing the element or its contents. The attribute can be used with form controls (such as the value of textarea elements), or in elements in an editing host (e.g., using contenteditable attribute).",
  },
  ismap: {
    tags: %i(img),
    desc: "Indicates that the image is part of a server-side image map.",
  },
  itemprop: {
    tags: %i(*),
    desc: "Used to add properties to an item. Every HTML element may have an itemprop attribute specified, where an itemprop consists of a name and value pair.",
  },
  keytype: {
    tags: %i(keygen),
    desc: "Specifies the type of key generated.",
  },
  kind: {
    tags: %i(track),
    desc: "Specifies the kind of text track.",
  },
  label: {
    tags: %i(optgroup option track),
    desc: "Specifies a user-readable title of the element.",
  },
  lang: {
    tags: %i(*),
    desc: "Defines the language used in the element.",
  },
  loading: {
    tags: %i(img iframe),
    desc: "Indicates if the element should be loaded lazily (loading='lazy') or loaded immediately (loading='eager').",
  },
  list: {
    tags: %i(input),
    desc: "Identifies a list of pre-defined options to suggest to the user.",
  },
  loop: {
    tags: %i(audio bgsound marquee video),
    desc: "Indicates whether the media should start playing from the start when it's finished.",
  },
  low: {
    tags: %i(meter),
    desc: "Indicates the upper bound of the lower range.",
  },
  max: {
    tags: %i(input meter progress),
    desc: "Indicates the maximum value allowed.",
  },
  maxlength: {
    tags: %i(input textarea),
    desc: "Defines the maximum number of characters allowed in the element.",
  },
  minlength: {
    tags: %i(input textarea),
    desc: "Defines the minimum number of characters allowed in the element.",
  },
  media: {
    tags: %i(a area link source style),
    desc: "Specifies a hint of the media for which the linked resource was designed.",
  },
  method: {
    tags: %i(form),
    desc: "Defines which HTTP method to use when submitting the form. Can be GET (default) or POST.",
  },
  min: {
    tags: %i(input meter),
    desc: "Indicates the minimum value allowed.",
  },
  multiple: {
    tags: %i(input select),
    desc: "Indicates whether multiple values can be entered in an input of the type email or file.",
  },
  muted: {
    tags: %i(audio video),
    desc: "Indicates whether the audio will be initially silenced on page load.",
  },
  name: {
    tags: %i(button form fieldset iframe input keygen object output select textarea map meta param),
    desc: "Name of the element. For example used by the server to identify the fields in form submits.",
  },
  novalidate: {
    tags: %i(form),
    desc: "This attribute indicates that the form shouldn't be validated when submitted.",
  },
  open: {
    tags: %i(details dialog),
    desc: "Indicates whether the contents are currently visible (in the case of a <details> element) or whether the dialog is active and can be interacted with (in the case of a <dialog> element).",
  },
  optimum: {
    tags: %i(meter),
    desc: "Indicates the optimal numeric value.",
  },
  pattern: {
    tags: %i(input),
    desc: "Defines a regular expression which the element's value will be validated against.",
  },
  ping: {
    tags: %i(a area),
    desc: "The ping attribute specifies a space-separated list of URLs to be notified if a user follows the hyperlink.",
  },
  placeholder: {
    tags: %i(input textarea),
    desc: "Provides a hint to the user of what can be entered in the field.",
  },
  playsinline: {
    tags: %i(video),
    desc: "A Boolean attribute indicating that the video is to be played 'inline'; that is, within the element's playback area. Note that the absence of this attribute does not imply that the video will always be played in fullscreen.",
  },
  poster: {
    tags: %i(video),
    desc: "A URL indicating a poster frame to show until the user plays or seeks.",
  },
  preload: {
    tags: %i(audio video),
    desc: "Indicates whether the whole resource, parts of it or nothing should be preloaded.",
  },
  readonly: {
    tags: %i(input textarea),
    desc: "Indicates whether the element can be edited.",
  },
  referrerpolicy: {
    tags: %i(a area iframe img link script),
    desc: "Specifies which referrer is sent when fetching the resource.",
  },
  rel: {
    tags: %i(a area link),
    desc: "Specifies the relationship of the target object to the link object.",
  },
  required: {
    tags: %i(input select textarea),
    desc: "Indicates whether this element is required to fill out or not.",
  },
  reversed: {
    tags: %i(ol),
    desc: "Indicates whether the list should be displayed in a descending order instead of an ascending order.",
  },
  role: {
    tags: %i(*),
    desc: "Defines an explicit role for an element for use by assistive technologies.",
  },
  rows: {
    tags: %i(textarea),
    desc: "Defines the number of rows in a text area.",
  },
  rowspan: {
    tags: %i(td th),
    desc: "Defines the number of rows a table cell should span over.",
  },
  sandbox: {
    tags: %i(iframe),
    desc: "Stops a document loaded in an iframe from using certain features (such as submitting forms or opening new windows).",
  },
  scope: {
    tags: %i(th),
    desc: "Defines the cells that the header test (defined in the th element) relates to.",
  },
  selected: {
    tags: %i(option),
    desc: "Defines a value which will be selected on page load.",
  },
  shape: {
    tags: %i(a area),
    desc: "",
  },
  size: {
    tags: %i(input select),
    desc: "Defines the width of the element (in pixels). If the element's type attribute is text or password then it's the number of characters.",
  },
  sizes: {
    tags: %i(link img source),
    desc: "",
  },
  slot: {
    tags: %i(*),
    desc: "Assigns a slot in a shadow DOM shadow tree to an element.",
  },
  span: {
    tags: %i(col colgroup),
    desc: "",
  },
  spellcheck: {
    tags: %i(*),
    desc: "Indicates whether spell checking is allowed for the element.",
  },
  src: {
    tags: %i(audio embed iframe img input script source track video),
    desc: "The URL of the embeddable content.",
  },
  srcdoc: {
    tags: %i(iframe),
    desc: "",
  },
  srclang: {
    tags: %i(track),
    desc: "",
  },
  srcset: {
    tags: %i(img source),
    desc: "One or more responsive image candidates.",
  },
  start: {
    tags: %i(ol),
    desc: "Defines the first number if other than 1.",
  },
  step: {
    tags: %i(input),
    desc: "",
  },
  style: {
    tags: %i(*),
    desc: "Defines CSS styles which will override styles previously set.",
  },
  tabindex: {
    tags: %i(*),
    desc: "Overrides the browser's default tab order and follows the one specified instead.",
  },
  target: {
    tags: %i(a area base form),
    desc: "Specifies where to open the linked document (in the case of an <a> element) or where to display the response received (in the case of a <form> element)",
  },
  title: {
    tags: %i(*),
    desc: "Text to be displayed in a tooltip when hovering over the element.",
  },
  translate: {
    tags: %i(*),
    desc: "Specify whether an element's attribute values and the values of its Text node children are to be translated when the page is localized, or whether to leave them unchanged.",
  },
  type: {
    tags: %i(button input embed object ol script source style menu link),
    desc: "Defines the type of the element.",
  },
  usemap: {
    tags: %i(img input object),
    desc: "",
  },
  value: {
    tags: %i(button data input li meter option progress param),
    desc: "Defines a default value which will be displayed in the element on page load.",
  },
  width: {
    tags: %i(canvas embed iframe img input object video),
    desc: "For the elements listed here, this establishes the element's width.",
  },
  wrap: {
    tags: %i(textarea),
    desc: "Indicates whether the text should be wrapped.",
  },
  on: {
    tags:     %i(*),
    desc:     "javascript event handlers.",
    handlers: {
      abort: {
        tags: %i(*),
        desc: "The loading of a media is aborted",
      },
      afterprint: {
        tags: %i(*),
        desc: "A page has started printing",
      },
      animationend: {
        tags: %i(*),
        desc: "A CSS animation has completed",
      },
      animationiteration: {
        tags: %i(*),
        desc: "A CSS animation is repeated",
      },
      animationstart: {
        tags: %i(*),
        desc: "A CSS animation has started",
      },
      beforeprint: {
        tags: %i(*),
        desc: "A page is about to be printed",
      },
      beforeunload: {
        tags: %i(*),
        desc: "Before a document is about to be unloaded",
      },
      blur: {
        tags: %i(*),
        desc: "An element loses focus",
      },
      canplay: {
        tags: %i(*),
        desc: "The browser can start playing a media (has buffered enough to begin)",
      },
      canplaythrough: {
        tags: %i(*),
        desc: "The browser can play through a media without stopping for buffering",
      },
      change: {
        tags: %i(*),
        desc: "The content of a form element has changed",
      },
      click: {
        tags: %i(*),
        desc: "An element is clicked on",
      },
      contextmenu: {
        tags: %i(*),
        desc: "An element is right-clicked to open a context menu",
      },
      copy: {
        tags: %i(*),
        desc: "The content of an element is copied",
      },
      cut: {
        tags: %i(*),
        desc: "The content of an element is cutted",
      },
      dblclick: {
        tags: %i(*),
        desc: "An element is double-clicked",
      },
      drag: {
        tags: %i(*),
        desc: "An element is being dragged",
      },
      dragend: {
        tags: %i(*),
        desc: "Dragging of an element has ended",
      },
      dragenter: {
        tags: %i(*),
        desc: "A dragged element enters the drop target",
      },
      dragleave: {
        tags: %i(*),
        desc: "A dragged element leaves the drop target",
      },
      dragover: {
        tags: %i(*),
        desc: "A dragged element is over the drop target",
      },
      dragstart: {
        tags: %i(*),
        desc: "Dragging of an element has started",
      },
      drop: {
        tags: %i(*),
        desc: "A dragged element is dropped on the target",
      },
      durationchange: {
        tags: %i(*),
        desc: "The duration of a media is changed",
      },
      ended: {
        tags: %i(*),
        desc: "A media has reach the end ('thanks for listening')",
      },
      error: {
        tags: %i(*),
        desc: "An error has occurred while loading a file",
      },
      focus: {
        tags: %i(*),
        desc: "An element gets focus",
      },
      focusin: {
        tags: %i(*),
        desc: "An element is about to get focus",
      },
      focusout: {
        tags: %i(*),
        desc: "An element is about to lose focus",
      },
      fullscreenchange: {
        tags: %i(*),
        desc: "An element is displayed in fullscreen mode",
      },
      fullscreenerror: {
        tags: %i(*),
        desc: "An element can not be displayed in fullscreen mode",
      },
      hashchange: {
        tags: %i(*),
        desc: "There has been changes to the anchor part of a URL",
      },
      input: {
        tags: %i(*),
        desc: "An element gets user input",
      },
      invalid: {
        tags: %i(*),
        desc: "An element is invalid",
      },
      keydown: {
        tags: %i(*),
        desc: "A key is down",
      },
      keypress: {
        tags: %i(*),
        desc: "A key is pressed",
      },
      keyup: {
        tags: %i(*),
        desc: "A key is released",
      },
      load: {
        tags: %i(*),
        desc: "An object has loaded",
      },
      loadeddata: {
        tags: %i(*),
        desc: "Media data is loaded",
      },
      loadedmetadata: {
        tags: %i(*),
        desc: "Meta data (like dimensions and duration) are loaded",
      },
      loadstart: {
        tags: %i(*),
        desc: "The browser starts looking for the specified media",
      },
      message: {
        tags: %i(*),
        desc: "A message is received through the event source",
      },
      mousedown: {
        tags: %i(*),
        desc: "The mouse button is pressed over an element",
      },
      mouseenter: {
        tags: %i(*),
        desc: "The pointer is moved onto an element",
      },
      mouseleave: {
        tags: %i(*),
        desc: "The pointer is moved out of an element",
      },
      mousemove: {
        tags: %i(*),
        desc: "The pointer is moved over an element",
      },
      mouseover: {
        tags: %i(*),
        desc: "The pointer is moved onto an element",
      },
      mouseout: {
        tags: %i(*),
        desc: "The pointer is moved out of an element",
      },
      mouseup: {
        tags: %i(*),
        desc: "A user releases a mouse button over an element",
      },
      mousewheel: {
        tags: %i(*),
        desc: "Deprecated. Use the wheel event instead",
      },
      offline: {
        tags: %i(*),
        desc: "The browser starts working offline",
      },
      online: {
        tags: %i(*),
        desc: "The browser starts working online",
      },
      open: {
        tags: %i(*),
        desc: "A connection with the event source is opened",
      },
      pagehide: {
        tags: %i(*),
        desc: "User navigates away from a webpage",
      },
      pageshow: {
        tags: %i(*),
        desc: "User navigates to a webpage",
      },
      paste: {
        tags: %i(*),
        desc: "Some content is pasted in an element",
      },
      pause: {
        tags: %i(*),
        desc: "A media is paused",
      },
      play: {
        tags: %i(*),
        desc: "The media has started or is no longer paused",
      },
      playing: {
        tags: %i(*),
        desc: "The media is playing after beeing paused or buffered",
      },
      popstate: {
        tags: %i(*),
        desc: "The window's history changes",
      },
      progress: {
        tags: %i(*),
        desc: "The browser is downloading media data",
      },
      ratechange: {
        tags: %i(*),
        desc: "The playing speed of a media is changed",
      },
      resize: {
        tags: %i(*),
        desc: "The document view is resized",
      },
      reset: {
        tags: %i(*),
        desc: "A form is reset",
      },
      scroll: {
        tags: %i(*),
        desc: "An scrollbar is being scrolled",
      },
      search: {
        tags: %i(*),
        desc: "Something is written in a search field",
      },
      seeked: {
        tags: %i(*),
        desc: "Skipping to a media position is finished",
      },
      seeking: {
        tags: %i(*),
        desc: "Skipping to a media position is started",
      },
      select: {
        tags: %i(*),
        desc: "User selects some text",
      },
      show: {
        tags: %i(*),
        desc: "A <menu> element is shown as a context menu",
      },
      stalled: {
        tags: %i(*),
        desc: "The browser is trying to get unavailable media data",
      },
      storage: {
        tags: %i(*),
        desc: "A Web Storage area is updated",
      },
      submit: {
        tags: %i(*),
        desc: "A form is submitted",
      },
      suspend: {
        tags: %i(*),
        desc: "The browser is intentionally not getting media data",
      },
      timeupdate: {
        tags: %i(*),
        desc: "The playing position has changed (the user moves to a different point in the media)",
      },
      toggle: {
        tags: %i(*),
        desc: "The user opens or closes the <details> element",
      },
      touchcancel: {
        tags: %i(*),
        desc: "The touch is interrupted",
      },
      touchend: {
        tags: %i(*),
        desc: "A finger is removed from a touch screen",
      },
      touchmove: {
        tags: %i(*),
        desc: "A finger is dragged across the screen",
      },
      touchstart: {
        tags: %i(*),
        desc: "A finger is placed on a touch screen",
      },
      transitionend: {
        tags: %i(*),
        desc: "A CSS transition has completed",
      },
      unload: {
        tags: %i(*),
        desc: "A page has unloaded",
      },
      volumechange: {
        tags: %i(*),
        desc: "The volume of a media is changed (includes muting)",
      },
      waiting: {
        tags: %i(*),
        desc: "A media is paused but is expected to resume (e.g. buffering)",
      },
      wheel: {
        tags: %i(*),
        desc: "The mouse wheel rolls up or down over an element",
      },
    },
  },
}
