exports.new = () => type => eventInitDict => () => new window.Event(type, eventInitDict);
