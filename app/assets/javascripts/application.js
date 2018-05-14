// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require semantic-ui
//= require turbolinks
//= require_tree .
var ready = function () {
    $(document).ready(function() {
        $('.ui.form').form({
            fields: {
                email: {
                    identifier  : 'email',
                    rules: [{
                        type   : 'empty',
                        prompt : 'Please enter your e-mail'
                    },
                    {
                        type   : 'email',
                        prompt : 'Please enter a valid e-mail'
                    }]
                },
                password: {
                    identifier  : 'password',
                    rules: [
                    {
                        type   : 'empty',
                        prompt : 'Please enter your password'
                    },
                    {
                        type   : 'length[6]',
                        prompt : 'Your password must be at least 6 characters'
                    }]
                }
            }
        });
    });
}

if (typeof Turbolinks == "undefined") {
    $(document).ready(ready);
    } else {
    $(document).on("turbolinks:load", ready);
    }       