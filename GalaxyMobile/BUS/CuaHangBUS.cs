using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using Model;
namespace BUS
{
    public static class CuaHangBUS
    {
        static public CuaHangDAO db;
        static CuaHangBUS()
        {
            db = new CuaHangDAO();
        }
        public static List<CuaHang> GetAllCuaHang()
        {
            return db.GetAllCuaHang();
        }
    }
}
