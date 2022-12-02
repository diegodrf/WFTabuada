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
            LbResult.Items.Clear();
            for(var n = 0; n <= 10; n++)
            {
                var baseNumber = int.Parse(DdBaseNumber.SelectedValue);
                var text = $"{baseNumber} x {n} = {baseNumber * n}";
                LbResult.Items.Add(new ListItem(text));
            }
        }
    }
}