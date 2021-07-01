exports.getItemImpl = key => storage => () => storage.getItem(key);

exports.setItem = key => value => storage => () => storage.setItem(key, value);

exports.removeItem = key => storage => () => storage.removeItem(key);
