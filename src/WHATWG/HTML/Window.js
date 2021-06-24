exports.window = () => window;

exports.windowPrime = window;

exports.alert = message => window => () => window.alert(message);
