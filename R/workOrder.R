#' 上传工单
#'
#' @param dms_token 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' workOrder_upload
workOrder_upload <- function(dms_token) {

  sql = paste0("
exec rds_src_proc_workOrder_upload

               ")
  res = tsda::sql_update2(token =dms_token ,sql_str  = sql)
  return(res)

}


#' 查看工单
#'
#' @param dms_token 第二个参数
#' @param FBillNo
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' workOrder_view
workOrder_view <- function(dms_token,FBillNo) {

  sql = paste0("
exec rds_src_proc_workOrder_view '",FBillNo,"'

               ")
  res = tsda::sql_select2(token =dms_token ,sql = sql)
  return(res)

}
