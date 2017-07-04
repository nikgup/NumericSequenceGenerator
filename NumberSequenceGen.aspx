<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumberSequenceGen.aspx.cs" Inherits="NumberSequenceGenerator.NumberSequenceGen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .label {
            margin-top:15px;
            margin-left:15px;
            font-family:Arial;
            font-size:13px;
        }
    </style>
    <title></title>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:ValidationSummary ID="valSummury" runat="server" ShowMessageBox="true" ShowSummary="false" DisplayMode="BulletList" />
            </div>
            <div style="margin-left:15px; margin-top:10px; font-family:Arial; font-size:13px;">
                <asp:Label ID="lblNumber" Text="Enter Any Number" runat="server"></asp:Label>
                <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                <asp:Button runat="server" Text="Go" ID="btnGo" OnClick="btnGo_Click" style="background-color:black; font-family:Arial; font-weight:bold; color:white; border-radius:5px; height:25px; width:45px; " />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNumber" ErrorMessage="Please Enter any number" Display="None">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer"
                    ControlToValidate="txtNumber" ErrorMessage="Please Enter Only Interger Number" Display="None" />
            </div>
            <div class="label">
                <asp:Label ID="lblAllNumber" runat="server" />
            </div>
            <div class="label">
                <asp:Label ID="lblOdd" runat="server" /></div>
            <div class="label">
                <asp:Label ID="lblEven" runat="server" />
            </div>
            <div class="label">
                <asp:Label ID="lblDevisor" runat="server" />
            </div>
            <div class="label">
                <asp:Label ID="lblFibbonic" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>

