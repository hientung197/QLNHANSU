﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyNhanSu_Entity;  
using QuanLyNhanSu_BUS;
namespace QuanLyNhanSu
{
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }
        NguoiDung nd = new NguoiDung();
        NguoiDungBUS ndbus = new NguoiDungBUS();
        
        private void btnDangNhap_Click_1(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = ndbus.DangNhap(txtTaiKhoan.Text, txtMatKhau.Text);

            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    nd.TaiKhoan = dt.Rows[i].ToString();
                    nd.MatKhau = dt.Rows[i].ToString();
                }
                this.Hide();
                frmMain mainn = new frmMain();
                mainn.Show();

            }
            else
            {
                MessageBox.Show("Dang nhap that bai");
            }
        }

        private void btnThoat_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
