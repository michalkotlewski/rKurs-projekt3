test_that("Spelniony warunek wygranej",{expect_true(spr_warunek_wygranej(c(1,1,1,1,1,1,1)))})

test_that("Spelniony warunek wygranej",{expect_true(spr_warunek_wygranej(c(1,1,1,1,1,0,0)))})

test_that("Niespelniony warunek wygranej",{expect_false(spr_warunek_wygranej(c(1,1,1,0,1,1,1)))})

test_that("Niespelniony warunek wygranej",{expect_false(spr_warunek_wygranej(c(0,0,0,0,1,0,0)))})
