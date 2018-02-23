var exec = require("cordova/exec");
var PLUGIN_NAME = "FirebasePerformance";

module.exports = {
    starthttp: function(message, success, error) {
        exec(success, error, PLUGIN_NAME, "report", [message]);
    },
    stophttp: function(message, success, error) {
        exec(success, error, PLUGIN_NAME, "report", [message]);
    }
};
