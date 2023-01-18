<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PositionDetails.aspx.cs" Inherits="WeekTest.PositionDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.3.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    </head>
    <body class="mx-5">
        <form id="form1" runat="server">
            <div class="container">
                <div class="row mt-5">
                    <div class="col-md-6 offset-3 border rounded shadow-sm">
                        <div class="row p-2">
                            <div class="col-md-7">
                                <div class="display-6 mb-2">Create New Position</div>
                                <div class="mb-2">
                                    Position Code<br /> 
                                    <asp:TextBox ID="TxtPositioncode" runat="server"></asp:TextBox><br />
                                    <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
                                    ForeColor="Red" ErrorMessage="Please enter Position Code"
                                    ID="RfvPositioncode" ControlToValidate="TxtPositioncode" runat="server" />
                                </div>
                                <div class="mb-2">
                                     Description<br />
                                     <asp:TextBox ID="TextDescription" runat="server"></asp:TextBox> <br />
                                     <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
                                     ForeColor="Red" ErrorMessage="Please enter Description"
                                     ID="RfvTextDescription" ControlToValidate="TextDescription" runat="server" />
                                </div>
                                <div class="mb-2">
                                    Year<br />
                                    <asp:TextBox ID="TxtYear" runat="server"></asp:TextBox> <br />
                                    <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
                                    ForeColor="Red" ErrorMessage="Please Select a Year"
                                    ID="RfvTxtYear" ControlToValidate="TxtYear" runat="server" />
                                </div>
                                <div class="mb-2">
                                     BudgetedStrength<br />
                                     <asp:TextBox ID="TxtBudgetedStrength" runat="server"></asp:TextBox><br />
                                     <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
                                     ForeColor="Red" ErrorMessage="Please enter Budgeted Strength"
                                     ID="RfvTxtBudgetedStrength" ControlToValidate="TxtBudgetedStrength" runat="server" />
                                </div>
                                <div class="mb-2">
                                    CurrentStrength<br />
                                    <asp:TextBox ID="TxtCurrentStrength" runat="server"></asp:TextBox><br />
                                    <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" 
                                    ForeColor="Red" ErrorMessage="Please enter Current Strength"
                                    ID="RfvTxtCurrentStrength" ControlToValidate="TxtCurrentStrength" runat="server" />
                                </div>
                                <div>
                                    <asp:Button ID="Button1" runat="server" Text="Add New &nbsp;&nbsp;" class="btn btn-primary" OnClick="Button1_Click"/>
                                    <asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-danger" OnClick="Button2_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
