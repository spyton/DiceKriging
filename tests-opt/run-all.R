require("testthat")
require("DiceKriging")

if (list.files(pattern="tests-opt")=="tests-opt") {
    source(file.path("tests-opt","utils.R"))
    test_dir(path="tests-opt")
} else if (list.files(pattern="utils.R")=="utils.R") {
    source("utils.R")
    test_dir(path=".")
} else {
    stop("Launch test from package root directory or package/test directory")
}
