#' Add comma style y axis label
#'
#' @param scale_by scale by which to change the value
#' @param p ggplot2 object
#' @param n_breaks number of breaks
#'
#' @return
#' @export add_scaled_y_comma
#'
#' @examples add_scaled_y_comma
add_scaled_y_comma <-function (p, scale_by, n_breaks) {

    p = p + scale_y_continuous(#expand = c(0,0),
        label=label_comma (scale = scale_by),
        #breaks = trans_breaks(identity, identity, n = 3,  min.n = 3)
        breaks = pretty_breaks(n = n_breaks)
        #breaks = ggpmthemes::equal_breaks(n=3, s=0.05)
        #breaks = extended_breaks(n = 3)
    )

    return (p)
}
