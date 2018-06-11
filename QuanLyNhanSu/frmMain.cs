using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhanSu
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void ToolStripMenuItemDangXuat_Click(object sender, EventArgs e)
        {
            frmDangNhap dn = new frmDangNhap();
            dn.Show();
            this.Close();
        }

        private void ToolStripMenuItemThoat_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Bạn chắc chắn muốn thoát chương trình không?", "Xác nhận hủy", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void toolStripMenuItemQuanLyNhanVien_Click(object sender, EventArgs e)
        {
            frmNhanVien nv = new frmNhanVien();
            nv.Show();
            this.Hide();
        }

        private void toolStripMenuItemQuanLyPhongBan_Click(object sender, EventArgs e)
        {
            frmphongBan pb = new frmphongBan();
            pb.Show();
            this.Hide();
        }

        private void ToolStripMenuItemQuanLyNangLuong_Click(object sender, EventArgs e)
        {
            frmLuong l = new frmLuong();
            l.Show();
            this.Hide();
        }

        private void ToolStripMenuItemQuanLyTĐHV_Click(object sender, EventArgs e)
        {
            frmTDHV hv = new frmTDHV();
            hv.Show();
            this.Hide();
        }

        private void toolStripMenuItemQTCT_Click(object sender, EventArgs e)
        {
            frmTGCTxCV tg = new frmTGCTxCV();
            tg.Show();
            this.Hide();
        }

        private void ttNhanVientoolStripButton_Click(object sender, EventArgs e)
        {
            frmNhanVien nv = new frmNhanVien();
            nv.Show();
            this.Hide();
        }
        private void hướngDãnSửDụngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Help.ShowHelp(this, "Helps.chm");
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Bạn chắc chắn muốn thoát chương trình không?", "Xác nhận hủy", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
        private void MenuTroGiup_Click(object sender, EventArgs e)
        {
            frmhuongdan hd = new frmhuongdan();
            hd.Show();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            this.KeyPreview = true;
        }

        private void frmMain_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Control)
            {
                if (e.KeyCode.Equals(Keys.X))
                {
                    ToolStripMenuItemDangXuat_Click(null, null);
                }
                if (e.KeyCode.Equals(Keys.T))
                {
                    ToolStripMenuItemThoat_Click(null, null);
                }
            }

     }
    }
}



   
