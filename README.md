<img src='http://roundedoff.com/wp-content/uploads/2011/04/towelie.jpg' width='300'/>

# Towelie Framework

Towelie is a [CoffeeScript](http://coffeescript.org/) centric architecture for building large, performant, testable front end applications.

## Table of Contents

## Highlights
* Spies, Stubs and Mocks with shimmed [Sinon](http://sinonjs.org/)
* Rough in support for [Codo](https://github.com/netzpirat/codo) code documentation

## Install dependencies
```bash
$ npm install
```

## Module Example
Below is an example of a well formed AMD module.

```CoffeeScript
# A Contact Model
#
# @author Eric Clifford
#
define ["underscore", "backbone"], (_, Backbone)->
  Contact = Backbone.Model.extend(

    ###
    # Set the model defaults
    ###
    defaults:
      photo: "/images/placeholder.png"
      name: ""
      address: ""
      tel: ""
      email: ""
      type: ""

    ###
    # Verify the validity of model
    ###
    validate: (attrs) ->
      if attrs.photo is ""
        "photo cannot be empty"
  )
  Contact
```

## Authors
Eric Clifford

## License 
(The MIT License)

