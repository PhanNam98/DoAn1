using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
namespace DAO
{
    public class LoaiNVDAO
    {
        public List<LoaiNV> GetAll()
        {
            using (GalaxyMobileEntities db = new GalaxyMobileEntities())
                return db.GetLNV().ToList();
        }
    }
}
