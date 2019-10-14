c("data", "Results", "Models") %>% map(dir.create)

library(fs)
data_path <- "D:/work/learn_nn/refs/DLCST"
dir_tree(data_path)

file.path(data_path, "DLCST_index.txt") %>%
    read_lines(n_max = 100)

file.path(data_path, "DLCST_labels.txt") %>%
    read_lines(n_max = 100)

file.path(data_path, "DLCST_gss.txt") %>%
    read_csv(col_names = FALSE, n_max = 100) %>%
    dim()

# 就是 50 * 320 的图片。

# Make predictions using the functions in guess.py
# 但是需要用数据先训练。
# 先要 train 模型
