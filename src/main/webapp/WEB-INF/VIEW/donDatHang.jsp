
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<div id="page-wrapper">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header">Danh sách hóa đơn</h1>
      </div>
      <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-lg-12">
        <div class="panel panel-default">
          <div class="panel-heading">
            Thông tin hóa đơn
          </div>
          <!-- /.panel-heading -->
          <div class="panel-body">
            <div class="table-responsive">
              <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                <tr>
                  <th>ID Hóa đơn</th>
                  <th>ID Khách hàng</th>
                  <th>ID Mặt hàng</th>
                  <th>Số lượng</th>
                  <th>Tổng tiền</th>
                  <th>Tình trạng</th>
                  <th>Địa chỉ</th>
                  <th colspan="2">Tác vụ</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listHoaDon}" var="hoadon">
                  <tr class="odd gradeX">
                    <td>${hoadon.idHoaDon}</td>
                    <td>${hoadon.diaChi.name}</td>
                    <td>${hoadon.idMatHang.tenMH}</td>
                    <td>${hoadon.soLuong}</td>
                    <td>${hoadon.tongTien}</td>
                    <td>${hoadon.tinhTrang}</td>
                    <td>${hoadon.diaChi.address}</td>
                    <td><a href="<c:url value="/admin/deleteHoadon/${comment.idComment}"/>" onclick="return confirm('bạn có chắc chắn không? ');">delete</a></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- /.table-responsive -->
          </div>
          <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->
    </div>
  </div>
  <!-- /.container-fluid -->
</div>