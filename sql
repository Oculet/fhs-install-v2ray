select pmdt006 料号,imaal003 品名,pmdsdocno 入库单号,pmds007 采购供应商编号,pmaal004 采购供应商简称,pmds001,pmdt001 采购单号,pmdt002 采购项次,pmdt018,pmdt020 入库数量,nvl(pmdt038,0)*nvl(pmds038,0) 入库未税金额,case when nvl(pmdt020,0)=0 then 0 else nvl(pmdt038,0)*nvl(pmds038,0)/pmdt020 end 入库未税单价 from pmds_t
left join pmdt_t on pmdsent=pmdtent and pmdssite=pmdtsite and pmdsdocno=pmdtdocno
left join imaa_t on pmdtent=imaaent and pmdt006=imaa001
left join imaal_t on pmdtent=imaalent and pmdt006=imaal001 and imaal002='zh_CN'
left join pmaal_t on pmdsent=pmaalent and pmds007=pmaal001 and pmaal002='zh_CN'
left join pmaa_t on pmdsent=pmaaent and pmds007=pmaa001  
where pmdsent=11 and pmdssite in ('${site}') and pmdsstus='S' and imaa009='YL001' and to_char(pmds001,'yyyy-mm') between '${bbdate}' and '${bedate}'
and pmaa047<>'Y' 
and pmds011=${cgtype}
