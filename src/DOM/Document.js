exports.createElementImpl = localName => options => document => () => {
	return document.createElement(localName, options);
};

exports.createTextNode = data => document => () => document.createTextNode(data);
