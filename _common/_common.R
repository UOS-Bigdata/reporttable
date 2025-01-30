knitr::opts_chunk$set(echo = TRUE, size = 'footnotesize')

library(tidyverse)
library(knitr)
library(kableExtra)

library(DescTools)
library(mice)
library(ggmice)
library(naniar)

library(flextable)
library(officer)
library(gtsummary)
library(arsenal)


# ======= ggplot2 에서 한글을 사용할 수 있게 해주는 명령어
library(showtext)
# Nanum Pen Script 는 선택
#font_add_google("Nanum Pen Script", "gl")
# 구글 폰트에서 "Nanum Gothic" 추가
font_add_google("Nanum Gothic", "nanumgothic")
showtext_auto()

##========= R base plot function global font size
par(
  family = "nanumgothic",
  cex = 0.7,
  cex.main = 1.2,
  cex.lab = 1.0,
  cex.axis = 0.7
)




##========= ggplot2 global font size
# 모든 ggplot2 그래프에 기본 적용할 테마 설정
theme_set(
  theme_minimal() + # 기본 테마 설정 (선택 가능)
    theme(
      plot.title = element_text(size = 15),
      axis.title = element_text(size = 12),
      axis.text = element_text(size = 10)
    )
)


set_flextable_defaults(fonts_ignore=TRUE)

