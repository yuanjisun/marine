context("Test Compensation Depth from Pre-loaded Data")

test_that("Test correctness of compensation depth from the pre-loaded data", {
        expect_identical(compensation_depth(test_data),9)
        expect_failure(expect_equal(compensation_depth(test_data), 10))
        expect_failure(expect_equal(compensation_depth(test_data), 8))
})
