using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Model;
using BUS;
namespace GalaxyMobile
{
    public partial class frmMainServer : Form
    {
        public frmMainServer()
        {
            InitializeComponent();
        }


        private void frmMainServer_Load(object sender, EventArgs e)
        {
            LoadKhoHang();

        }
        public void LoadKhoHang()
        {
            
            khoHangBindingSource.DataSource = KhoHangBUS.GetAllKHoHang();
           
        }
    }
}
