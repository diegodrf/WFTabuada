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

        private void LoadNumbers()
        {
            for (var i = 0; i <= 10; i++)
            {
                DdBaseNumber.Items.Add(new ListItem(i.ToString()));
            }
        }

        private void LoadCalendars()
        {
            CalendCurrentDate.SelectedDate = DateTime.Today;
            CalendCurrentDate.VisibleDate = CalendCurrentDate.SelectedDate;

            CalendBirthDate.SelectedDate = new DateTime(1989, 12, 1);
            CalendBirthDate.VisibleDate = CalendBirthDate.SelectedDate;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadNumbers();
                LoadCalendars();
                DefaultMultiview.ActiveViewIndex = 0;
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

        protected void SubmitLifeTime_Click(object sender, EventArgs e)
        {
            LbResultMessage.Text = string.Empty;
            var lifeTime = CalendCurrentDate.SelectedDate.Subtract(CalendBirthDate.SelectedDate);
            LbResultMessage.Text = $"Você tem {lifeTime.Days} dias de vida.";
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void ActionFromView1ToView2_Click(object sender, EventArgs e)
        {
            DefaultMultiview.ActiveViewIndex = 1;
        }

        protected void ActionFromView2ToView1_Click(object sender, EventArgs e)
        {
            DefaultMultiview.ActiveViewIndex = 0;
        }
    }
}