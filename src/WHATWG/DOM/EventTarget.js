export const addEventListenerImpl = type => callback => options => target => () => {
	target.addEventListener(type, callback, options);
};

export const removeEventListenerImpl = type => callback => options => target => () => {
	target.removeEventListener(type, callback, options);
};

export const dispatchEventImpl = event => target => () => target.dispatchEvent(event);
