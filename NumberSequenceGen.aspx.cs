using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NumberSequenceGenerator
{
    public partial class NumberSequenceGen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            lblAllNumber.Text = "";
            lblDevisor.Text = "";
            lblEven.Text = "";
            lblFibbonic.Text = "";
            lblOdd.Text = "";
            int val = Convert.ToInt32(txtNumber.Text);
            EvenOddNumbers(val);
            AllNumberSeq(val);
            OtherNumberSeq(val);
            string fibbonic = "";
            
            for (int i = 0; i < val; i++)
            {
                if(fibbonic == "")
                    fibbonic = Fibonacci(i).ToString();
                else
                fibbonic = fibbonic+", " + Fibonacci(i).ToString();
            }
            lblFibbonic.Text = "<b>Fibonacci Series are:</b> " + fibbonic;
        }

        #region Private Methods

        private void EvenOddNumbers(int num)
        {
            string oddNumbers = "";
            string evenNumbers = "";
            // For Even Odd numbers..
            for (int i = 0; i <= num; i++)
            {
                if (i % 2 == 0)
                {
                    if (evenNumbers == "")
                        evenNumbers = i.ToString();
                    else
                        evenNumbers = evenNumbers + ", " + i.ToString();
                }
                else
                {
                    if (oddNumbers == "")
                        oddNumbers = i.ToString();
                    else
                        oddNumbers = oddNumbers + ", " + i.ToString();
                }
            }
            lblEven.Text = "<b>All Even Numbers are:</b> " + evenNumbers;
            lblOdd.Text = "<b>All Odd Numbers are:</b> " + oddNumbers;
        }

        private void AllNumberSeq(int num)
        {
            string allNumbers = "";
            for (int i = 0; i <= num; i++)
            {
                if (allNumbers == "")
                { allNumbers = i.ToString(); }
                else
                    allNumbers = allNumbers + ", " + i.ToString();
            }
            lblAllNumber.Text = "<b>All Numeric Numbers are:</b> " + allNumbers;
        }

        private void OtherNumberSeq(int num)
        {
            string multiplenumbers = "";
            for (int i = 0; i <= num; i++)
            {
                if (multiplenumbers == "")
                { multiplenumbers = i.ToString(); }
                else if (i % 15 == 0)
                { multiplenumbers = multiplenumbers + ", Z"; }
                else if (i % 3 == 0)
                { multiplenumbers = multiplenumbers + ",  C"; }
                else if (i % 5 == 0)
                { multiplenumbers = multiplenumbers + ", E"; }

                else
                    multiplenumbers = multiplenumbers + "," + i.ToString();
            }
            lblDevisor.Text = "<b>All Numbers except when A number is a multiple of 3 output C, and when, " +
                "A number is a multiple of 5 output E,<br/> and when,"+ " A number is a multiple of both 3 and 5 output Z "+
            "are: </b> <br/>" + multiplenumbers;
        }

        private long Fibonacci(int num)
        {

            long a = 0;
            long b = 1;
            // In N steps compute Fibonacci sequence iteratively.
            for (int i = 0; i < num; i++)
            {
                long temp = a;
                a = b;
                b = temp + b;
            }
            return a;
        }

        #endregion

    }
}