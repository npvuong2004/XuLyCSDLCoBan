<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="themNhanVien.aspx.cs" Inherits="QLNhanVien.themNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        Nhập họ nhân viên: <asp:TextBox ID="txtHo" runat="server"></asp:TextBox>
    </div>
    <div>
        Nhập tên nhân viên: <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
    </div>
    <div>
        Chọn Giói tinh: <asp:RadioButton ID="rdNam" runat="server" Text="Nam" GroupName="GT"/>
                        <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT"/>
    </div>
    <div>
        Nhập ngày sinh: <asp:TextBox ID="txtNgaySinh" runat="server" TextMode="Date"></asp:TextBox>
    </div>
    <div>
        Nhập nơi sinh: <asp:TextBox ID="txtNoiSinh" runat="server"></asp:TextBox>
    </div>
    <div>
        Nhập phòng: <asp:DropDownList ID="ddlPhong" runat="server" DataSourceID="dsPhong" DataTextField="TenPhong" DataValueField="MaPhong"></asp:DropDownList>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Lưu" />
        <asp:Label ID="lbThongBao" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>

    <asp:SqlDataSource ID="dsPhong" runat="server"
         ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
        
    
</asp:Content>
