<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Blogshow.aspx.cs" Inherits="Admin_Blogshow" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" align="center" id="t1">
        <tr>
            <td colspan="4" style="padding-right:80px;font-size:xx-large;color:#FF0066;" class="auto-style1"><strong>Blog Display</strong></td>
        </tr>
         <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
                <tr><td></td><td></td></tr>
<tr>
            <td width="20%">
                &nbsp;</td>
            <td align="right" width="20%" style="padding-right:20px;font-size:medium;color:black;">
                Date:</td>
            <td width="20%" style="font-size:medium;">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input1" Width="100%"></asp:TextBox>
                
                <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox1">
                </cc1:CalendarExtender>
                
            </td>            
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="padding-right:20px;font-size:medium;color:black;" align="right">
               Month: 
               </td>
            <td style="font-size:medium;">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input1" 
                    Width="100%">
                <asp:ListItem Value="00">--- Select Month ---</asp:ListItem>
                <asp:ListItem Value="01">Jan</asp:ListItem>
                <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">March</asp:ListItem>
                <asp:ListItem Value="04">Aprl</asp:ListItem>
                <asp:ListItem Value="05">May</asp:ListItem>
               <asp:ListItem Value="06">Jun</asp:ListItem>
                <asp:ListItem Value="07">July</asp:ListItem>
                <asp:ListItem Value="08">Agust</asp:ListItem>
                <asp:ListItem Value="09">Sept</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>

                </asp:DropDownList>
            </td>
            <td  style="padding-right:20px;font-size:medium;color:black;" align="right">
                Year:</td>
            <td style="font-size:medium;">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="input1"  Width="50%">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" CssClass="Btn" OnClick="Button1_Click"
                    style="font-weight: 700" Text="Submit" BackColor="#FF0066" Height="33px" Width="80px" />
                  <asp:Button ID="Button2" runat="server" CssClass="Btn" OnClick="Button2_Click"
                    style="font-weight: 700" Text="Reset" BackColor="#FF0066" Height="33px" Width="80px" />
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
      <tr>
            <td align="center" colspan="4" >
                 <asp:GridView runat="server" AutoGenerateColumns="False" 
            GridLines="None" ID="GridView1" Width="80%" DataKeyNames="blogid" 
            onrowdeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333" Font-Size="Large">
                     <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Header_name" HeaderText="Header name" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Description" HeaderText="Description" >

                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                         <asp:Image ID="Image1" runat="server" Width="120px" Height="120px" ImageUrl='<%#Eval("Photo")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                       
                         <asp:BoundField DataField="Date" HeaderText="Date" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
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
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
     </table>
</asp:Content>

