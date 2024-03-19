using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Board_game
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        /// <summary>
        /// Shows the settings of the page (in progress)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Settings_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "";
            Theme.Visible = true;
            Sound.Visible = true;
            Settings.Visible = false;
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
        }


        /// <summary>
        /// Shows the checkers board and initiates game once user makes a move (in progress)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Checkers_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "Checkers";
            Theme.Visible = false;
            Sound.Visible = false;
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
            Image1.Visible = true;
        }
        /// <summary>
        /// Shows the chess board and initiates game once user makes a move (in progress)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Chess_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "Chess";
            Theme.Visible = false;
            Sound.Visible = false;
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
            Image1.Visible = true;
        }
        /// <summary>
        /// Shows the undecided board and initiates game once user makes a move (in progress)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Undecided_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "Undecided";
            Theme.Visible = false;
            Sound.Visible = false;
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
        }

        /// <summary>
        /// Shows theme menu
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Theme_Click(object sender, EventArgs e)
        {
            GoBack.Visible = true;
            Checkers.Visible = false;
            Chess.Visible = false;
            Undecided.Visible = false;
            StartingLabel.Visible = false;
            GameLabel.Text = "";
            Theme.Visible = false;
            Sound.Visible = false;
            Nature.Visible = true;
            Urban.Visible = true;
            SciFi.Visible = true;
        }

        /// <summary>
        /// Uploads nature background
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Nature_Click(object sender, EventArgs e)
        {
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
            Image1.Visible = false;
        }

        /// <summary>
        /// Uploads urban background
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Urban_Click(object sender, EventArgs e)
        {
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
            Image1.Visible = false;
        }

        /// <summary>
        /// Uploads scifi background
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Scifi_Click(object sender, EventArgs e)
        {
            Nature.Visible = false;
            Urban.Visible = false;
            SciFi.Visible = false;
            Image1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}