#!/usr/bin/env bats

@test "Bull graph." {
  load bull
  [ "$bull_gv_computed_chi" -eq $bull_expected_chi ]
  [ "$bull_gv_computed_order" -eq $bull_expected_order ]
  [ "$bull_gv_computed_size" -eq $bull_expected_size ]
  [ "$bull_gv_computed_maxdeg" -eq $bull_expected_maxdeg ]
}

