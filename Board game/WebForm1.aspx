<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Board_game.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css"/>
    <title>Board games</title>
    <script runat="server">

        protected void Page_Load(object sender, EventArgs e)
        {
            GoBack.Visible = false;
            Checkers.Visible = true;
            Chess.Visible = true;
            Undecided.Visible = true;
            StartingLabel.Visible = true;
            GameLabel.Text = "";
            Theme.Visible = false;
            Sound.Visible = false;
            Settings.Visible = true;
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
            VolumeSlider.Visible = false;
            PlayButton.Visible = false;
            Sound.Attributes.Add("onclick", "toggleVolumeSlider(); return false;");
            StopButton.Visible = false;
        }

        protected void Sound_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "";
            Theme.Visible = false;
            Sound.Visible = false;
            //Nature.Visible = false;
            //Urban.Visible = false;
            //Scifi.Visible = false;
            VolumeSlider.Visible = true;
            PlayButton.Visible = true;
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "showMusicButton", "showMusicButton();", true);
        }
        protected void Play_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "";
            Theme.Visible = false;
            Sound.Visible = false;
            //Nature.Visible = false;
            //Urban.Visible = false;
            //Scifi.Visible = false;
            VolumeSlider.Visible = true;
            PlayButton.Visible = false;
            StopButton.Visible = true;
        }
        protected void Stop_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "";
            Theme.Visible = false;
            Sound.Visible = false;
            //Nature.Visible = false;
            //Urban.Visible = false;
            //Scifi.Visible = false;
            VolumeSlider.Visible = true;
            PlayButton.Visible = true;
            StopButton.Visible = false;

        }

        protected void GoBack_Click(object sender, EventArgs e)
        {
            GoBack.Visible = false;
            Checkers.Visible = true;
            Chess.Visible = true;
            Undecided.Visible = true;
            StartingLabel.Visible = true;
            GameLabel.Text = "";
            Theme.Visible = false;
            Sound.Visible = false;
            Settings.Visible = true;
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
            VolumeSlider.Visible = false;
            PlayButton.Visible = false;
            StopButton.Visible = false;
            Image1.Visible = false;
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "hideMusicButton", "hideMusicButton();", true);
        }

        // Add other button click event handlers here
    </script>
    <script>
        function changeBackground(backgroundClass) {
            document.body.className = backgroundClass;
        }

        function natureButtonClicked() {
            changeBackground('nature');
        }

        function urbanButtonClicked() {
            changeBackground('urban');
        }

        function sciFiButtonClicked() {
            changeBackground('scifi');
        }
    </script>
    
    
</head>
<body>
    
    <audio id="backgroundMusic" loop="loop" preload="auto">
        <source src="Audio/Virginio Aiello On Piano - Van Gogh.mp3" type="audio/mp3" />
    </audio>


    
    <form id="form1" runat="server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <div>
               
                 <asp:Button class="gamebutton" ID="GoBack" runat="server" Text="Go Back" Visible="false" OnClick="GoBack_Click"/>
                 <asp:Button class="gamebutton" ID="Settings" runat="server" Text="Settings" OnClick="Settings_Click"/>
                    
            </div>

            <div>
                <asp:Label class="HeroMain" ID="StartingLabel" runat="server" Text="Choose your board game"></asp:Label>
                <asp:Label class="HeroMain" ID="GameLabel" runat="server" Text=""></asp:Label> 
            </div>
            
            <div class="container">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="20%" ImageAlign="AbsMiddle" ImageUrl="~/App_Pictures/Board.png" Width="20%" visible ="false" />
                <asp:Button ID="Theme" runat="server" class="gamebutton" OnClientClick="toggleThemeButtons()" OnClick="Theme_Click" Text="Theme" />
                <asp:Button ID="Sound" runat="server" class="gamebutton" OnClick="Sound_Click" Text="Sound" />
                <button onclick="natureButtonClicked()" id="NatureButton" style="display:none;" class="gamebutton">Nature</button>
               
                <asp:Button ID="Nature" runat="server" class="gamebutton" Text="Nature" OnClientClick="natureButtonClicked();" OnClick="Nature_Click"/>
                <asp:Button ID="Urban" runat="server" class="gamebutton" Text="Urban" OnClientClick="urbanButtonClicked();" OnClick="Urban_Click"/>
                <asp:Button ID="SciFi" runat="server" class="gamebutton" Text="SciFi" OnClientClick="sciFiButtonClicked();" OnClick="Scifi_Click"/>
                <asp:Button ID="PlayButton" runat="server" class="gamebutton" Text="Play Music" OnClientClick="playBackgroundMusic();" OnClick="Play_Click"/>
                <asp:Button ID="StopButton" runat="server" class="gamebutton" Text="Stop Music" OnClientClick="stopBackgroundMusic();" OnClick="Stop_Click"/>
                <div class="play_buttons">
                    <asp:Button class="gamebutton" ID="Chess" runat="server" Text="Chess" OnClick="Chess_Click"/>
                    <asp:Button class="gamebutton" ID="Checkers" runat="server" Text="Checkers" OnClick="Checkers_Click"/>
                    <asp:Button class="gamebutton" ID="Undecided" runat="server" Text="Undecided" OnClick="Undecided_Click"/>
                </div>
                
                <asp:UpdatePanel ID="VolumePanel" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="VolumeSlider" runat="server" >
                            <input type="range" id="volumeRange" min="0" max="100" value="50" oninput="changeVolume(this.value)" />
                        </asp:Panel>
                        
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                <script type="text/javascript">
                    function changeVolume(volume) {
                        var audio = document.getElementById('backgroundMusic');
                        audio.volume = volume / 100;
                    }
                </script>
                
            </div>
        </div>
        </ContentTemplate>
        </asp:UpdatePanel>
        
    </form>
    <script>
        function playBackgroundMusic() {
            var audio = document.getElementById('backgroundMusic');
            audio.play();
        }
    </script>
    <script>
        function stopBackgroundMusic() {
            var audio = document.getElementById('backgroundMusic');
            audio.pause();
        }
    </script>
    
</body>
</html>