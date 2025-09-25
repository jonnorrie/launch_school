(function() {
  var _ = function(collection) {
    u = {
      first: function() {
        return collection[0];
      },

      last: function() {
        return collection[collection.length - 1];
      },

      without: function(...values) {
        
        let output = []
        for (let i = 0; i < collection.length; i++){
          if (!values.includes(collection[i])){
            output.push(collection[i])
          }
        }
        return output
      },
      
      lastIndexOf: function(value){
        let output = 0

        for (let i = 0; i < collection.length; i ++){
          if (value === collection[i]) output = i
        }
        return output
      },

      sample: function(num){ // input is number of elements in an array to return
        let array = [], // earray to return
          copy = collection.slice(), // copy of input array

          get = function() { // function that returns a random element in input array
            let idx = Math.floor(Math.random() * copy.length),
              el = copy[idx];
            
              copy.splice(idx, 1);
              return el
          };

          if (!num) {return get(); } // if there is no input number, return a random element from input array

          while(num) { // else, append a random element to output array for number of times of input number
            array.push(get());
            num --
          }

          return array
      },

      findWhere: function(inputObject){
        let matchingObject;
        
        collection.some(function(collectionObject){
          // iterate through collection of objects with some method, which returns true or false if any objects match
          let all_match = true
          
          for (let prop in inputObject){
            // iterate through input objects properties
            if (!(prop in collectionObject) || collectionObject[prop] !== inputObject[prop]){
              // if input objects property does not match property in current collection object, reassign a match variable to be false
              all_match = false
            }
          }

          if (all_match){ 
            matchingObject = collectionObject
            return true
          }
        })   

        return matchingObject

      },

      where: function(inputObject){
        let matchingObjects = [];
        
        collection.forEach(function(collectionObject){
          // iterate through collection of objects with some method, which returns true or false if any objects match
          let all_match = true
          
          for (let prop in inputObject){
            // iterate through input objects properties
            if (!(prop in collectionObject) || collectionObject[prop] !== inputObject[prop]){
              // if input objects property and value does not match property and value of current collection object, reassign a match variable to be false
              all_match = false
            }
          }

          if (all_match){ 
            matchingObjects.push(collectionObject)
          }
        })   

        return matchingObjects
      },

      pluck: function(key){
       let output = []
        collection.forEach(function(object){
          if(object[key]){
            output.push(object[key])
          }
        })
        return output
      },

      keys: function(){
        let output = []

        for( key in collection){
          if(collection.hasOwnProperty(key)){
            output.push(key)
          }
        }

        return output
      },

      values: function(){
        let output = []

        for(key in collection){
          if(collection.hasOwnProperty(key)){
            output.push(collection[key])
          }
        }

        return output
      },

      pick: function(...propNames){
        let output = {}
        let inputObject = collection

        propNames.forEach(function(property) {
          output[property] = inputObject[property]
        });

        return output
      },

      omit: function(...propNames){
      let output = {}
      let inputObject = collection

      for (let prop in inputObject){
        if (!propNames.includes(prop)){
          output[prop] = inputObject[prop]
        }
      }
      // iterate through inputObject properties
        // if current property is not part of omit list, add to output

      return output
      },

      has: function(propName){
        return collection[propName] ? true : false
      },

      isElement: function(){

      },

      isArray: function(){
         return collection.__proto__.constructor === "Array"
      }
      


    };
    
    return u;
  };
  
  _.range = function(start, stop) {
    let output = [];
    
    if(stop === undefined){
      stop = start
      start = 0
    }
    
    for (let i = start; i < stop; i ++){
      output.push(i)
    }
    
    return output
  },

  _.extend = function (...args){

    args.reverse();

    for (let i = 0; i < args.length - 1; i ++){ // iterate through array of object argments except last
      let curr_obj = args[i]
      let next_obj = args[i + 1]
      console.log(curr_obj, next_obj)
        
      for (let prop in curr_obj){ // add all props from current obj to next obj
        next_obj[prop] = curr_obj[prop]
      }
    }

    return args[args.length - 1] // return last object, with all other objects added to it
  },

  _.isElement = function(){

  },

  _.isArray = function(object){
    return toString.call(object) === "[object Array]"
  }

  
  window._ = _;
}) ();