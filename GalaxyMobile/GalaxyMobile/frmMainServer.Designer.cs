namespace GalaxyMobile
{
    partial class frmMainServer
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
            this.components = new System.ComponentModel.Container();
            this.pnlMainServer = new System.Windows.Forms.Panel();
            this.tabTaiKhoan = new System.Windows.Forms.TabPage();
            this.tabNhanVien = new System.Windows.Forms.TabPage();
            this.tabNSX = new System.Windows.Forms.TabPage();
            this.tabDongSanPham = new System.Windows.Forms.TabPage();
            this.tabSanPham = new System.Windows.Forms.TabPage();
            this.tabKhoHang = new System.Windows.Forms.TabPage();
            this.pnlKho = new System.Windows.Forms.Panel();
            this.tabControlMainServer = new System.Windows.Forms.TabControl();
            this.tabCuaHang = new System.Windows.Forms.TabPage();
            this.tabThongKe = new System.Windows.Forms.TabPage();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.khoHangBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.maKieuDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.maCuaHangDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.soLuongDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pnlMainServer.SuspendLayout();
            this.tabKhoHang.SuspendLayout();
            this.pnlKho.SuspendLayout();
            this.tabControlMainServer.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.khoHangBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlMainServer
            // 
            this.pnlMainServer.Controls.Add(this.tabControlMainServer);
            this.pnlMainServer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlMainServer.Location = new System.Drawing.Point(0, 0);
            this.pnlMainServer.Name = "pnlMainServer";
            this.pnlMainServer.Size = new System.Drawing.Size(945, 460);
            this.pnlMainServer.TabIndex = 0;
            // 
            // tabTaiKhoan
            // 
            this.tabTaiKhoan.Location = new System.Drawing.Point(4, 22);
            this.tabTaiKhoan.Name = "tabTaiKhoan";
            this.tabTaiKhoan.Padding = new System.Windows.Forms.Padding(3);
            this.tabTaiKhoan.Size = new System.Drawing.Size(881, 382);
            this.tabTaiKhoan.TabIndex = 5;
            this.tabTaiKhoan.Text = "Tài Khoản";
            this.tabTaiKhoan.UseVisualStyleBackColor = true;
            // 
            // tabNhanVien
            // 
            this.tabNhanVien.Location = new System.Drawing.Point(4, 22);
            this.tabNhanVien.Name = "tabNhanVien";
            this.tabNhanVien.Padding = new System.Windows.Forms.Padding(3);
            this.tabNhanVien.Size = new System.Drawing.Size(881, 382);
            this.tabNhanVien.TabIndex = 4;
            this.tabNhanVien.Text = "Nhân Viên";
            this.tabNhanVien.UseVisualStyleBackColor = true;
            // 
            // tabNSX
            // 
            this.tabNSX.Location = new System.Drawing.Point(4, 22);
            this.tabNSX.Name = "tabNSX";
            this.tabNSX.Padding = new System.Windows.Forms.Padding(3);
            this.tabNSX.Size = new System.Drawing.Size(881, 382);
            this.tabNSX.TabIndex = 3;
            this.tabNSX.Text = "Nhà Sản Xuất";
            this.tabNSX.UseVisualStyleBackColor = true;
            // 
            // tabDongSanPham
            // 
            this.tabDongSanPham.Location = new System.Drawing.Point(4, 22);
            this.tabDongSanPham.Name = "tabDongSanPham";
            this.tabDongSanPham.Padding = new System.Windows.Forms.Padding(3);
            this.tabDongSanPham.Size = new System.Drawing.Size(881, 382);
            this.tabDongSanPham.TabIndex = 2;
            this.tabDongSanPham.Text = "Dòng Sản Phẩm";
            this.tabDongSanPham.UseVisualStyleBackColor = true;
            // 
            // tabSanPham
            // 
            this.tabSanPham.Location = new System.Drawing.Point(4, 22);
            this.tabSanPham.Name = "tabSanPham";
            this.tabSanPham.Padding = new System.Windows.Forms.Padding(3);
            this.tabSanPham.Size = new System.Drawing.Size(881, 382);
            this.tabSanPham.TabIndex = 1;
            this.tabSanPham.Text = "Sản Phẩm";
            this.tabSanPham.UseVisualStyleBackColor = true;
            // 
            // tabKhoHang
            // 
            this.tabKhoHang.Controls.Add(this.pnlKho);
            this.tabKhoHang.Location = new System.Drawing.Point(4, 22);
            this.tabKhoHang.Name = "tabKhoHang";
            this.tabKhoHang.Padding = new System.Windows.Forms.Padding(3);
            this.tabKhoHang.Size = new System.Drawing.Size(881, 382);
            this.tabKhoHang.TabIndex = 0;
            this.tabKhoHang.Text = "Kho Hàng";
            this.tabKhoHang.UseVisualStyleBackColor = true;
            // 
            // pnlKho
            // 
            this.pnlKho.Controls.Add(this.dataGridView1);
            this.pnlKho.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlKho.Location = new System.Drawing.Point(3, 3);
            this.pnlKho.Name = "pnlKho";
            this.pnlKho.Size = new System.Drawing.Size(875, 376);
            this.pnlKho.TabIndex = 0;
            // 
            // tabControlMainServer
            // 
            this.tabControlMainServer.Controls.Add(this.tabKhoHang);
            this.tabControlMainServer.Controls.Add(this.tabSanPham);
            this.tabControlMainServer.Controls.Add(this.tabDongSanPham);
            this.tabControlMainServer.Controls.Add(this.tabNSX);
            this.tabControlMainServer.Controls.Add(this.tabNhanVien);
            this.tabControlMainServer.Controls.Add(this.tabTaiKhoan);
            this.tabControlMainServer.Controls.Add(this.tabCuaHang);
            this.tabControlMainServer.Controls.Add(this.tabThongKe);
            this.tabControlMainServer.Location = new System.Drawing.Point(26, 27);
            this.tabControlMainServer.Name = "tabControlMainServer";
            this.tabControlMainServer.SelectedIndex = 0;
            this.tabControlMainServer.Size = new System.Drawing.Size(889, 408);
            this.tabControlMainServer.TabIndex = 0;
            // 
            // tabCuaHang
            // 
            this.tabCuaHang.Location = new System.Drawing.Point(4, 22);
            this.tabCuaHang.Name = "tabCuaHang";
            this.tabCuaHang.Padding = new System.Windows.Forms.Padding(3);
            this.tabCuaHang.Size = new System.Drawing.Size(881, 382);
            this.tabCuaHang.TabIndex = 6;
            this.tabCuaHang.Text = "Cửa Hàng";
            this.tabCuaHang.UseVisualStyleBackColor = true;
            // 
            // tabThongKe
            // 
            this.tabThongKe.Location = new System.Drawing.Point(4, 22);
            this.tabThongKe.Name = "tabThongKe";
            this.tabThongKe.Padding = new System.Windows.Forms.Padding(3);
            this.tabThongKe.Size = new System.Drawing.Size(881, 382);
            this.tabThongKe.TabIndex = 7;
            this.tabThongKe.Text = "Thống Kê";
            this.tabThongKe.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.maKieuDataGridViewTextBoxColumn,
            this.maCuaHangDataGridViewTextBoxColumn,
            this.soLuongDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.khoHangBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(51, 20);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(372, 318);
            this.dataGridView1.TabIndex = 0;
            // 
            // khoHangBindingSource
            // 
            this.khoHangBindingSource.DataSource = typeof(Model.KhoHang);
            // 
            // maKieuDataGridViewTextBoxColumn
            // 
            this.maKieuDataGridViewTextBoxColumn.DataPropertyName = "MaKieu";
            this.maKieuDataGridViewTextBoxColumn.HeaderText = "MaKieu";
            this.maKieuDataGridViewTextBoxColumn.Name = "maKieuDataGridViewTextBoxColumn";
            this.maKieuDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // maCuaHangDataGridViewTextBoxColumn
            // 
            this.maCuaHangDataGridViewTextBoxColumn.DataPropertyName = "MaCuaHang";
            this.maCuaHangDataGridViewTextBoxColumn.HeaderText = "MaCuaHang";
            this.maCuaHangDataGridViewTextBoxColumn.Name = "maCuaHangDataGridViewTextBoxColumn";
            this.maCuaHangDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // soLuongDataGridViewTextBoxColumn
            // 
            this.soLuongDataGridViewTextBoxColumn.DataPropertyName = "SoLuong";
            this.soLuongDataGridViewTextBoxColumn.HeaderText = "SoLuong";
            this.soLuongDataGridViewTextBoxColumn.Name = "soLuongDataGridViewTextBoxColumn";
            this.soLuongDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // frmMainServer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(945, 460);
            this.Controls.Add(this.pnlMainServer);
            this.Name = "frmMainServer";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmMainServer";
            this.Load += new System.EventHandler(this.frmMainServer_Load);
            this.pnlMainServer.ResumeLayout(false);
            this.tabKhoHang.ResumeLayout(false);
            this.pnlKho.ResumeLayout(false);
            this.tabControlMainServer.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.khoHangBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel pnlMainServer;
        private System.Windows.Forms.TabControl tabControlMainServer;
        private System.Windows.Forms.TabPage tabKhoHang;
        private System.Windows.Forms.Panel pnlKho;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.BindingSource khoHangBindingSource;
        private System.Windows.Forms.TabPage tabSanPham;
        private System.Windows.Forms.TabPage tabDongSanPham;
        private System.Windows.Forms.TabPage tabNSX;
        private System.Windows.Forms.TabPage tabNhanVien;
        private System.Windows.Forms.TabPage tabTaiKhoan;
        private System.Windows.Forms.TabPage tabCuaHang;
        private System.Windows.Forms.TabPage tabThongKe;
        private System.Windows.Forms.DataGridViewTextBoxColumn maKieuDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn maCuaHangDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn soLuongDataGridViewTextBoxColumn;
    }
}