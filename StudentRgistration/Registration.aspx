<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StudentRgistration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <style type="text/css">
        .auto-style1{
            width:auto;
            margin-left:auto;
            margin-right:auto;
        }
       
        .auto-style2 {
            background-color: #0000CC;
        }
        .auto-style3 {
            color: #FFFFFF;
        }
       
        .auto-style4 {
            color: #993300;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <table class="auto-style1">
                <tr>
                    <th colspan="2" class="auto-style2" ><strong><span ><span class="auto-style3">Registration</span> <span class="auto-style3">Form</span></span></strong></th>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >Id<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:TextBox ID="txtid" runat="server" Width="70px" CssClass="auto-style6"></asp:TextBox>
                        &nbsp;<asp:Button ID="btnsrch" runat="server" Text="Search" BackColor="Yellow" ForeColor="#660033" OnClick="btnsrch_Click" ValidationGroup="srch" />
                        &nbsp;<asp:Button ID="btnupdt" runat="server" Text="Update" BackColor="Yellow" OnClick="btnupdt_Click" ValidationGroup="srch,save" />
                        &nbsp;<asp:Button ID="btndlt" runat="server"  Text="Delete" BackColor="Yellow" ForeColor="#CC0000" OnClick="btndlt_Click" OnClientClick="return confirm ('Are you sure to Delete?')" ValidationGroup="srch" />
                    </td>
                    <td  >
                        <asp:RequiredFieldValidator ID="rfvid" runat="server" ErrorMessage="Please Enter Id" ControlToValidate="txtid" ForeColor="#990000" ValidationGroup="srch"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto">First Name<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:TextBox ID="txtfn" runat="server" CssClass="auto-style6" Width="300px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="rfvid0" runat="server" ErrorMessage="Please Enter First Name" ControlToValidate="txtfn" ForeColor="#990000" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >Last Name<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto">
                        <asp:TextBox ID="txtln" runat="server" CssClass="auto-style6" Width="300px"></asp:TextBox>
                    </td>
                    <td style="font-size: inherit; background-color: #FFFFFF; border-style: none; padding: inherit; margin: auto" >
                        <asp:RequiredFieldValidator ID="rfvid1" runat="server" ErrorMessage="Please Enter Last Name" ControlToValidate="txtln" ForeColor="#990000" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >Gender<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:RadioButtonList ID="rbgen" runat="server" RepeatDirection="Horizontal" CssClass="auto-style6" Width="304px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem Value="Unknown"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="rfvid2" runat="server" ErrorMessage="Please Select Gender" ControlToValidate="rbgen" ForeColor="#990000" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >Dob<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:TextBox ID="txtdob" runat="server" CssClass="auto-style6" Width="300px" ></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="rfvid3" runat="server" ErrorMessage="Please Enter Date Of Birth" ControlToValidate="txtdob" ForeColor="#993300" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >Course<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:DropDownList ID="ddlcrs" runat="server" ValidationGroup="save" CssClass="auto-style27" Width="300px" >
                            <asp:ListItem>--Select Course--</asp:ListItem>
                            <asp:ListItem>Sql</asp:ListItem>
                            <asp:ListItem>Java</asp:ListItem>
                            <asp:ListItem>Python</asp:ListItem>
                            <asp:ListItem>Dot Net</asp:ListItem>
                            <asp:ListItem>Php</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="rfvid4" runat="server" ErrorMessage="Please Select Course" ControlToValidate="ddlcrs" ForeColor="#990000" ValidationGroup="save" InitialValue="--Select Course--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >Address<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:TextBox ID="txtadrs" runat="server" CssClass="auto-style6" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvid5" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="txtadrs" ForeColor="#990000" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >Mobile No<span class="auto-style4">*</span></td>
                    <td style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:TextBox ID="txtmno" runat="server" CssClass="auto-style6" Width="300px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="rfvid6" runat="server" ErrorMessage="Please Enter Mobile No" ControlToValidate="txtmno" ForeColor="#990000" ValidationGroup="save"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-size: medium; background-color: #FFFFCC; border-style: ridge; padding: 4px; margin: auto" >
                        <asp:Button ID="btninsrt" runat="server" BackColor="Yellow" ForeColor="#003300" Text="To Insert Click Here" OnClick="btninsrt_Click" />
&nbsp;
                        <asp:Button ID="btnsave" runat="server" BackColor="Yellow" Text="Save" OnClick="btnsave_Click" ValidationGroup="save" />
&nbsp;
                        <asp:Button ID="btncncl" runat="server" BackColor="Yellow" ForeColor="#993333" Text="Cancel" OnClick="btncncl_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div >
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SDCS %>" SelectCommand="SELECT * FROM [StudentDetails]"></asp:SqlDataSource>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" align="center" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </form>
</body>
</html>
