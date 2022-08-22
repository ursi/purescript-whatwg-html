export const newImpl = type => eventInitDict => () => new window.Event(type, eventInitDict);

export const stopPropagationImpl = event => () => event.stopPropagation();

export const preventDefaultImpl = event => () => event.preventDefault();
