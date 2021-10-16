﻿using Suggession.Models.Interface;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Suggession.Models
{
    [Table("KPIScore")]
    public class KPIScore: IDateTracking
    {
        [Key]
        public int Id { get; set; }
        public int Period { get; set; }
        public double Point { get; set; }
        public int PeriodTypeId { get; set; }
        [MaxLength(50)]
        public string ScoreType { get; set; }
        public int AccountId  { get; set; }
        public int ScoreBy { get; set; }
        public DateTime CreatedTime { get; set; }
        public DateTime? ModifiedTime { get; set; }

        [ForeignKey(nameof(AccountId))]
        public virtual Account Account { get; set; }

        [ForeignKey(nameof(PeriodTypeId))]
        public virtual PeriodType PeriodType { get; set; }

        [ForeignKey(nameof(ScoreBy))]
        public virtual Account AccountScored { get; set; }
    }
}