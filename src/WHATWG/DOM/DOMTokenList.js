export const add = tokens => dtl => () => dtl.add.apply(dtl, tokens);

export const remove = tokens => dtl => () => dtl.remove.apply(dtl, tokens);
