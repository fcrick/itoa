(module
 (type $iiv (func (param i32 i32)))
 (memory $0 0)
 (export "itoa" (func $assembly/index/itoa))
 (export "memory" (memory $0))
 (func $assembly/index/itoa (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/index.ts:6:4
  (if
   ;;@ assembly/index.ts:6:8
   (i32.eq
    (get_local $1)
    ;;@ assembly/index.ts:6:14
    (i32.const -2147483648)
   )
   ;;@ assembly/index.ts:6:27
   (block
    ;;@ assembly/index.ts:7:8
    (i64.store
     ;;@ assembly/index.ts:7:19
     (get_local $0)
     ;;@ assembly/index.ts:7:25
     (i64.const 3760842332685991947)
    )
    ;;@ assembly/index.ts:8:8
    (i64.store
     ;;@ assembly/index.ts:8:19
     (i32.add
      (get_local $0)
      ;;@ assembly/index.ts:8:26
      (i32.const 8)
     )
     ;;@ assembly/index.ts:8:29
     (i64.const 15820006087996471)
    )
    ;;@ assembly/index.ts:9:8
    (return)
   )
  )
  ;;@ assembly/index.ts:13:4
  (i32.store8
   ;;@ assembly/index.ts:12:4
   (tee_local $2
    ;;@ assembly/index.ts:12:22
    (i32.add
     (get_local $0)
     ;;@ assembly/index.ts:12:29
     (i32.const 4)
    )
   )
   ;;@ assembly/index.ts:13:22
   (i32.const 48)
  )
  ;;@ assembly/index.ts:15:4
  (set_local $3
   ;;@ assembly/index.ts:15:25
   (i32.lt_s
    (get_local $1)
    ;;@ assembly/index.ts:15:29
    (i32.const 0)
   )
  )
  ;;@ assembly/index.ts:16:4
  (set_local $1
   ;;@ assembly/index.ts:16:8
   (select
    ;;@ assembly/index.ts:16:17
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
    ;;@ assembly/index.ts:18:11
    (i32.gt_s
     (get_local $1)
     ;;@ assembly/index.ts:18:15
     (i32.const 0)
    )
    (block
     ;;@ assembly/index.ts:19:8
     (i32.store8
      ;;@ assembly/index.ts:19:18
      (get_local $2)
      ;;@ assembly/index.ts:19:26
      (i32.add
       ;;@ assembly/index.ts:19:33
       (i32.rem_s
        ;;@ assembly/index.ts:19:38
        (get_local $1)
        ;;@ assembly/index.ts:19:42
        (i32.const 10)
       )
       ;;@ assembly/index.ts:19:26
       (i32.const 48)
      )
     )
     ;;@ assembly/index.ts:20:8
     (set_local $2
      (i32.add
       (get_local $2)
       ;;@ assembly/index.ts:20:18
       (i32.const 1)
      )
     )
     ;;@ assembly/index.ts:21:8
     (set_local $1
      (i32.div_s
       (get_local $1)
       ;;@ assembly/index.ts:21:13
       (i32.const 10)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:25:4
  (if
   ;;@ assembly/index.ts:25:8
   (get_local $3)
   ;;@ assembly/index.ts:25:15
   (block
    ;;@ assembly/index.ts:26:8
    (i32.store8
     ;;@ assembly/index.ts:26:18
     (get_local $2)
     ;;@ assembly/index.ts:26:26
     (i32.const 45)
    )
    ;;@ assembly/index.ts:27:8
    (set_local $2
     (i32.add
      (get_local $2)
      ;;@ assembly/index.ts:27:18
      (i32.const 1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:34:4
  (set_local $2
   ;;@ assembly/index.ts:34:20
   (i32.div_s
    ;;@ assembly/index.ts:31:22
    (if (result i32)
     (tee_local $1
      (i32.sub
       ;;@ assembly/index.ts:31:23
       (i32.sub
        (get_local $2)
        ;;@ assembly/index.ts:31:32
        (get_local $0)
       )
       ;;@ assembly/index.ts:31:39
       (i32.const 4)
      )
     )
     (get_local $1)
     ;;@ assembly/index.ts:31:4
     (tee_local $1
      ;;@ assembly/index.ts:31:45
      (i32.const 1)
     )
    )
    ;;@ assembly/index.ts:34:29
    (i32.const 2)
   )
  )
  (loop $continue|1
   (if
    ;;@ assembly/index.ts:35:11
    (i32.gt_s
     (get_local $2)
     ;;@ assembly/index.ts:35:18
     (i32.const 0)
    )
    (block
     ;;@ assembly/index.ts:38:8
     (set_local $4
      ;;@ assembly/index.ts:38:23
      (i32.load8_u
       ;;@ assembly/index.ts:36:8
       (tee_local $3
        (i32.add
         ;;@ assembly/index.ts:36:21
         (i32.add
          (get_local $0)
          ;;@ assembly/index.ts:36:32
          (get_local $2)
         )
         (i32.const 3)
        )
       )
      )
     )
     ;;@ assembly/index.ts:39:8
     (i32.store8
      ;;@ assembly/index.ts:39:18
      (get_local $3)
      ;;@ assembly/index.ts:39:21
      (i32.load8_u
       ;;@ assembly/index.ts:37:8
       (tee_local $3
        ;;@ assembly/index.ts:37:21
        (i32.sub
         (i32.add
          (i32.add
           (get_local $0)
           ;;@ assembly/index.ts:37:28
           (i32.const 4)
          )
          ;;@ assembly/index.ts:37:32
          (get_local $1)
         )
         ;;@ assembly/index.ts:37:41
         (get_local $2)
        )
       )
      )
     )
     ;;@ assembly/index.ts:40:8
     (i32.store8
      ;;@ assembly/index.ts:40:18
      (get_local $3)
      ;;@ assembly/index.ts:40:21
      (get_local $4)
     )
     ;;@ assembly/index.ts:41:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ assembly/index.ts:41:16
       (i32.const 1)
      )
     )
     (br $continue|1)
    )
   )
  )
  ;;@ assembly/index.ts:44:4
  (i32.store
   ;;@ assembly/index.ts:44:15
   (get_local $0)
   ;;@ assembly/index.ts:44:21
   (get_local $1)
  )
 )
)
