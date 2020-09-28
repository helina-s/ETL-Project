-- create table ins_data (
-- 	policy_number varchar not null,
-- 	premium_written varchar not null,
-- 	premium_earned varchar not null,
-- 	premium_unearned varchar not null,
-- 	state_of_coverage varchar not null,
-- 	line_of_business varchar not null,
-- 	effective_date date not null,
-- 	expiration_date date not null,
-- 	commission_rate varchar not null,
-- 	new_or_renewal varchar not null,
-- 	agent_name varchar not null,
-- 	state_tax_rate varchar not null primary key,
-- 	commission_basis varchar not null,
-- 	reinsurance_premium_rate varchar not null
-- );

-- create table tax_data (
-- 	state_of_coverage varchar not null,
-- 	state_tax_rate varchar not null primary key
-- );

select ins_data.state_tax_rate, ins_data.policy_number, ins_data.premium_written,ins_data.premium_earned,
	ins_data.premium_unearned,ins_data.state_of_coverage,ins_data.line_of_business,ins_data.effective_date,ins_data.expiration_date,
	ins_data.commission_rate,ins_data.new_or_renewal,ins_data.agent_name,ins_data.state_tax_rate,ins_data.commission_basis,
	ins_data.reinsurance_premium_rate
from ins_data
join tax_data
on ins_data.state_tax_rate = tax_data.state_tax_rate
