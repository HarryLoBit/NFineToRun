using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Serialization;

namespace NFine.Application.PublicBusines
{
    public static class XmlUtil
    {
        //识别需要序列化的类型
        private static readonly Type[] WriteTypes = new[] 
        {
            typeof(string), typeof(DateTime), typeof(Enum), 
            typeof(decimal?), typeof(Guid),typeof(int?)
        };
        public static bool IsSimpleType(this Type type)
        {
            return type.IsPrimitive || WriteTypes.Contains(type);
        }
        public static XElement AnonymousToXml(this object input)
        {
            return input.AnonymousToXml(null);
        }
        public static XElement AnonymousToXml(this object input, string element)
        {
            if (input == null)
                return null;
            if (string.IsNullOrEmpty(element))
                element = "object";
            element = XmlConvert.EncodeName(element);
            var ret = new XElement(element);
            if (input != null)
            {
                var type = input.GetType();
                var props = type.GetProperties();
                var elements = from prop in props
                               let name = XmlConvert.EncodeName(prop.Name)
                               let val = prop.GetValue(input, null)
                               let value = prop.PropertyType.IsSimpleType()
                                    ? new XElement(name, val)
                                    : val.AnonymousToXml(name)
                               where value != null
                               select value;
                ret.Add(elements);
            }
            return ret;
        }

        /// <summary>
        ///     获取XML节点的值
        /// </summary>
        /// <param name="doc"></param>
        /// <param name="strNodeName"></param>
        /// <returns></returns>
        public static string GetXmlNodeValue(XmlDocument doc, string strNodeName)
        {
            var node = doc.SelectSingleNode(strNodeName);
            var value = "";
            if (node != null)
            {
                value = node.InnerText;
            }
            return value;
        }

        /// <summary>
        ///     获取XML节点的值
        /// </summary>
        /// <param name="node"></param>
        /// <param name="strNodeName"></param>
        /// <returns></returns>
        public static string GetXmlNodeValue(XmlNode node, string strNodeName)
        {
            var value = "";
            if (node != null)
            {
                try
                {
                    var selectSingleNode = node.SelectSingleNode(strNodeName);
                    if (selectSingleNode != null)
                    {
                        value = selectSingleNode.InnerText;
                    }
                }
                catch
                {
                    return "";
                }
            }
            return value;
        }

        /// <summary>
        ///     获取XML节点属性的值
        /// </summary>
        /// <param name="node"></param>
        /// <param name="strAttrName"></param>
        /// <returns></returns>
        public static string GetXmlNodeAttr(XmlNode node, string strAttrName)
        {
            var value = "";
            if (node != null)
            {
                try
                {
                    if (node.Attributes != null)
                    {
                        value = node.Attributes[strAttrName].InnerText;
                    }
                }
                catch
                {
                    return "";
                }
            }
            return value;
        }

        /// <summary>
        ///     获取XML节点的值
        /// </summary>
        /// <param name="xDoc"></param>
        /// <param name="strNodeName"></param>
        /// <returns></returns>
        public static string GetXmlNodeValue(XDocument xDoc, string strNodeName)
        {
            var xElement = xDoc.Element(strNodeName);
            var value = "";
            if (xElement != null)
            {
                value = xElement.Value;
            }
            return value;
        }

        /// <summary>
        ///     获取XML节点的值
        /// </summary>
        /// <param name="xElement"></param>
        /// <param name="strNodeName"></param>
        /// <returns></returns>
        public static string GetXmlNodeValue(XElement xElement, string strNodeName)
        {
            var xTmp = xElement.Element(strNodeName);
            var value = "";
            if (xTmp != null)
            {
                value = xTmp.Value;
            }
            return value;
        }

        /// <summary>
        ///     设置XML节点的值，如果节点不存在则自动创建
        /// </summary>
        /// <param name="doc"></param>
        /// <param name="strNodeName"></param>
        /// <param name="strValue"></param>
        /// <returns></returns>
        public static void SetXmlNodeValue(XmlDocument doc, string strNodeName, string strValue)
        {
            var node = doc.SelectSingleNode(strNodeName);
            if (node != null)
            {
                node.InnerText = strValue;
            }
            else
            {
                node = doc.CreateNode(XmlNodeType.Element, strNodeName, "");
                node.InnerText = strValue;
                doc.AppendChild(node);
            }
        }

        /// <summary>
        ///     设置XML节点的值，如果节点不存在则自动创建
        /// </summary>
        /// <param name="node"></param>
        /// <param name="strNodeName"></param>
        /// <param name="strValue"></param>
        /// <returns></returns>
        public static void SetXmlNodeValue(XmlNode node, string strNodeName, string strValue)
        {
            var temp = node.SelectSingleNode(strNodeName);
            if (temp != null)
            {
                temp.InnerText = strValue;
            }
            else
            {
                if (node.OwnerDocument != null)
                {
                    temp = node.OwnerDocument.CreateNode(XmlNodeType.Element, strNodeName, "");
                    temp.InnerText = strValue;
                    node.AppendChild(temp);
                }
            }
        }

        /// <summary>
        ///     设置XML节点的值，如果节点不存在则自动创建
        /// </summary>
        /// <param name="xDoc"></param>
        /// <param name="strNodeName"></param>
        /// <param name="nodeValue"></param>
        public static void SetXmlNodeValue(XDocument xDoc, string strNodeName, object nodeValue)
        {
            var xElement = xDoc.Element(strNodeName);
            if (xElement != null)
            {
                xElement.SetValue(nodeValue);
            }
            else
            {
                xDoc.Add(new XElement(strNodeName, nodeValue));
            }
        }

        /// <summary>
        ///     设置XML节点的值，如果节点不存在则自动创建
        /// </summary>
        /// <param name="xElement"></param>
        /// <param name="strNodeName"></param>
        /// <param name="nodeValue"></param>
        public static void SetXmlNodeValue(XElement xElement, string strNodeName, object nodeValue)
        {
            var element = xElement.Element(strNodeName);
            if (element != null)
            {
                element.SetValue(nodeValue);
            }
            else
            {
                xElement.Add(new XElement(strNodeName, nodeValue));
            }
        }

        #region 序列化

        /// <summary>
        ///     XML Serialize
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static string ToXml<T>(this T obj)
        {
            return Serialize(obj);
        }

        /// <summary>
        ///     XML Serialize
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static string Serialize<T>(T obj)
        {
            return Serialize(obj, typeof(T));
        }

        /// <summary>
        ///     XML Serialize
        /// </summary>
        /// <param name="obj"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public static string Serialize(this object obj, Type type)
        {
            return Serialize(obj, type, null);
        }

        /// <summary>
        ///     XML Serialize
        /// </summary>
        /// <param name="obj"></param>
        /// <param name="type"></param>
        /// <param name="types"></param>
        /// <returns></returns>
        public static string Serialize(object obj, Type type, params Type[] types)
        {
            var serializer = new XmlSerializer(type, types);
            var sb = new StringBuilder();

            using (TextWriter writer = new StringWriter(sb))
            {

                #region 删除根节点的默认命名空间

                var xmlSerializerNamespaces = new XmlSerializerNamespaces();
                xmlSerializerNamespaces.Add("", "");

                #endregion 删除根节点的默认命名空间
                serializer.Serialize(writer, obj, xmlSerializerNamespaces);
                return sb.ToString();
            }
        }

        /// <summary>
        ///     XML Deserialize
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="xml"></param>
        /// <returns></returns>
        public static T Deserialize<T>(string xml)
        {
            return Deserialize<T>(xml, typeof(T));
        }

        /// <summary>
        ///     XML Deserialize
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="xml"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public static T Deserialize<T>(string xml, Type type)
        {
            return Deserialize<T>(xml, type, null);
        }

        /// <summary>
        ///     XML Deserialize
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="xml"></param>
        /// <param name="type"></param>
        /// <param name="types"></param>
        /// <returns></returns>
        public static T Deserialize<T>(string xml, Type type, params Type[] types)
        {
            var serializer = new XmlSerializer(type, types);
            using (TextReader reader = new StringReader(xml))
            {
                var obj = (T)serializer.Deserialize(reader);
                return obj;
            }
        }

        #endregion 序列化
    }

    //public class Utf8StringWriter : StringWriter
    //{
    //    public override Encoding Encoding { get { return Encoding.UTF8; } }
    //}
}
