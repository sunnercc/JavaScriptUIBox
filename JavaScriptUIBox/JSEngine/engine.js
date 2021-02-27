var global = this;
(function() {
    
    global.$log = function(message) {
        oc_log(message);
    }

    global.$rect = function(x, y, w, h) {
        return oc_type_convert([x, y, w, h], "rect");
    }
    
    global.$color = function(r, g, b, a) {
        return oc_color([r, g, b, a]);
    }

    global.$ui = {
        render: function(data) {
            oc_ui("render", data);
        }
    }


})();
