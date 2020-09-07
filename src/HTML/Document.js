exports.bodyImpl = document => () => document.body;

exports.unsafeBody = () => document => () => document.body;
