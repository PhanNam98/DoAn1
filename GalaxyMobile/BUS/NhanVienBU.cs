using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using Model;
namespace BUS
{
    public static class NhanVienBU
    {
        static NhanVienDAO nv;
        
        static NhanVienBU()
        {
            nv = new NhanVienDAO();

        }
        public static List<NhanVien> GetAllNV()
        {
            return nv.GetALL();
        }
    }
}
