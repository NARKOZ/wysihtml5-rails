# wysihtml5 for rails

A wysiwyg text editor for use in the Rails 3 asset pipeline.

## Installation

Add to your Gemfile:

```ruby
gem 'wysihtml5-rails'
```

and run:

```sh
bundle install
```

## Usage

Require it in your JS manifest's file:

```js
//= require wysihtml5
```

Additionally include `advanced` or `simple`
[parser rule](https://github.com/NARKOZ/wysihtml5-rails/tree/master/vendor/assets/javascripts/parser_rules):

```js
//= require parser_rules/simple
```

Add to your template before closing `body` html tag:

```html
<script>
  var editor = new wysihtml5.Editor("wysihtml5-textarea", { // id of textarea element
    toolbar:      "wysihtml5-toolbar", // id of toolbar element
    stylesheets:  "<%= stylesheet_path('wysiwyg') %>", // optional, css to style the editor's content
    parserRules:  wysihtml5ParserRules // defined in parser rules set
  });
</script>
```

## Usage example

Add to `application.js`

```js
//= require wysihtml5
//= require parser_rules/advanced
```

Create form with wysihtml5 textarea:

```erb
<div id="wysihtml5-toolbar" style="display: none;">
  <a data-wysihtml5-command="bold">bold</a>
  <a data-wysihtml5-command="italic">italic</a>
  <a data-wysihtml5-command="underline">underline</a>

  <a data-wysihtml5-command="insertOrderedList">insert ordered list</a>
  <a data-wysihtml5-command="insertUnorderedList">insert unordered list</a>

  <a data-wysihtml5-command="foreColor" data-wysihtml5-command-value="red">red</a>
  <a data-wysihtml5-command="foreColor" data-wysihtml5-command-value="green">green</a>
  <a data-wysihtml5-command="foreColor" data-wysihtml5-command-value="blue">blue</a>

  <a data-wysihtml5-command="createLink">insert link</a>
  <div data-wysihtml5-dialog="createLink" style="display: none;">
    <label>
      Link: <input data-wysihtml5-dialog-field="href" value="http://" class="text">
    </label>
    <a data-wysihtml5-dialog-action="save">OK</a>
    <a data-wysihtml5-dialog-action="cancel">Cancel</a>
  </div>
</div>

<%= form_for @post do |f| %>
  <p><%= f.text_area :content, :id => 'wysihtml5-textarea' %></p>
  <p><%= f.submit %></p>
<% end %>

<script>
  var editor = new wysihtml5.Editor("wysihtml5-textarea", {
    toolbar:      "wysihtml5-toolbar",
    stylesheets:  "<%= stylesheet_path('wysiwyg') %>",
    parserRules:  wysihtml5ParserRules
  });
</script>
```

For more information, check out [wysihtml5 wiki](https://github.com/xing/wysihtml5/wiki).

## License

wysihtml5 is distributed under the MIT License.  
wysihtml5-rails is licensed under BSD License.
