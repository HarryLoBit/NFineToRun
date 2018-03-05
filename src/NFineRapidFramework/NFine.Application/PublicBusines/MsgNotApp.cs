using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniversalHelper;
using System.Xml.Linq;
using System.Collections.Specialized;
using System.Net;
using System.Security.Cryptography;
using NFine.Domain.Entity.PublicBusines;

namespace NFine.Application.PublicBusines
{
    /// <summary>
    /// 消息通知
    /// </summary>
    public class MsgNotApp
    {

        VerCodeApp verApp = new VerCodeApp();

        /// <summary>
        /// 发送短信消息
        /// </summary>
        /// <returns></returns>
        public int SendSMSVerCode(string mobile, string content,string code)
        {
            //var messageXml = GenerateSmsContent(mobile, content);
            //NameValueCollection postValues = new NameValueCollection { { "message", messageXml } };

            //WebClient webClient = new WebClient();

            //byte[] serverData = webClient.UploadValues("http://wt.3tong.net/http/sms/Submit", "POST", postValues);

            //Encoding contentEncoding = GetEncoding(webClient.ResponseHeaders["Content-Type"], webClient);

            //var response = XmlUtil.Deserialize<DHSSmsResponse>(contentEncoding.GetString(serverData));

            //if (!response.Result.Equals("0"))
            //{
            //    //return -1;
            //}

            //添加记录Ver
            verApp.SaveVerCode(code, content, mobile);

            return 0;
        }

        /// <summary>
        /// MD5加密
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string MD5Sign(string value)
        {
            // 使用MD5加密
            MD5 md5 = MD5.Create();
            byte[] bytes = md5.ComputeHash(Encoding.UTF8.GetBytes(value));

            // 把二进制转化为大写的十六进制
            StringBuilder result = new StringBuilder();
            for (int i = 0; i < bytes.Length; i++)
            {
                result.Append(bytes[i].ToString("x"));
            }
            return result.ToString();
        }

        /// <summary>
        /// 组合请求的xml值
        /// </summary>
        /// <param name="mobile"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        private string GenerateSmsContent(string mobile, string content)
        {
            var xmlContent = new { msgId = Guid.NewGuid().ToString(), content = content, phones = mobile, account = "dh1676", password = MD5Sign("1676.com"), sign = "【上海威盛物流】", subcode = "" };

            return xmlContent.AnonymousToXml("Message").ToString();
        }

        /// <summary>
        /// 设置编码
        /// </summary>
        /// <param name="contentType"></param>
        /// <param name="webClient"></param>
        /// <returns></returns>
        protected static Encoding GetEncoding(string contentType, WebClient webClient)
        {
            Encoding result = Encoding.UTF8;
            if (!string.IsNullOrEmpty(contentType))
            {
                string[] contentTypes = contentType.Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);
                foreach (string temp in contentTypes)
                {
                    string[] charset = temp.Trim().Split(new char[] { '=' }, StringSplitOptions.RemoveEmptyEntries);
                    if (charset.Length == 2 && charset[0].Trim() == "charset")
                    {
                        result = Encoding.GetEncoding(charset[1].Trim());
                        webClient.Encoding = result;
                        break;
                    }
                }
            }
            return result;
        }

        /// <summary>
        /// 发送邮箱消息
        /// </summary>
        /// <param name="mailTo">发送的用户集合</param>
        /// <param name="subject">标题</param>
        /// <param name="body">内容</param>
        /// <returns></returns>
        public int SendSMSMailCode(string[] mailTo, string subject, string body)
        {
            bool IsSource = ApiHelper.MailSend(mailTo, subject, body);

            if (!IsSource) { return -1; }
            //添加记录Ver
            verApp.SaveVerCode(ApiHelper.CreateRandom(6, 36, ""), body, mailTo[0]);
            return 0;
        }

    }
}
