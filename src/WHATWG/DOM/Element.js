exports.setAttribute = () => qualifiedName => value => element => () => {
	return element.setAttribute(qualifiedName, value);
};

exports.removeAttribute = () => qualifiedName => element => () => element.removeAttribute(qualifiedName);
