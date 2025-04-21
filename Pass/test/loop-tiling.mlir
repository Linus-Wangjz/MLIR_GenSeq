func.func @loop_tiling() {
  affine.for %i = 0 to 256 {
    affine.for %j = 0 to 512 {
      affine.for %k = 0 to 512 {
        %a = arith.constant 42 : i32
        %b = arith.constant 42 : i32
        %c = arith.addi %b, %a : i32
      }
    }
  }
  return
}
