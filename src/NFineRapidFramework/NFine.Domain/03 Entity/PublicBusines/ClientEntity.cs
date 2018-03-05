using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NFine.Domain.Entity.PublicBusines
{

    /// <summary>
    /// APP用户
    /// </summary>
    public class ClientEntity : IEntity<ClientEntity>, ICreationAudited
    {
        public string F_Id { get; set; }
        public string F_CreatorUserId { get; set; }
        public DateTime? F_CreatorTime { get; set; }
        /// <summary>
        /// 账号
        /// </summary>
        public string accountNo { get; set; }

        /// <summary>
        /// 昵称
        /// </summary>
        public string nickName { get; set; }

        /// <summary>
        /// 手机号码
        /// </summary>
        public string mobile { get; set; }

        /// <summary>
        /// 邮箱
        /// </summary>
        public string email { get; set; }

        /// <summary>
        /// 头像
        /// </summary>
        public string headImg { get; set; }

        /// <summary>
        /// 在线状态0-不在线,1-在线
        /// </summary>
        public int online { get; set; }

        /// <summary>
        /// 年龄
        /// </summary>
        public int age { get; set; }

        /// <summary>
        /// 性别
        /// </summary>
        public int gender { get; set; }

        /// <summary>
        /// 密码
        /// </summary>
        public string passWord { get; set; }

        /// <summary>
        /// 角色
        /// </summary>
        public string role { get; set; }

        /// <summary>
        /// 身份证
        /// </summary>
        public string idCard { get; set; }

        /// <summary>
        /// 微信号
        /// </summary>
        public string wx_no { get; set; }

        /// <summary>
        /// QQ号
        /// </summary>
        public string qq_no { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string remark { get; set; }

    }
}
