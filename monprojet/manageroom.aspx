<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageroom.aspx.cs" Inherits="monprojet.manageroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Manage room</title>
    <style type="text/css">
        #Submit1 {
            margin-left: 397px;
        }
        #Text1 {
            width: 490px;
        }
        #Radio1 {
            width: 19px;
        }
        
        #mytable{
            margin-left: 10%;
            margin-right: 10%;
        }
        .auto-style1 {
            width: 80%;
        }
        </style>

<script type="text/javascript" src="<%# ResolveUrl("~/javascript/script.js") %>"></script>
    

</head>
<body>
   
    <div style="width: 100%; background-color: #C0C0C0;">
    <form id="form1" runat="server">
        <asp:UpdatePanel runat="server" id="UpdatePanel1" updatemode="Conditional">
           
            <ContentTemplate>
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div style="border-style: solid; border-width: 1px; background-color: #E8E8E8; margin-right: auto; margin-left: auto;" class="auto-style1">
    
        <div style="width: 100%; background-image: url('cib.png');  height: 80px; background-repeat: no-repeat; background-color: #FFFFFF;">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Welcome
            <asp:Label ID="username" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        &nbsp;!</div>
    
        <div style="border-radius: 20px; height: 119px; background-color: #026C30;  margin-left: auto;margin-right: auto; text-align: center;">
        <p style="font-size: x-large; font-weight: bold; margin-left: 80px;">&nbsp;</p>
            <p style="font-size: x-large; font-weight: bold; color: #FFFFFF;">Persistent Chat Room Admin Panel</p>
        </div>
    
        <br />
        <br />
        <hr style="width: 80%" />
        <br />
       
        <asp:Menu ID="Menu1" runat="server" BackColor="White" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Orientation="Horizontal" RenderingMode="List" StaticSubMenuIndent="10px">
   
            <DynamicHoverStyle BackColor="#339966" />
   
            <Items>
                <asp:MenuItem NavigateUrl="~/manageroom.aspx" Text="Display room information" Value="My room Informations"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/settings.aspx" Text="Settings" Value="Settings"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="White" ForeColor="#339966" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" BackColor="#026C30" />
            <StaticSelectedStyle BackColor="White" />
        </asp:Menu>
        <br />
        <div style="width: 60%;  border-radius: 20px; margin-right: auto; margin-left: auto;margin-top: 0px; background-color: #FFFFFF;" >
                            <div style=" text-align:center" >
            <h2>&nbsp;Chat Room Informations</h2>
                    </div>
        
            <div style="border-radius: 20px;border-color: #026C30; width:70%; border-style: solid;  margin-right: auto; margin-left: auto; background-color: #FFFFFF;" >
            <p style="font-weight: bold">&nbsp;&nbsp;&nbsp;Room Name :</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Choose a unique name for this room.</p>
                <p style="margin-left: 2px">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 23px" Width="80%"></asp:TextBox>

                </p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Room Manager</p>
                <p style="margin-left: 2px">
                    <asp:TextBox ID="roommanager" runat="server" style="margin-left: 23px" Width="80%"></asp:TextBox>

                </p>
                <p style="font-weight: bold">
                    &nbsp;&nbsp; &nbsp;Expiration Date :</p>
                <p style="margin-left: 80px;">

                        Year:<asp:DropDownList ID="ddlYear" runat="server" onchange = "PopulateDays()" />
                        Month:<asp:DropDownList ID="ddlMonth" runat="server" onchange = "PopulateDays()" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" />
                        Day:<asp:DropDownList ID="ddlDay" runat="server" />
<asp:CustomValidator ID="Validator" runat="server" ErrorMessage="* Required" ForeColor="red"
ClientValidationFunction = "Validate" />

                </p>



                <p style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp; Description :</p>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Describe what the room is for.</p>
            <p>
                        <asp:TextBox ID="TextBox2" runat="server" Width="80%" Height="60px" MaxLength="256" style="margin-left: 22px; margin-bottom: 1px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    </p>
                    <p style="font-weight: bold">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        Members :</p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Members that can access the room.</p>
                






                 <asp:ListBox ID="ListBox1" runat="server" Height="98px" Width="80%" style="margin-left: 22px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                       &nbsp;&nbsp;
                        <asp:ImageButton ID="plus" AutoPostBack="true" runat="server" Height="16px" ImageUrl="~/plus.jpg" Width="17px" OnClick="plus_Click" />
                <asp:ImageButton ID="moins" runat="server" Height="17px" ImageUrl="~/moins.png" Width="18px"  OnClick = "moins_Click" OnClientClick = "Confirm()" />                 
                 <br />
                 <br />
                 &nbsp;     
                
                <asp:Label ID="uidlabel_" runat="server" Text="user's uid to add :"></asp:Label>
                <asp:TextBox ID="uid" runat="server" style="margin-left: 23px" Width="25%"></asp:TextBox>
                 <asp:Button runat="server" id="addbutton"  text="Add" OnClick="addbutton_Click" />
                
    
            
                   

                <br />
                <br />
                <asp:CheckBox ID="checkboxinvites" runat="server" Checked="True" EnableViewState="False" Text="Send notifications to new members" /><br />
                <br />
                
    
            
                   

            <div style="text-align:center;">
                
                    

                        <asp:Button ID="validatebutton" runat="server" Text="Save" OnClick="validatebutton_Click" OnClientClick="toRedirect()" />          
                        <asp:Button ID="modifybutton" runat="server" Text="Modify" OnClick="modifybutton_Click" ForeColor="#339966" />
              
                        
                
                
                    <br />
                    <br />
                    
            </div>     
                
                
                      
           </div>
       
   
       
            <br />
        </div>
        
        
        <br />


    
    </div>
         </ContentTemplate>
                    </asp:UpdatePanel>   
    </form>
    </div>
</body>
</html>

