import assert from 'assert'
import itoaModule from '../index.js'

const memory = new WebAssembly.Memory({initial:1})
const { itoa } = itoaModule({env:{memory}})

const buffer = memory.buffer
const dataView = new DataView(buffer, 0, buffer.byteLength)

const testNumbers = [
    0,
    1,
    -1,
    12345,
    -12345,
    2 ** 31 - 1,
    -(2 ** 31),
    11,
    139,
    1111,
    54321,
    111111,
    7654321,
    11111111,
    987654321,
    1234567890,
]

for (const testNumber of testNumbers) {
    // make sure number is in function domain
    assert(testNumber >= -(2 ** 31), `${testNumber} >= -(2 ** 31)`)
    assert(testNumber <= 2 ** 31 - 1, `${testNumber} <= 2 ** 31 - 1`)
    assert(Number.isInteger(testNumber), `Number.isInteger(${testNumber})`)

    itoa(0, testNumber)

    const testString = testNumber.toString()
    assert.equal(
        dataView.getInt32(0, true),
        testString.length,
        `length of ${testNumber}`
    )
    for (let i = 0; i < testString.length; ++i) {
        assert.equal(
            dataView.getUint8(4 + i),
            testString.charCodeAt(i),
            `char ${i} of ${testNumber}`
        )
    }
}

console.log("ok");
