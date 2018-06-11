namespace QuanLyNhanSu
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.MenuHeThong = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemDangXuat = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.ToolStripMenuItemThoat = new System.Windows.Forms.ToolStripMenuItem();
            this.MenuQuanLy = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItemQuanLyNhanVien = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripMenuItemQuanLyPhongBan = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemQuanLyNangLuong = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemQuanLyTĐHV = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItemQTCT = new System.Windows.Forms.ToolStripMenuItem();
            this.MenuTroGiup = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.AutoSize = false;
            this.menuStrip1.BackColor = System.Drawing.Color.LightSteelBlue;
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.MenuHeThong,
            this.MenuQuanLy,
            this.MenuTroGiup});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(684, 35);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // MenuHeThong
            // 
            this.MenuHeThong.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripMenuItemDangXuat,
            this.toolStripSeparator1,
            this.ToolStripMenuItemThoat});
            this.MenuHeThong.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MenuHeThong.Image = global::QuanLyNhanSu.Properties.Resources.icons8_home_16;
            this.MenuHeThong.Name = "MenuHeThong";
            this.MenuHeThong.Size = new System.Drawing.Size(90, 31);
            this.MenuHeThong.Text = "Hệ thống";
            // 
            // ToolStripMenuItemDangXuat
            // 
            this.ToolStripMenuItemDangXuat.Image = ((System.Drawing.Image)(resources.GetObject("ToolStripMenuItemDangXuat.Image")));
            this.ToolStripMenuItemDangXuat.Name = "ToolStripMenuItemDangXuat";
            this.ToolStripMenuItemDangXuat.Size = new System.Drawing.Size(201, 22);
            this.ToolStripMenuItemDangXuat.Text = "Đăng xuất     (Ctrl+X)";
            this.ToolStripMenuItemDangXuat.Click += new System.EventHandler(this.ToolStripMenuItemDangXuat_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(198, 6);
            // 
            // ToolStripMenuItemThoat
            // 
            this.ToolStripMenuItemThoat.Image = ((System.Drawing.Image)(resources.GetObject("ToolStripMenuItemThoat.Image")));
            this.ToolStripMenuItemThoat.Name = "ToolStripMenuItemThoat";
            this.ToolStripMenuItemThoat.Size = new System.Drawing.Size(201, 22);
            this.ToolStripMenuItemThoat.Text = "Thoát            (Ctrl+T)";
            this.ToolStripMenuItemThoat.Click += new System.EventHandler(this.ToolStripMenuItemThoat_Click);
            // 
            // MenuQuanLy
            // 
            this.MenuQuanLy.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItemQuanLyNhanVien,
            this.toolStripSeparator5,
            this.toolStripMenuItemQuanLyPhongBan,
            this.ToolStripMenuItemQuanLyNangLuong,
            this.ToolStripMenuItemQuanLyTĐHV,
            this.toolStripMenuItemQTCT});
            this.MenuQuanLy.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MenuQuanLy.Image = global::QuanLyNhanSu.Properties.Resources.SelectDataMember_32x32;
            this.MenuQuanLy.Name = "MenuQuanLy";
            this.MenuQuanLy.Size = new System.Drawing.Size(140, 31);
            this.MenuQuanLy.Text = "Danh mục quản lý";
            // 
            // toolStripMenuItemQuanLyNhanVien
            // 
            this.toolStripMenuItemQuanLyNhanVien.Image = ((System.Drawing.Image)(resources.GetObject("toolStripMenuItemQuanLyNhanVien.Image")));
            this.toolStripMenuItemQuanLyNhanVien.Name = "toolStripMenuItemQuanLyNhanVien";
            this.toolStripMenuItemQuanLyNhanVien.Size = new System.Drawing.Size(235, 22);
            this.toolStripMenuItemQuanLyNhanVien.Text = "Quản lý thông tin nhân viên";
            this.toolStripMenuItemQuanLyNhanVien.Click += new System.EventHandler(this.toolStripMenuItemQuanLyNhanVien_Click);
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(232, 6);
            // 
            // toolStripMenuItemQuanLyPhongBan
            // 
            this.toolStripMenuItemQuanLyPhongBan.Image = ((System.Drawing.Image)(resources.GetObject("toolStripMenuItemQuanLyPhongBan.Image")));
            this.toolStripMenuItemQuanLyPhongBan.Name = "toolStripMenuItemQuanLyPhongBan";
            this.toolStripMenuItemQuanLyPhongBan.Size = new System.Drawing.Size(235, 22);
            this.toolStripMenuItemQuanLyPhongBan.Text = "Quản lý phòng ban";
            this.toolStripMenuItemQuanLyPhongBan.Click += new System.EventHandler(this.toolStripMenuItemQuanLyPhongBan_Click);
            // 
            // ToolStripMenuItemQuanLyNangLuong
            // 
            this.ToolStripMenuItemQuanLyNangLuong.Image = ((System.Drawing.Image)(resources.GetObject("ToolStripMenuItemQuanLyNangLuong.Image")));
            this.ToolStripMenuItemQuanLyNangLuong.Name = "ToolStripMenuItemQuanLyNangLuong";
            this.ToolStripMenuItemQuanLyNangLuong.Size = new System.Drawing.Size(235, 22);
            this.ToolStripMenuItemQuanLyNangLuong.Text = "Quản lý nâng lương";
            this.ToolStripMenuItemQuanLyNangLuong.Click += new System.EventHandler(this.ToolStripMenuItemQuanLyNangLuong_Click);
            // 
            // ToolStripMenuItemQuanLyTĐHV
            // 
            this.ToolStripMenuItemQuanLyTĐHV.Image = global::QuanLyNhanSu.Properties.Resources.book_open;
            this.ToolStripMenuItemQuanLyTĐHV.Name = "ToolStripMenuItemQuanLyTĐHV";
            this.ToolStripMenuItemQuanLyTĐHV.Size = new System.Drawing.Size(235, 22);
            this.ToolStripMenuItemQuanLyTĐHV.Text = "Quản lý trình độ học vấn";
            this.ToolStripMenuItemQuanLyTĐHV.Click += new System.EventHandler(this.ToolStripMenuItemQuanLyTĐHV_Click);
            // 
            // toolStripMenuItemQTCT
            // 
            this.toolStripMenuItemQTCT.Image = global::QuanLyNhanSu.Properties.Resources.chart;
            this.toolStripMenuItemQTCT.Name = "toolStripMenuItemQTCT";
            this.toolStripMenuItemQTCT.Size = new System.Drawing.Size(235, 22);
            this.toolStripMenuItemQTCT.Text = "Quá trình công tác";
            this.toolStripMenuItemQTCT.Click += new System.EventHandler(this.toolStripMenuItemQTCT_Click);
            // 
            // MenuTroGiup
            // 
            this.MenuTroGiup.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MenuTroGiup.Image = global::QuanLyNhanSu.Properties.Resources.icons8_help_16;
            this.MenuTroGiup.Name = "MenuTroGiup";
            this.MenuTroGiup.Size = new System.Drawing.Size(102, 31);
            this.MenuTroGiup.Text = "Hướng dẫn";
            this.MenuTroGiup.Click += new System.EventHandler(this.MenuTroGiup_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.BackgroundImage = global::QuanLyNhanSu.Properties.Resources.employer_employee_min;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(684, 461);
            this.Controls.Add(this.menuStrip1);
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản Lý Nhân Sự";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.KeyUp += new System.Windows.Forms.KeyEventHandler(this.frmMain_KeyUp);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem MenuHeThong;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemDangXuat;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemThoat;
        private System.Windows.Forms.ToolStripMenuItem MenuQuanLy;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItemQuanLyNhanVien;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItemQuanLyPhongBan;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemQuanLyNangLuong;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemQuanLyTĐHV;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItemQTCT;
        private System.Windows.Forms.ToolStripMenuItem MenuTroGiup;
    }
}