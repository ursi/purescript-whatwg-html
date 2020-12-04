exports.classList = () => element => () => element.classList;

exports.setAttribute = () => qualifiedName => value => element => () => {
	return element.setAttribute(qualifiedName, value);
};

exports.removeAttribute = () => qualifiedName => element => () => element.removeAttribute(qualifiedName);

exports.scrollHeight = () => element => () => element.scrollHeight;

exports.clientHeight = () => element => () => element.clientHeight;
