export const setAttributeImpl = qualifiedName => value => element => () => {
	return element.setAttribute(qualifiedName, value);
};

export const removeAttributeImpl = qualifiedName => element => () => element.removeAttribute(qualifiedName);
