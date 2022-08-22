export const insertBeforeImpl = node => child => parent => () => {
	return parent.insertBefore(node, child);
};

export const appendChildImpl = child => parent => () => {
	return parent.appendChild(child);
};

export const replaceChildImpl = node => child => parent => () => {
	return parent.replaceChild(node, child);
};

export const removeChildImpl = child => parent => () => {
	return parent.removeChild(child);
};
