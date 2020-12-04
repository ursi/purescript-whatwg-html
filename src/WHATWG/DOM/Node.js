exports.insertBefore = () => () => () => node => child => parent => () => {
	return parent.insertBefore(node, child);
};

exports.appendChild = () => () => child => parent => () => {
	return parent.appendChild(child);
};

exports.replaceChild = () => () => () => node => child => parent => () => {
	return parent.replaceChild(node, child);
};

exports.removeChild = () => () => child => parent => () => {
	return parent.removeChild(child);
};
