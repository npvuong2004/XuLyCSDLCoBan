<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="QLNhanVien.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h1>Danh Sách Nhân Viên</h1>
    </p>
    <asp:SqlDataSource ID="dsNhanVien" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
        InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" 
        SelectCommand="SELECT * FROM [NhanVien]" 
        UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
            <asp:Parameter Name="MaNV" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="9"
        CssClass="table table-bordered table-hover" DataSourceID="dsNhanVien" DataKeyNames="MaNV">
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="Mã nhân viên" ReadOnly="true" />
            <asp:BoundField DataField="HoNV" HeaderText="Họ nhân viên" />
            <asp:BoundField DataField="TenNV" HeaderText="Tên nhân viên" />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phái" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" />
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" />
            <asp:CommandField ShowEditButton="true" ButtonType="Button" ShowDeleteButton="true" />
        </Columns>
        <HeaderStyle CssClass="bg-info" />
    </asp:GridView>
</asp:Content>
