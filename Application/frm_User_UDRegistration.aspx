<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frm_User_UDRegistration.aspx.cs"
    Inherits="frm_User_CDRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>User Data Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="Body_Structure/styles.css">
    <link rel="stylesheet" id="styleLink" href="Body_Structure/dist/purple/bootstrap.min.css">
    <style type="text/css">
        .auto-style1 {
            width: 15.6em;
        }
    </style>


</head>
<body style="background-size: cover; background-color: #A0E0D9;">
    <form id="form1" runat="server">
        <table border="0" style="width: 80%" align="center">
            <tr>
                <td style="background-image: url('Body_Structure/img/bg-header.jpg'); background-size: cover;">
                    <h2 class="card-header" style="color: whitesmoke">Card Regitration</h2>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <div style="white-space: pre-line;">
                        <div class="component-example">

                            <%--<div class="card border-secondary mb-3">--%>
                            <div class="card bg-light mb-3">
                                <div class="card-body">
                                    <table border="0" style="width: 92%; font-family: Verdana; font-weight: 500" align="center">

                                        <%--This is First Row(Name) --%>
                                        <tr>
                                            <td style="width: 15%; vertical-align: middle;">Full Name :
                                            </td>
                                            <td class="auto-style1">
                                                <asp:TextBox ID="txt_name" runat="server" CssClass="form-control" placeholder="Enter Applicant Name"
                                                    Width="70%"></asp:TextBox><asp:RequiredFieldValidator ID="req_name"
                                                        runat="server" ForeColor="red" Font-Size="1em" ControlToValidate="txt_name" Display="Dynamic"
                                                        SetFocusOnError="True" ErrorMessage="*" Enabled="true"></asp:RequiredFieldValidator>
                                            </td>

                                            <td style="width: 15em;">
                                                <asp:TextBox ID="txt_fname" runat="server" CssClass="form-control" placeholder="Enter Father Name"
                                                    Width="70%"></asp:TextBox><asp:RequiredFieldValidator ID="req_fname"
                                                        runat="server" ForeColor="red" Font-Size="1em" ControlToValidate="txt_fname"
                                                        Display="Dynamic" SetFocusOnError="True" ErrorMessage="*" Enabled="true"></asp:RequiredFieldValidator>
                                            </td>

                                            <td style="width: 15em;">
                                                <asp:TextBox ID="txt_sname" runat="server" CssClass="form-control" placeholder="Enter SurName"
                                                    Width="70%"></asp:TextBox><asp:RequiredFieldValidator ID="req_surname"
                                                        runat="server" ForeColor="red" Font-Size="1em" ControlToValidate="txt_sname"
                                                        Display="Dynamic" SetFocusOnError="True" ErrorMessage="*" Enabled="true"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <%--This is Second Row  : Gender--%>
                                        <tr>
                                            <td style="width: 15%; vertical-align: middle;">Gender :
                                            </td>
                                            <td class="auto-style1">
                                                <asp:DropDownList ID="ddl_gender" runat="server" Width="70%" Style="border: none; border-bottom: 2px solid rgba(0,0,0,.3);">
                                                    <asp:ListItem Selected="True">Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                    <asp:ListItem>Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td style="vertical-align: middle;">Birthdate :
                                            </td>
                                            <td class="auto-style1">
                                                <asp:TextBox ID="txt_dob" runat="server" CssClass="form-control" placeholder="eg. 21/05/1999"
                                                    Width="70%" TextMode="Date" /><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_dob" ErrorMessage="*" ForeColor="Red" Display="Dynamic" />
                                            </td>
                                        </tr>

                                        <%--This is Fourth Row  : Address    --%>
                                        <tr>
                                            <td style="text-align: left; vertical-align: middle;" colspan="2">Address :
                                            <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" CssClass="form-control"
                                                Width="80%"></asp:TextBox><asp:RequiredFieldValidator ID="req_Address"
                                                    runat="server" ForeColor="red" Font-Size="1em" ControlToValidate="txt_address"
                                                    Display="Dynamic" SetFocusOnError="True" ErrorMessage="*" Enabled="true"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="width: 15em; text-align: left;">City :
                                               <asp:TextBox ID="txt_city" runat="server" CssClass="form-control" Width="70%"></asp:TextBox><asp:RequiredFieldValidator
                                                   ID="req_city"
                                                   runat="server" ForeColor="red" Font-Size="1em" ControlToValidate="txt_city" Display="Dynamic"
                                                   SetFocusOnError="True" ErrorMessage="*" Enabled="true"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="width: 15em; text-align: left;">Pincode :
                                              <asp:TextBox ID="txt_pincode" runat="server" CssClass="form-control" Width="70%" MaxLength="6"></asp:TextBox><asp:RequiredFieldValidator
                                                  ID="req_pincode" runat="server" ForeColor="red" Font-Size="1em" ControlToValidate="txt_pincode"
                                                  Display="Dynamic" SetFocusOnError="True" ErrorMessage="*" Enabled="true"></asp:RequiredFieldValidator>

                                            </td>
                                        </tr>

                                        <%--This is Fifth Row  : Mo & Email    --%>
                                        <tr>
                                            <td class="auto-style1" style="vertical-align: middle;" colspan="2">Mobile Number :
                                                <asp:TextBox ID="txt_mobile" runat="server" CssClass="form-control" placeholder="+91 12345 67890"
                                                    Width="80%" MaxLength="10"></asp:TextBox><asp:RequiredFieldValidator ID="req_mobile" Enabled="true"
                                                        runat="server" ForeColor="red" Font-Size="1em" ControlToValidate="txt_mobile"
                                                        Display="Dynamic" SetFocusOnError="True" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txt_mobile" Display="Dynamic" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                            </td>
                                            <td style="vertical-align: middle;" class="auto-style1" colspan="2">Email :
                                                <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="example@gmail.com"
                                                    Width="85%" TextMode="Email" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_email" ErrorMessage="*" ForeColor="Red" Display="Dynamic" />
                                            </td>
                                        </tr>
                                        <tr>

                                            <td style="vertical-align: top;">Candidate's Image :</td>
                                            <td style="vertical-align: middle; border-right: 2px solid" colspan="2" align="center">
                                                <asp:FileUpload ID="fup_img" runat="server" />
                                                <asp:Button ID="btn_preview" runat="server" Text="Preview" OnClick="btn_preview_Click" />
                                            </td>
                                            <td style="vertical-align: top;" align="center">
                                                <img id="imgHTML" runat="server" style="width: 45%" />
                                            </td>
                                        </tr>
                                        <%--This is sixth Row  : Buttons    --%>
                                        <tr>
                                            <td style="vertical-align: middle;" align="center" colspan="4">
                                                <table border="0" style="width:80%">
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="60%" BorderWidth="0.7em"
                                                                CssClass="btn btn-info" OnClick="btn_submit_Click" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="btn_reset" runat="server" Text="Reset" Width="60%" BorderWidth="0.7em"
                                                                CssClass="btn btn-warning" OnClick="btn_reset_Click" />
                                                        </td>
                                                        <%--<td>
                                                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-danger" runat="server" PostBackUrl="~/frm_User_Dashboard.aspx">Cancel</asp:LinkButton>
                                                            <asp:Button ID="btn_Cancel"  runat="server" Text="Cancel" Width="50%" BorderWidth="0.7em"
                                                                CssClass="btn btn-danger" OnClick="btn_Cancel_Click" />
                                                        </td>--%>
                                                    </tr>
                                                </table>

                                            </td>
                                            <%--<td style="width: 15em;" colspan="2" align="center">
                                                
                                            </td>--%>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
