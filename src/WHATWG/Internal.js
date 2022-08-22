const instanceof_ = value => name => {
	try {
		return value instanceof window[name];
	} catch (_) {
		return false;
	}
};

export { instanceof_ as instanceof }

export const unsafeGet = key => a => () => a[key];

export const unsafeGetPure = key => a => a[key];

export const unsafeSet = key => value => a => () => a[key] = value;
