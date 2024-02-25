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
            position: fixed;
            top: 5%;
            left: 55%;
            transform: translate(-50%, -50%);
            font-size: calc(2vw + 2vh);
        }

        #GameLabel {
            position: fixed;
            top: 5%;
            left: 55%;
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
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {        
            margin-top: 0px;
            left: 57%;
            top: -7px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            left: 52%;
            top: 9200%;
        }
        .auto-style6 {
            height: 23px;
            width: 905px;
        }
        .auto-style7 {
            width: 905px;
        }
    </style>
</head>
<body style="left: 0px; top: 0px">
    <form id="form1" runat="server">
        <asp:Label ID="StartingLabel" runat="server" Text="Choose your board game" CssClass="auto-style5"></asp:Label>
        <asp:Label ID="GameLabel" runat="server" Text="" CssClass="auto-style3"></asp:Label> 
        <asp:Button ID="GoBack" runat="server" Text="Go Back" Visible="false" OnClick="GoBack_Click"/>
        <asp:Button ID="Settings" runat="server" Text="Settings" OnClick="Settings_Click"/>
        <div class="button-container">          
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style6">
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>          
            <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="1000px" ImageAlign="Middle" ImageUrl="~/App_Pictures/Board.png" Width="1000px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
            <asp:Button ID="Chess" CssClass="button" runat="server" Text="Chess" OnClick="Chess_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Checkers" CssClass="button" runat="server" Text="Checkers" OnClick="Checkers_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Undecided" CssClass="button" runat="server" Text="Undecided" OnClick="Undecided_Click"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
    </form>
</body>
</html>