﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class GalaxyMobileEntities : DbContext
    {
        public GalaxyMobileEntities()
            : base("name=GalaxyMobileEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CuaHang> CuaHangs { get; set; }
        public virtual DbSet<DongSanPham> DongSanPhams { get; set; }
        public virtual DbSet<HoaDon> HoaDons { get; set; }
        public virtual DbSet<HSX> HSXes { get; set; }
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<LoaiNV> LoaiNVs { get; set; }
        public virtual DbSet<LoaiSP> LoaiSPs { get; set; }
        public virtual DbSet<LoaiTaiKhoan> LoaiTaiKhoans { get; set; }
        public virtual DbSet<MauSP> MauSPs { get; set; }
        public virtual DbSet<SanPham> SanPhams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<ChiTietSP> ChiTietSPs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<ChiTietHoaDon> ChiTietHoaDons { get; set; }
        public virtual DbSet<KhoHang> KhoHangs { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }
    
        public virtual ObjectResult<CuaHang> USP_GetAllCuaHang()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<CuaHang>("USP_GetAllCuaHang");
        }
    
        public virtual ObjectResult<CuaHang> USP_GetAllCuaHang(MergeOption mergeOption)
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<CuaHang>("USP_GetAllCuaHang", mergeOption);
        }
    
        public virtual ObjectResult<KhoHang> USP_GetAllKhoHang()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<KhoHang>("USP_GetAllKhoHang");
        }
    
        public virtual ObjectResult<KhoHang> USP_GetAllKhoHang(MergeOption mergeOption)
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<KhoHang>("USP_GetAllKhoHang", mergeOption);
        }
    }
}
