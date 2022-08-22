export const getItemImpl = key => storage => () => storage.getItem(key);

export const setItem = key => value => storage => () => storage.setItem(key, value);

export const removeItem = key => storage => () => storage.removeItem(key);
