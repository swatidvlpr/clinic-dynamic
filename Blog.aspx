<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Admin_Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0066;
        }
        .btn {
            padding:10px 16px;
	background:green;
	font:normal 15px/14px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:black;
	margin:3px 0px;
	border:1px solid #707070;
	border-radius:4px;
	margin-left:6px;
		-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out
          
        }

          .Btn1{
	padding:10px 16px;
	background:#DBDBDB;
	font:normal 15px/14px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#333333;
	margin:3px 0px;
	border:1px solid #707070;
	border-radius:4px;
	margin-left:6px;
		-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out
	
}
.Btn1:hover 
{
    background:#59AECD;
    border:1px solid #3D9CBF;
    color:#fff;
    	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="text-align:center;padding-left:40px;font-size:xx-large" class="auto-style1"><strong>Blog Show</strong></td>
        </tr>
         <tr><td></td><td></td></tr>
         <tr><td></td><td></td></tr>
        <tr>
            <td style="text-align:center;font-size:medium;padding-left:270px">
               <div style="text-align:center;">
               <asp:GridView runat="server" AutoGenerateColumns="False" ID="Gridview1" CellPadding="4" 
                   DataKeyNames="blog_id" ForeColor="#333333" GridLines="None" 
                   OnRowDeleting="Gridview1_RowDeleting" Width="80%" Font-Size="Large" OnRowDataBound="Gridview1_RowDataBound">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:TemplateField HeaderText="Action" HeaderStyle-ForeColor="White">
                             <ItemTemplate>                      
                                 <asp:CheckBox ID="CheckBox1" runat="server"/>
                                 <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("status") %>' />                                                   
                               </ItemTemplate>
                         </asp:TemplateField>     
                        <asp:TemplateField HeaderText = "ID" Visible = "false">
                        <ItemTemplate>
                        <asp:Label ID = "lblID" runat = "server" Text = '<%#Eval("blog_id") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText = "Name">
                        <ItemTemplate>
                        <asp:Label ID = "lblnm" runat = "server" Text = '<%#Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText = "Email">
                        <ItemTemplate>
                        <asp:Label ID = "lblml" runat = "server" Text = '<%#Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText = "Comments">
                        <ItemTemplate>
                        <asp:Label ID = "lblcmt" runat = "server" Text = '<%#Eval("Comments") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText = "Photo">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Photo") %>' Width="60px" Height="60px"/>
                        </ItemTemplate>
                        </asp:TemplateField>
                                      <asp:TemplateField>
                                          <ItemTemplate>
                                              <asp:Button ID="Button2" runat="server" Text="" Visible="false" />
                                          </ItemTemplate>

                                      </asp:TemplateField>            
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
    </div>
            </td>
        </tr>
    </table>
   <div>
 <asp:Button ID="Button1" runat="server" Text="Action" ForeColor="Black" OnClick="Button1_Click"  CssClass="Btn1" BackColor="#FF3399" Height="38px" Width="100px"/>
   </div>           
</asp:Content>

