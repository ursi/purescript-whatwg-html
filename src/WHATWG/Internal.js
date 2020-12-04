exports.instanceof = value => name => {
	try {
		return value instanceof window[name];
	} catch (_) {
		return false;
	}
};

exports.unsafeGet = key => a => () => a[key];

exports.unsafeGetPure = key => a => a[key];

exports.unsafeSet = key => value => a => () => a[key] = value;
