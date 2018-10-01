using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
namespace DAO
{
    public class NhanVienDAO
    {
        public List<NhanVien> GetALL()
        {
            using (GalaxyMobileEntities db = new GalaxyMobileEntities())
            {
                return db.NhanViens.ToList();
            }
        }
    }
}
