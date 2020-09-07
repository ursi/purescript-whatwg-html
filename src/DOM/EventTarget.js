exports.addEventListener = () => () => () => type => callback => options => target => () => {
	target.addEventListener(type, callback, options);
};

exports.removeEventListener = () => () => () => type => callback => options => target => () => {
	target.removeEventListener(type, callback, options);
};
