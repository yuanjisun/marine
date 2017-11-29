context("Test the Input from Pre-loaded Data")

test_that("Test whether raw_data() can detect the file extension or not", {
        # This is the correct result for test_data
        raw_data(system.file("extdata", "ctd.cnv", package="oce"))
        # Test the wrong file extension
        expect_error(raw_data("sample_CTD.fff"))
        # Test the input without quotation marks
        expect_error(raw_data(sample_CTD.cnv))
})
