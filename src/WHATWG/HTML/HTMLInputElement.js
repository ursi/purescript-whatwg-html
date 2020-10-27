exports.value = input => () => input.value;

exports.setValue = value => input => () => input.value = value;
