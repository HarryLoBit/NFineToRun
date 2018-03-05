using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace NFine.Application
{
    [XmlRoot("response")]
    public class DHSSmsResponse
    {
        [XmlElement("msgid")]
        public string MsgId { get; set; }

        [XmlElement("result")]
        public string Result { get; set; }

        [XmlElement("desc")]
        public string Desc { get; set; }

        [XmlElement("blacklist")]
        public string BlackList { get; set; }
    }
}
