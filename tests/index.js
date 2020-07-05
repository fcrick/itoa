const assert = require("assert");

const memory = new WebAssembly.Memory({initial:1})
const {itoa} = require('..')({env:{memory}})

const buffer = memory.buffer
const dataView = new DataView(buffer, 0, buffer.byteLength)

const testNumber = 12345

itoa(0, testNumber)

const testString = testNumber.toString()
assert.equal(dataView.getInt32(0, true), testString.length)
for (let i = 0; i < testString.length; ++i) {
    assert.equal(dataView.getUint8(4 + i), testString.charCodeAt(i))
}
console.log("ok");
