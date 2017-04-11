namespace library
{
    partial class MultiView
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.MainMenu = new System.Windows.Forms.MenuStrip();
            this.навигацияToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.списокКнигToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.MainMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // MainMenu
            // 
            this.MainMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.навигацияToolStripMenuItem});
            this.MainMenu.Location = new System.Drawing.Point(0, 0);
            this.MainMenu.Name = "MainMenu";
            this.MainMenu.Size = new System.Drawing.Size(427, 24);
            this.MainMenu.TabIndex = 1;
            this.MainMenu.Text = "menuStrip1";
            this.MainMenu.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.MainMenu_ItemClicked);
            // 
            // навигацияToolStripMenuItem
            // 
            this.навигацияToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.списокКнигToolStripMenuItem});
            this.навигацияToolStripMenuItem.Name = "навигацияToolStripMenuItem";
            this.навигацияToolStripMenuItem.Size = new System.Drawing.Size(78, 20);
            this.навигацияToolStripMenuItem.Text = "Навигация";
            // 
            // списокКнигToolStripMenuItem
            // 
            this.списокКнигToolStripMenuItem.Name = "списокКнигToolStripMenuItem";
            this.списокКнигToolStripMenuItem.Size = new System.Drawing.Size(144, 22);
            this.списокКнигToolStripMenuItem.Text = "Список Книг";
            // 
            // MultiView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(427, 282);
            this.Controls.Add(this.MainMenu);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.MainMenu;
            this.Name = "MultiView";
            this.Text = "Библиотека";
            this.Load += new System.EventHandler(this.MultiView_Load);
            this.MainMenu.ResumeLayout(false);
            this.MainMenu.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip MainMenu;
        private System.Windows.Forms.ToolStripMenuItem навигацияToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem списокКнигToolStripMenuItem;




    }
}

