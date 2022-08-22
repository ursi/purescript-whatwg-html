export const createElementImpl = localName => options => document => () => {
	return document.createElement(localName, options);
};

export const createTextNode = data => document => () => document.createTextNode(data);
