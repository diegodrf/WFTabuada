using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WFTabuada
{
    public partial class TabuadaPage : System.Web.UI.Page
    {
        private Table tbResult;

        public TabuadaPage()
        {
            tbResult = new Table();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            for(var i = 0; i <= 10; i++)
            {
                DdBaseNumber.Items.Add(new ListItem(i.ToString()));
            }
            
        }

        protected void BtSubmitBaseNumber_Click(object sender, EventArgs e)
        {
            //LbResult.Items.Clear();
            //for(var n = 0; n <= 10; n++)
            //{
            //    var baseNumber = int.Parse(DdBaseNumber.SelectedValue);
            //    var text = $"{baseNumber} x {n} = {baseNumber * n}";
            //    LbResult.Items.Add(new ListItem(text));
            //}

            tbResult.Rows.Clear();            

            for (var n = 0; n <= 10; n++)
            {
                var row = new TableRow();
                
                var factorA = new TableCell() { Text = DdBaseNumber.SelectedValue };
                row.Cells.Add(factorA);
                
                var multiplySignal = new TableCell() { Text = "X" };
                row.Cells.Add(multiplySignal);

                var factorB = new TableCell() { Text = n.ToString() };
                row.Cells.Add(factorB);

                var equalSignal = new TableCell() { Text = "=" };
                row.Cells.Add(equalSignal);

                var result = int.Parse(DdBaseNumber.SelectedValue) * n;
                var product = new TableCell() { Text = result.ToString() };
                row.Cells.Add(product);

                tbResult.Rows.Add(row);
            }

            PhPlaceHolder.Controls.Add(tbResult);
        }
    }
}