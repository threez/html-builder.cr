require "./attributes"

module HTML::Builder
  Tags = %i(
    a
    abbr
    address
    area
    article
    aside
    b
    bdi
    bdo
    blockquote
    body
    button
    caption
    cite
    code
    col
    colgroup
    data
    datalist
    del
    details
    dfn
    dialog
    div
    dd
    dl
    dt
    em
    embed
    fieldset
    figcaption
    figure
    footer
    form
    h1
    h2
    h3
    h4
    h5
    h6
    head
    header
    html
    hgroup
    i
    iframe
    ins
    kbd
    label
    legend
    li
    main
    map
    mark
    menuitem
    meter
    nav
    noscript
    object
    ol
    optgroup
    option
    output
    param
    picture
    pre
    progress
    q
    rp
    rt
    ruby
    s
    samp
    script
    section
    slot
    small
    span
    style
    strong
    sub
    summary
    sup
    table
    tbody
    td
    template
    textarea
    tfoot
    th
    thead
    time
    title
    tr
    track
    u
    ul
    video
    wbr
    para
    select_tag
  )

  TagAttributes = Hash(Symbol, Array(Symbol)).new

  Attributes.each do |attr, config|
    config[:tags].each do |tag|
      unless TagAttributes[tag]?
        TagAttributes[tag] = Array(Symbol).new
      end
      TagAttributes[tag] << attr
    end
  end

  RenamedTags = {
    para:       :p,
    select_tag: :select,
  }

  EmptyTags = %i(input img link br hr meta source)
end
