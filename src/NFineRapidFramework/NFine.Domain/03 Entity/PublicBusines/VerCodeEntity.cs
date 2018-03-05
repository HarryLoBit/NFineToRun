using System;

namespace NFine.Domain.Entity.PublicBusines
{
    /// <summary>
    /// 验证码表
    /// </summary>
    public class VerCodeEntity : IEntity<VerCodeEntity>, ICreationAudited
    {
        public string F_Id { get; set; }
        public string F_CreatorUserId { get; set; }
        public DateTime? F_CreatorTime { get; set; }
        public string mobile { get; set; }
        public string content { get; set; }
        public string code { get; set; }
        public DateTime UpdateTime { get; set; }

    }
}
