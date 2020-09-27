exports.add = tokens => dtl => () => dtl.add.apply(dtl, tokens);

exports.remove = tokens => dtl => () => dtl.remove.apply(dtl, tokens);
