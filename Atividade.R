library(usethis)
library(ggplot2)

use_git()

use_github()
usethis::browse_github_token()
gitcreds::gitcreds_set()

attach(diamonds)
ggplot2::diamonds |>
  dplyr::select(carat, cut,price,color) |>
  tidyr::drop_na() |>
  dplyr::filter(color %in% c("D", "E", "F"))
  dplyr::summarize(
    across(
      .cols = c(dplyr::everything()),
      .fns = list(
        média = mean,
        des_p = sd,
        mediana = median
      )
    )
  ) |>
  tibble::view()

