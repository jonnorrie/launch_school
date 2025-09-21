(function() {
  var _ = function(element) {
    u = {
      first: function() {
        return element[0];
      },

      last: function() {
        return element[element.length - 1];
      },

      without: function(...values) {
        
        let output = []
        for (let i = 0; i < element.length; i++){
          if (!values.includes(element[i])){
            output.push(element[i])
          }
        }

        return output
         
      },

      
    };


    return u;
  };

  window._ = _;
}) ();