Rails API Doc Generator
=======================

RESTTful API documentation generator for Rails. It supports Rails 2.1 and greater. It generates a set of HTML views in the public directory. Parses the desired controllers and generates appropriate views.

Currently does not read routes.rb and requires manual entry of routes

Installation
============

Add it to your Gemfile

`gem 'rapi_doc', :git => 'git://github.com/joelcogen/rapi_doc.git'`

Usage
=====

Run `rake rapi_doc:setup` to generate config and layout files.

Modify config file (config/rapi_doc/config.yml) by adding your controllers, e.g.:

    books:
      controller_name: "books_controller.rb"

Then invoke the generation by calling:

`rake rapi_doc:generate`

Documentation Example
---------------------

Add this (commented) to your controllers to have the documentation generated

    # =begin apidoc
    # url:: /books
    # method:: GET
    # access:: FREE
    # return:: [JSON|XML] - list of book objects
    # param:: page:int - the page, default is 1
    # param:: per_page:int - max items per page, default is 10
    #
    # output:: json
    # [
    #   { "created_at":"2011-12-05T09:46:11Z",
    #     "description":"As with the last several books in the series, V Is for Vengeance was a long time in the making.",
    #     "id":1,
    #     "price":19,
    #     "title":"V is for Vengeance",
    #     "updated_at":"2011-12-05T09:46:11Z" },
    # ]
    # ::output-end::
    #
    # output:: xml
    # <books type="array">
    #   <book>
    #     <id type="integer">1</id>
    #     <title>V is for Vengeance</title>
    #     <description>As with the last several books in the series, V Is for Vengeance was a long time in the making.</description>
    #     <price type="integer">19</price>
    #     <created-at type="datetime">2011-12-05T09:46:11Z</created-at>
    #     <updated-at type="datetime">2011-12-05T09:46:11Z</updated-at>
    #   </book>
    # </books>
    #::output-end::
    #
    # Get a list of all books in the system with pagination.  Defaults to 10 per page
    # =end


Layout
------

You can edit some of the views located at `config/rapi_doc/`.

Credit
======

* Based on RAPI Doc by Jaap van der Meer found here: http://code.google.com/p/rapidoc/
* https://github.com/sabman/rapi_doc
* https://github.com/elc/rapi_doc
