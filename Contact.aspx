<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Admin_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #FF0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="text-align:center;padding-left:70px;font-size:xx-large" class="auto-style1"><strong>Contact Show<br />
                </strong></td>
        </tr>
        <tr><td></td><td></td></tr>
         <tr><td></td><td></td></tr>
        <tr>
            <td style="text-align:center;font-size:medium;padding-left:250px;">
              <div style="text-align:center;">
               <asp:GridView runat="server" AutoGenerateColumns="False" ID="Gridview1" CellPadding="4" 
                   DataKeyNames="cntct_id" ForeColor="#333333" GridLines="None" 
                   OnRowDeleting="Gridview1_RowDeleting" Font-Size="Large" Width="80%">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                        <asp:BoundField DataField="Patientnm" HeaderText="Patient name" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email Id" >

                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>

                        <asp:BoundField DataField="Phoneno" HeaderText="Phone No" >
                         <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                         <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                       <asp:BoundField DataField="Department" HeaderText="Department" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Gender" HeaderText="Gender" >

                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>

                        <asp:BoundField DataField="Time" HeaderText="Time" >
                         <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
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
    </div>
            </td>
        </tr>
    </table>     
    
</asp:Content>

