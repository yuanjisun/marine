context("Test Compensation Depth from Pre-loaded Data")

test_that("Test the accuracy and correctness of compensation depth from the pre-loaded data", {
        expect_identical(compensation_depth(test_data),9)
        expect_identical(compensation_depth(test_data),10)
        expect_identical(compensation_depth(test_data),8)
})
