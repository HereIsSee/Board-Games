<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Board_game.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css"/>
    <title>Board games</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <asp:Button class="gamebutton" ID="GoBack" runat="server" Text="Go Back" Visible="false" OnClick="GoBack_Click"/>
                <asp:Button class="gamebutton" ID="Settings" runat="server" Text="Settings" OnClick="Settings_Click"/>
            </div>

            <div>
                <asp:Label class="HeroMain" ID="StartingLabel" runat="server" Text="Choose your board game"></asp:Label>
                <asp:Label class="HeroMain" ID="GameLabel" runat="server" Text=""></asp:Label> 
            </div>
            
            <div class="container ">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="1000px" ImageAlign="Middle" ImageUrl="~/App_Pictures/Board.png" Width="1000px" />
                <div class="play_buttons">
                    <asp:Button class="gamebutton" ID="Chess" runat="server" Text="Chess" OnClick="Chess_Click"/>
                    <asp:Button class="gamebutton" ID="Checkers" runat="server" Text="Checkers" OnClick="Checkers_Click"/>
                    <asp:Button class="gamebutton" ID="Undecided" runat="server" Text="Undecided" OnClick="Undecided_Click"/>
                </div>
            </div>
        </div>
        
        
    </form>
</body>
</html>