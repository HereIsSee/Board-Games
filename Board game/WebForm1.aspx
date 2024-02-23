<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Board_game.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Board games</title>
    <style>
        body {
            overflow: hidden;
            position: relative;
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .button-container .button {
            margin: 0 10px;
        }

        #StartingLabel {
            position: absolute;
            top: 25%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: calc(2vw + 2vh);
        }

        #GameLabel {
            position: absolute;
            top: 30px;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: calc(2vw + 2vh);

        }

        #GoBack {
            position: fixed;
            top: 10px;
            left: 10px;
        }

        #Settings {
            position: fixed;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="StartingLabel" runat="server" Text="Choose your board game"></asp:Label>
        <asp:Label ID="GameLabel" runat="server" Text=""></asp:Label> 
        <asp:Button ID="GoBack" runat="server" Text="Go Back" Visible="false" OnClick="GoBack_Click"/>
        <asp:Button ID="Settings" runat="server" Text="Settings" OnClick="Settings_Click"/>
        <div class="button-container">
            <asp:Button ID="Checkers" CssClass="button" runat="server" Text="Checkers" OnClick="Checkers_Click"/>
            <asp:Button ID="Chess" CssClass="button" runat="server" Text="Chess" OnClick="Chess_Click"/>
            <asp:Button ID="Undecided" CssClass="button" runat="server" Text="Undecided" OnClick="Undecided_Click"/>
        </div>
    </form>
</body>
</html>