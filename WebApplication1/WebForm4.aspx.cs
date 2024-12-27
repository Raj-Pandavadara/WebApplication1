using System;

namespace AutoPostBackDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void ddlColors_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedColor = ddlColors.SelectedValue;
            lblResult.Text = $"You selected the color: {selectedColor}";
        }

        protected void txtInput_TextChanged(object sender, EventArgs e)
        {
            string enteredText = txtInput.Text;
            lblResult.Text = $"You entered: {enteredText}";
        }

        protected void chkAgree_CheckedChanged(object sender, EventArgs e)
        {
            bool isChecked = chkAgree.Checked;
            lblResult.Text = isChecked ? "You agreed!" : "You did not agree.";
        }
    }
}
