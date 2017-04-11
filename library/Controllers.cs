using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace library
{
    class RegisterController
    {
        public RegisterView View;

        public void attachEvents()
        {
            this.View.Controls["RegisterButton"].Click += new System.EventHandler(this.register);
        }

        public void register(object sender, EventArgs e)
        {
            ModelsContainer dbc = new ModelsContainer();

            Reader reader = dbc.ReaderSet.Add(new Reader());
            reader.name = this.View.Controls["RegisterName"].Text;

            if (dbc.SaveChanges() > 0)
            {
                MessageBox.Show(
                    "Пользователь зарегистрирован",
                    "Регистрация",
                    MessageBoxButtons.OK
                );
                MultiView parent = this.View.MdiParent as MultiView;

                this.View.Hide();
                parent.LoginView.Show();
            }
        }
    }
}
