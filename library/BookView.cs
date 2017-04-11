using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace library
{
    public partial class BookView : Form
    {
        public BookView()
        {
            InitializeComponent();
        }

        private void BookView_Load(object sender, EventArgs e)
        {

        }

        private void listView1_DoubleClick(object sender, EventArgs e)
        {
            ListViewItem targetItem = listView1.SelectedItems[0];
            ListViewGroup targetGroup = listView1.Groups[1];

            if(targetItem.Group.Name != "groupBooks")
            {
                return;
            }

            int targetCount = Convert.ToInt32(targetItem.SubItems[1].Text);
            if (targetCount > 1)
            {
                targetItem.SubItems[1].Text = Convert.ToString(targetCount--);
            }
            else
            {
                targetItem.Remove();
            }

            foreach (ListViewItem item in targetGroup.Items)
            {
                if (item.Name == targetItem.Name)
                {
                    int itemCount = Convert.ToInt32(item.SubItems[1].Text);
                    item.SubItems[1].Text = Convert.ToString(itemCount++);
                }
                else
                {
                    ListViewItem newItem = (ListViewItem)targetItem.Clone();
                    newItem.SubItems[1].Text = "1";
                    targetGroup.Items.Add(newItem);
                }
            }
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
