using System;

namespace AlgebraicOperationsWebForm
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve user inputs
                double num1 = Convert.ToDouble(txtNum1.Text);
                double num2 = Convert.ToDouble(txtNum2.Text);
                string operation = ddlOperation.SelectedValue;

                // Perform the operation
                double result = PerformOperation(num1, num2, operation);

                // Display the result
                lblResult.Text = $"Result: {result}";
            }
            catch (Exception ex)
            {
                lblResult.Text = $"Error: {ex.Message}";
            }
        }

        private double PerformOperation(double num1, double num2, string operation)
        {
            switch (operation)
            {
                case "Add":
                    return num1 + num2;
                case "Subtract":
                    return num1 - num2;
                case "Multiply":
                    return num1 * num2;
                case "Divide":
                    if (num2 == 0)
                        throw new DivideByZeroException("Division by zero is not allowed.");
                    return num1 / num2;
                default:
                    throw new InvalidOperationException("Invalid operation selected.");
            }
        }
    }
}
