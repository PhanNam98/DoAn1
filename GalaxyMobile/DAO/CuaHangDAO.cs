using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
namespace DAO
{
    public class CuaHangDAO
    {
        public List<CuaHang> GetAllCuaHang()
        {
            using (GalaxyMobileEntities db = new GalaxyMobileEntities())
            {
                return db.USP_GetAllCuaHang().ToList();
            }
        }
    }
}
