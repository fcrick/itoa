(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (import "env" "memory" (memory $0 0))
 (table $0 1 funcref)
 (global $assembly/index/zero i32 (i32.const 48))
 (global $assembly/index/dash i32 (i32.const 45))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (export "memory" (memory $0))
 (export "itoa" (func $assembly/index/itoa))
 (func $assembly/index/itoa (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  global.get $~lib/builtins/i32.MIN_VALUE
  i32.eq
  if
   local.get $0
   i64.const 3760842332685991947
   i64.store
   local.get $0
   i32.const 8
   i32.add
   i64.const 15820006087996471
   i64.store
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.set $2
  local.get $2
  global.get $assembly/index/zero
  i32.store8
  local.get $1
  i32.const 0
  i32.lt_s
  local.set $3
  local.get $1
  local.tee $4
  i32.const 31
  i32.shr_s
  local.tee $5
  local.get $4
  i32.add
  local.get $5
  i32.xor
  local.set $1
  loop $while-continue|0
   local.get $1
   i32.const 0
   i32.gt_s
   local.set $4
   local.get $4
   if
    local.get $2
    global.get $assembly/index/zero
    local.get $1
    i32.const 10
    i32.rem_s
    i32.add
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 10
    i32.div_s
    local.set $1
    br $while-continue|0
   end
  end
  local.get $3
  if
   local.get $2
   global.get $assembly/index/dash
   i32.store8
   local.get $2
   i32.const 1
   i32.add
   local.set $2
  end
  local.get $2
  local.get $0
  i32.sub
  i32.const 4
  i32.sub
  local.tee $4
  if (result i32)
   local.get $4
  else
   i32.const 1
  end
  local.set $4
  local.get $4
  i32.const 2
  i32.div_s
  local.set $5
  loop $while-continue|1
   local.get $5
   i32.const 0
   i32.gt_s
   local.set $6
   local.get $6
   if
    local.get $0
    i32.const 4
    i32.add
    local.get $5
    i32.add
    i32.const 1
    i32.sub
    local.set $7
    local.get $0
    i32.const 4
    i32.add
    local.get $4
    i32.add
    local.get $5
    i32.sub
    local.set $8
    local.get $7
    i32.load8_u
    local.set $9
    local.get $7
    local.get $8
    i32.load8_u
    i32.store8
    local.get $8
    local.get $9
    i32.store8
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $while-continue|1
   end
  end
  local.get $0
  local.get $4
  i32.store
 )
)
