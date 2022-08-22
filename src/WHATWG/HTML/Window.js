const window_ = () => window;
export { window_ as window };

export const windowPrime = window;

export const alert = message => window => () => window.alert(message);
