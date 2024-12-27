using System;

namespace WelcomeApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No specific logic required on initial page load
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            if (!string.IsNullOrEmpty(name))
            {
                lblWelcome.Text = $"Welcome, {name}!";
            }
            else
            {
                lblWelcome.Text = "Please enter a name.";
            }
        }
    }
}
