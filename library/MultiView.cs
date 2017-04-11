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
    public partial class MultiView : Form
    {
        public RegisterView RegisterView;
        public LoginView LoginView;

        public MultiView()
        {
            InitializeComponent();

            this.MainMenu.Hide();

            LoginView = new LoginView();
            LoginView.MdiParent = this;

            RegisterView = new RegisterView();
            RegisterView.MdiParent = this;
            RegisterView.Hide();
        }

        private void MultiView_Load(object sender, EventArgs e)
        {
            LoginView.Show();

            RegisterController RegisterController = new RegisterController();
            RegisterController.View = this.RegisterView;
            RegisterController.attachEvents();
        }

        private void MainMenu_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }
    }
}
