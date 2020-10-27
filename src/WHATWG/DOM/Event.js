exports.new = () => type => eventInitDict => () => new window.Event(type, eventInitDict);

exports.targetImpl = event => () => event.target;
