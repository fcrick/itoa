(module
 (type $iiv (func (param i32 i32)))
 (import "env" "memory" (memory $0 0))
 (export "memory" (memory $0))
 (export "itoa" (func $assembly/index/itoa))
 (func $assembly/index/itoa (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/index.ts:8:4
  (if
   ;;@ assembly/index.ts:8:8
   (i32.eq
    (get_local $1)
    (i32.const -2147483648)
   )
   ;;@ assembly/index.ts:8:29
   (block
    ;;@ assembly/index.ts:9:8
    (i64.store
     ;;@ assembly/index.ts:9:19
     (get_local $0)
     ;;@ assembly/index.ts:9:25
     (i64.const 3760842332685991947)
    )
    ;;@ assembly/index.ts:10:8
    (i64.store
     ;;@ assembly/index.ts:10:19
     (i32.add
      (get_local $0)
      ;;@ assembly/index.ts:10:26
      (i32.const 8)
     )
     ;;@ assembly/index.ts:10:29
     (i64.const 15820006087996471)
    )
    ;;@ assembly/index.ts:11:8
    (return)
   )
  )
  ;;@ assembly/index.ts:15:4
  (i32.store8
   ;;@ assembly/index.ts:14:4
   (tee_local $2
    ;;@ assembly/index.ts:14:22
    (i32.add
     (get_local $0)
     ;;@ assembly/index.ts:14:29
     (i32.const 4)
    )
   )
   (i32.const 48)
  )
  ;;@ assembly/index.ts:17:4
  (set_local $3
   ;;@ assembly/index.ts:17:25
   (i32.lt_s
    (get_local $1)
    ;;@ assembly/index.ts:17:29
    (i32.const 0)
   )
  )
  ;;@ assembly/index.ts:18:4
  (set_local $1
   ;;@ assembly/index.ts:18:8
   (select
    ;;@ assembly/index.ts:18:17
    (get_local $1)
    (i32.sub
     (i32.const 0)
     (get_local $1)
    )
    (i32.gt_s
     (get_local $1)
     (i32.const 0)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:20:11
    (i32.gt_s
     (get_local $1)
     ;;@ assembly/index.ts:20:15
     (i32.const 0)
    )
    (block
     ;;@ assembly/index.ts:21:8
     (i32.store8
      ;;@ assembly/index.ts:21:18
      (get_local $2)
      ;;@ assembly/index.ts:21:26
      (i32.add
       ;;@ assembly/index.ts:21:33
       (i32.rem_s
        ;;@ assembly/index.ts:21:38
        (get_local $1)
        ;;@ assembly/index.ts:21:42
        (i32.const 10)
       )
       (i32.const 48)
      )
     )
     ;;@ assembly/index.ts:22:8
     (set_local $2
      (i32.add
       (get_local $2)
       ;;@ assembly/index.ts:22:18
       (i32.const 1)
      )
     )
     ;;@ assembly/index.ts:23:8
     (set_local $1
      (i32.div_s
       (get_local $1)
       ;;@ assembly/index.ts:23:13
       (i32.const 10)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:27:4
  (if
   ;;@ assembly/index.ts:27:8
   (get_local $3)
   ;;@ assembly/index.ts:27:15
   (block
    ;;@ assembly/index.ts:28:8
    (i32.store8
     ;;@ assembly/index.ts:28:18
     (get_local $2)
     (i32.const 45)
    )
    ;;@ assembly/index.ts:29:8
    (set_local $2
     (i32.add
      (get_local $2)
      ;;@ assembly/index.ts:29:18
      (i32.const 1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:36:4
  (set_local $2
   ;;@ assembly/index.ts:36:20
   (i32.div_s
    ;;@ assembly/index.ts:33:22
    (if (result i32)
     (tee_local $1
      (i32.sub
       ;;@ assembly/index.ts:33:23
       (i32.sub
        (get_local $2)
        ;;@ assembly/index.ts:33:32
        (get_local $0)
       )
       ;;@ assembly/index.ts:33:39
       (i32.const 4)
      )
     )
     (get_local $1)
     ;;@ assembly/index.ts:33:4
     (tee_local $1
      ;;@ assembly/index.ts:33:45
      (i32.const 1)
     )
    )
    ;;@ assembly/index.ts:36:29
    (i32.const 2)
   )
  )
  (loop $continue|1
   (if
    ;;@ assembly/index.ts:37:11
    (i32.gt_s
     (get_local $2)
     ;;@ assembly/index.ts:37:18
     (i32.const 0)
    )
    (block
     ;;@ assembly/index.ts:40:8
     (set_local $4
      ;;@ assembly/index.ts:40:23
      (i32.load8_u
       ;;@ assembly/index.ts:38:8
       (tee_local $3
        (i32.add
         ;;@ assembly/index.ts:38:21
         (i32.add
          (get_local $0)
          ;;@ assembly/index.ts:38:32
          (get_local $2)
         )
         (i32.const 3)
        )
       )
      )
     )
     ;;@ assembly/index.ts:41:8
     (i32.store8
      ;;@ assembly/index.ts:41:18
      (get_local $3)
      ;;@ assembly/index.ts:41:21
      (i32.load8_u
       ;;@ assembly/index.ts:39:8
       (tee_local $3
        ;;@ assembly/index.ts:39:21
        (i32.sub
         (i32.add
          (i32.add
           (get_local $0)
           ;;@ assembly/index.ts:39:28
           (i32.const 4)
          )
          ;;@ assembly/index.ts:39:32
          (get_local $1)
         )
         ;;@ assembly/index.ts:39:41
         (get_local $2)
        )
       )
      )
     )
     ;;@ assembly/index.ts:42:8
     (i32.store8
      ;;@ assembly/index.ts:42:18
      (get_local $3)
      ;;@ assembly/index.ts:42:21
      (get_local $4)
     )
     ;;@ assembly/index.ts:43:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ assembly/index.ts:43:16
       (i32.const 1)
      )
     )
     (br $continue|1)
    )
   )
  )
  ;;@ assembly/index.ts:46:4
  (i32.store
   ;;@ assembly/index.ts:46:15
   (get_local $0)
   ;;@ assembly/index.ts:46:21
   (get_local $1)
  )
 )
)
