context("check_character")

test_that("check_character", {
  expect_true(test(character(0), "character"))
  expect_false(test(NULL, "character"))
  expect_true(test("a", "character"))
  expect_false(test(1, "character"))

  x = c("abba", "baab")
  expect_true(test(x, "character", pattern="a"))
  expect_true(test(x, "character", pattern="ab"))
  expect_false(test(x, "character", pattern="aa"))
  expect_false(test(x, "character", pattern="^ab"))
  expect_true(test(x, "character", pattern="AB", ignore.case=TRUE))
  expect_false(test(x, "character", pattern="AB", ignore.case=FALSE))

  x = letters[1:3]
  expect_true(test(x, "character", na.ok=FALSE, min.len=1L, max.len=3L))
  expect_false(test(x, "character", na.ok=FALSE, len=5))


  expect_true(assert("", "character"))
  expect_error(assert(NA, "character"), "character")
})