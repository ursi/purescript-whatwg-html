exports.new = () => type => eventInitDict => () => new window.Event(type, eventInitDict);

exports.preventDefault = () => event => () => event.preventDefault();
