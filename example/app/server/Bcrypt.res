// This is just a string but we're treating it like a different type so we don't
// accidentally store a non-hashed password in our database
type hash

@module("bcrypt") external hash: (string, int) => Promise.t<hash> = "hash"
@module("bcrypt") external compare: (string, hash) => Promise.t<bool> = "compare"
