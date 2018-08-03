<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Admin_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table>
       <tr>
           <td></td>          
           <td style="text-align:center;padding-left:40px;font-size:xx-large" class="auto-style1"><strong>Photo Entry</strong></td>           

       </tr>
        <tr><td></td><td></td></tr>
        <tr><td></td><td></td></tr>
        <tr>
            <td style="color:black;padding-left:200px;">Header name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color:black;padding-left:200px;">Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Width="200px"/>
            </td>
        </tr>
        <tr><td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="80px" BackColor="#FF0066" Height="33px"/>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     </td></tr>
        <tr>
          
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting"
                     DataKeyNames="gallery_id" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" Font-Size="Large">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="headername" HeaderText="Header name">                        
                        <HeaderStyle  ForeColor="White" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Photo">
                            <HeaderStyle  ForeColor="White" />
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" Width="200px" Height="180px" ImageUrl='<%#Eval("Photo")%>'/>
                            </ItemTemplate>                         
                        </asp:TemplateField>
                        <asp:CommandField SelectText="Edit" ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

