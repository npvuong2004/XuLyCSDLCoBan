using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLNhanVien
{
    public partial class themNhanVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnLuu_Click1(object sender, EventArgs e)
        {
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["QLNhanVienConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            string sql = "insert into nhanvien(honv,tennv,phai,ngaysinh,noisinh,maphong) values (@honv,@tennv,@phai,@ngaysinh,@noisinh,@maphong)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@honv", txtHo.Text);
            cmd.Parameters.AddWithValue("@tennv", txtTen.Text);
            if (rdNam.Checked)
                cmd.Parameters.AddWithValue("@phai", true);
            else
                cmd.Parameters.AddWithValue("@phai", false);

            cmd.Parameters.AddWithValue("@ngaysinh", txtNgaySinh.Text);
            cmd.Parameters.AddWithValue("@noisinh", txtNoiSinh.Text);
            cmd.Parameters.AddWithValue("@maphong", ddlPhong.SelectedValue);
            if (cmd.ExecuteNonQuery() > 0)
                Response.Redirect("qlNhanVien.aspx");
            else
                lbThongBao.Text = "Thao tác thêm nhân viên thất bại";
        }
    }
}