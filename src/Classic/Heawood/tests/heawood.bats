#!/usr/bin/env bats

setup() {
  load ../../../graphs
  load heawood
}

@test "Heawood graph -> graph6" {
  [ $heawood_g6_computed_diameter -eq $heawood_expected_diameter ]
  [ $heawood_g6_computed_girth -eq $heawood_expected_girth ]
  [ $heawood_g6_computed_order -eq $heawood_expected_order ]
  [ $heawood_g6_computed_size -eq $heawood_expected_size ]
}

@test "Heawood graph -> DOT" {
  [ $heawood_gv_computed_chi -eq $heawood_expected_chi ]
  [ $heawood_gv_computed_size -eq $heawood_expected_size ]
  [ $heawood_gv_computed_maxdeg -eq $heawood_expected_maxdeg ]
  [ $heawood_gv_computed_order -eq $heawood_expected_order ]
}
