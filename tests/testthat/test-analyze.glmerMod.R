context("analyze.glmerMod")

test_that("If it works.", {
  library(lme4)

  # GLM
  fit <- lme4::glmer(vs ~ mpg + (1 | cyl), data = mtcars, family = "binomial")

  model <- analyze(fit)
  values <- values(model)
  testthat::expect_equal(round(values$effects$mpg$Coef, 2), 0.17, tolerance = 0.02)

  # test summary
  summa <- summary(model, round = 2)
  testthat::expect_equal(nrow(summa), 2)

  # GLM
  fit <- lme4::glmer(Sex ~ Adjusting + (1 | Salary), data = psycho::affective, family = "binomial")
  testthat::expect_warning(analyze(fit))
})
