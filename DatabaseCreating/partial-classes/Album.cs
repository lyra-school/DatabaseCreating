using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseCreating
{
    public partial class Album
    {
        public override string ToString()
        {
            return $"{Name} ({Released})";
        }
    }
}
