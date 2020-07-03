(module
  (func $add (param $lhs i32) (param $rhs i32) (result i32)
    local.get $lhs
    local.get $rhs
    i32.add)
  (export "add" (func $add))
)

(module
   (global $g (import "js" "global") (mut i32))
   (func (export "getGlobal") (result i32)
        (global.get $g))
   (func (export "incGlobal")
        (global.set $g
            (i32.add (global.get $g) (i32.const 1))))
)
