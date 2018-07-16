const fs = require("fs");
const compiled = new WebAssembly.Module(fs.readFileSync(__dirname + "/build/optimized.wasm"));

module.exports = function(memory) {
    // no idea why this is needed, but it is
    const thing = {}
    Object.defineProperty(thing, 'foo', {
        get: () => new WebAssembly.Instance(compiled, {env:{memory:memory}}).exports
    })
    return thing.foo
}
