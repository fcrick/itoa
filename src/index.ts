import wasmBuffer from './optimized.wasm.js'
const module = new WebAssembly.Module(wasmBuffer)

type ItoaExports = {
    itoa: (dest: number, i: number) => void
}

export default function(imports: WebAssembly.Imports) {
    // usually caller will provide something, but if not, fill in the minimum
    if (!imports) {
        imports = {env: {memory: new WebAssembly.Memory({initial: 1})}}
    }

    return new WebAssembly.Instance(module, {...imports}).exports as ItoaExports
}
