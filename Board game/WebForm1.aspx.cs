using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Board_game
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Shows the settings of the page (in progress)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Settings_Click(object sender, EventArgs e)
        {
            
        }
        /// <summary>
        /// Returns user to starting page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GoBack_Click(object sender, EventArgs e)
        {
            GoBack.Visible= false;
            Checkers.Visible = true;
            Chess.Visible = true;
            Undecided.Visible = true;
            StartingLabel.Visible = true;
            GameLabel.Text = "";
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}