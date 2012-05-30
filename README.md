# wysihtml5 for rails

A wysiwyg text editor for use in the Rails 3 asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'wysihtml5-rails', github: 'NARKOZ/wysihtml5-rails'

And then execute:

    $ bundle

## Usage

Require it in your JS manifest's file:

    //= require advanced
    //= require wysihtml5

Add to your template before closing `body` html tag:

    <script>
      var editor = new wysihtml5.Editor("wysihtml5-textarea", { // id of textarea element
        toolbar:      "wysihtml5-toolbar", // id of toolbar element
        stylesheets:  "<%= stylesheet_path('wysihtml5') %>", // optional, css to style the editor's content
        parserRules:  wysihtml5ParserRules
      });
    </script>

## License

wysihtml5 is distributed under the MIT License.  
wysihtml5-rails is licensed under new BSD License.
