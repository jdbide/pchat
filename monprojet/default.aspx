<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="monprojet._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 147px;
            width: 714px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClientClick="test" Text="Test Powershell" Width="133px" OnClick="Button1_Click" BackColor="Red" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            Résultat Commande :</p>
        <p>
            <asp:TextBox ID="idtxtbox" runat="server" Width="520px"></asp:TextBox>
        </p>
        <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged1"></asp:ListBox>
    </form>
</body>
</html>
