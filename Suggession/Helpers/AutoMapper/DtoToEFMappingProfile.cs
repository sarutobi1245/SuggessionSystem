﻿using AutoMapper;
using Suggession.DTO;
using Suggession.DTO.auth;
using Suggession.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Suggession.Helpers.AutoMapper
{
    public class DtoToEFMappingProfile : Profile
    {
        public DtoToEFMappingProfile()
        {
            CreateMap<AccountDto, Account>();
            CreateMap<TabDto, Tab>();

            CreateMap<AccountTypeDto, AccountType>()
                .ForMember(d => d.Accounts, o => o.Ignore());
            CreateMap<AccountGroupDto, AccountGroup>();

            CreateMap<PeriodDto, Period>() ;
            CreateMap<PeriodReportTimeDto, PeriodReportTime>();
            CreateMap<PlanDto, Plan>();
            CreateMap<ObjectiveDto, Objective>();
            CreateMap<ProgressDto, Progress>();
            CreateMap<MailingDto, Mailing>();
            CreateMap<ToDoListDto, ToDoList>();
            CreateMap<AccountGroupPeriodDto, AccountGroupPeriod>()
                  .ForMember(d => d.AccountGroup, o => o.Ignore())
                .ForMember(d => d.Period, o => o.Ignore())
                ;
            CreateMap<ObjectiveRequestDto, Objective>();


            CreateMap<KPIDto, KPI>();
            CreateMap<AttitudeDto, Attitude>();
            CreateMap<ResultOfMonthDto, ResultOfMonth>();
            CreateMap<UserForDetailDto, Account>();

            CreateMap<KPIScoreDto, KPIScore>();

            CreateMap<AttitudeScoreDto, AttitudeScore>();
            CreateMap<CommentDto, Comment>();
            CreateMap<ContributionDto, Contribution>();
            CreateMap<PeriodTypeDto, PeriodType>();
            CreateMap<OCDto, OC>();
            CreateMap<AccountGroupAccountDto, AccountGroupAccount>();

            CreateMap<OCAccountDto, OCAccount>();
            CreateMap<SpecialContributionScoreDto, SpecialContributionScore>();
            CreateMap<SpecialScoreDto, SpecialScore>();
            CreateMap<SmartScoreDto, SmartScore>();
            CreateMap<PerformanceDto, Performance>();
            CreateMap<PolicyDto, Policy>();
            CreateMap<KPINewDto, KPINew>();
            CreateMap<TargetYTDDto, TargetYTD>();
            CreateMap<TargetDto, Target>();
            CreateMap<ActionDto, Models.Action>();
            CreateMap<ResultDto, Result>();
            CreateMap<IdeaDto, Idea>();
            CreateMap<SettingMonthlyDto, SettingMonthly>();
        }
    }
}