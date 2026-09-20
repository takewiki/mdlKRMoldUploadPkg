#' 上传刀具
#'
#' @param dms_token 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' mdTool_upload
mdTool_upload <- function(dms_token) {

  sql = paste0("
exec rds_src_proc_mdTool_upload

               ")
  res = tsda::sql_update2(token =dms_token ,sql_str  = sql)
  return(res)

}


#' 查看刀具
#'
#' @param dms_token 第二个参数
#' @param FBillNo
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' mdTool_view
mdTool_view <- function(dms_token,FBillNo) {

  sql = paste0("
exec rds_src_proc_mdTool_view '",FBillNo,"'

               ")
  res = tsda::sql_select2(token =dms_token ,sql = sql)
  return(res)

}
