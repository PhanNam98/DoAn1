using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAO;
namespace BUS
{
    public class LoaiNVBU
    {
        static LoaiNVDAO lnv;
        static LoaiNVBU()
        {
            lnv = new LoaiNVDAO();
        }
        static public List<LoaiNV> GetAll()
        {
            return lnv.GetAll();
        }

    }
}
