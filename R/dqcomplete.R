#' Create interactive percent completeness heatmap
#'
#' @param data the dataset
#' @param by_var the variable to stratify by
#' @param title title for your plot
#' @param miss an atomic vector listing what values to classify as missing (besides NA which will count as missing by default)
#' @param margin a list with margin (l:left, r:right, b:bottom, t:top) and padding sizes specified in pixels
#'
#' @return a plotly heatmap object
#' @import tidyverse
#' @import plotly
#' @import dplyr
#' @importFrom grDevices colorRamp
#' @export
dq_complete_plot <- function(data, by_var, title, miss = NULL, margin = NULL){

  data_miss <- data %>% as_tibble() %>%
    mutate_at(.vars=vars(-matches(by_var)), .funs=funs(replace(., . %in% miss, NA) %>% is.na)) %>%
    group_by_(by_var) %>% summarize_all(.funs=funs(((1-mean(.))*100) %>% round(2)))

  data_miss_mat <- data_miss %>% select_(paste("-", by_var, sep="")) %>% as.matrix() %>% t()

  colnames(data_miss_mat) <- select(data_miss, by_var) %>% pull
  rownames(data_miss_mat) <- setdiff(names(data_miss), by_var)

  out_dq_plot <- plot_ly(
    x = colnames(data_miss_mat),
    y = rownames(data_miss_mat),
    z = data_miss_mat,
    colors = colorRamp(c("red", "yellow", "green")),
    type = "heatmap"
  ) %>% colorbar(limits = c(0, 100)) %>%
    layout(title = title, xaxis = list(title = NULL), yaxis = list(title = NULL), autosize = T, margin = margin)

  return(out_dq_plot)
}

#' @examples
#' dq_complete_plot(data = syn_miss_fields, by_var = "Source", title = "Percent Completeness of Fields by Source")
#' dq_complete_plot(data = syn_miss_source, by_var = "Source", title = "Percent Completeness of Fields by Source", miss = c(" ", "X", "blank", "sorry, not sorry"), margin = list(l=150, r=50, b=100, t=25, pad=4))
