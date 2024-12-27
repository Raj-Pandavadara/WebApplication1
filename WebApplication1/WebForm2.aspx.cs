using System;
using System.Web.UI;

namespace WebApplication1
{
    public partial class TemperatureConversion : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Logic for page load
        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            // Retrieve input value
            if (double.TryParse(txtTemperature.Text.Trim(), out double temperature))
            {
                string selectedUnit = ddlUnit.SelectedValue;
                double convertedTemp;
                string resultMessage;

                // Perform conversion
                if (selectedUnit == "CtoF")
                {
                    convertedTemp = (temperature * 9 / 5) + 32;
                    resultMessage = $"{temperature}°C is {convertedTemp:F2}°F.";
                }
                else if (selectedUnit == "FtoC")
                {
                    convertedTemp = (temperature - 32) * 5 / 9;
                    resultMessage = $"{temperature}°F is {convertedTemp:F2}°C.";
                }
                else
                {
                    resultMessage = "Please select a valid unit.";
                }

                lblResult.Text = resultMessage;
            }
            else
            {
                lblResult.Text = "Please enter a valid temperature value.";
            }
        }
    }
}
