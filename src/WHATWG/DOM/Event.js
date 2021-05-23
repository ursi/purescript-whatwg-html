exports.new = () => type => eventInitDict => () => new window.Event(type, eventInitDict);

exports.stopPropagation = () => event => () => event.stopPropagation();

exports.preventDefault = () => event => () => event.preventDefault();
