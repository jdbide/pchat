<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="monprojet.confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Room Settings</title>
    <meta http-equiv="Refresh" content="5;url=manageroom.aspx" />
    <style type="text/css">

        .auto-style3 {
            width: 97px;
        }
        </style>


    

</head>
<body>
   
    <div style="width: 100%;">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div style="background-color: #E8E8E8; width: 85%;  margin-right: auto; margin-left: auto;">
    
        <div style="width: 100%; background-image: url('bnp-logo-bar.png'); background-repeat: repeat; height: 50px;">
            <br />
            <br />
            <br />
        </div>
    
        <div style="border-radius: 20px; height: 119px; background-color: #026C30; width: 80%; margin-left: auto;margin-right: auto; text-align: center;">
        <p style="font-size: x-large; font-weight: bold; margin-left: 80px;">&nbsp;</p>
            <p style="font-size: x-large; font-weight: bold; color: #FFFFFF;">Persistent Chat Room</p>
        </div>
    
        <br />
        <br />
        <hr style="width: 80%" />
        <br />
                <asp:Menu ID="Menu1" runat="server" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Orientation="Horizontal" RenderingMode="List" StaticSubMenuIndent="10px">
   
            <DynamicHoverStyle BackColor="#339966" />
   
            <Items>
                <asp:MenuItem NavigateUrl="~/manageroom.aspx" Text="My room Informations" Value="My room Informations"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/settings.aspx" Text="Settings" Value="Settings"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="White" ForeColor="#339966" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" BackColor="#026C30" />
            <StaticSelectedStyle BackColor="White" />
        </asp:Menu>
        <br />
        <div style="width: 60%;  border-radius: 20px; margin-right: auto; margin-left: auto;margin-top: 0px; background-color: #FFFFFF;" >
                            <div style=" text-align:center" >
            <h2>Changes saved</h2>
                    </div>
        
            <div style="border-radius: 20px;border-color: #026C30; width:80%; border-style: solid;  margin-right: auto; margin-left: auto; background-color: #FFFFFF;" >
                                <br />
                    <br />

                <table style="width: 100%;margin-left:2%;">

                    <tr>
                        <td style="font-weight: bold" class="auto-style3"><asp:Image ID="Image1" runat="server" Height="85px" ImageUrl="~/ok.jpg" />
                        </td>
                        <td>Your changes has been saved. You will soon receive an email to summerise your chat room status.</td>
                       
                    </tr>
            
                </table>


                <p >You will now be redirected to the information page.</p>
                <div style="text-align:center;">
                <p >
                    &nbsp;</p>
                <p >
                    
                    &nbsp; &nbsp;</p>
                    </div>
                 
                      
           </div>
       
   
       
            <br />
        </div>
        
        
        <br />


    
    </div>
    </form>
    </div>
</body>
</html>


