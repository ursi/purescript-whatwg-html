exports.instanceof = value => name => {
	try {
		return value instanceof window[name];
	} catch (_) {
		return false;
	}
};
