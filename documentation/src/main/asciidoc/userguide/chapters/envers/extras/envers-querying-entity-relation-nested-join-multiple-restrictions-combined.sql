select
    cu.id as id1_5_,
    cu.REV as REV2_5_,
    cu.REVTYPE as REVTYPE3_5_,
    cu.REVEND as REVEND4_5_,
    cu.created_on as created_5_5_,
    cu.firstName as firstNam6_5_,
    cu.lastName as lastName7_5_,
    cu.address_id as address_8_5_
from
    Customer_AUD cu
inner join
    Address_AUD a
        on (
            cu.address_id=a.id
            or (
                cu.address_id is null
            )
            and (
                a.id is null
            )
        )
inner join
    Country_AUD cr
        on (
            a.country_id=cr.id
            or (
                a.country_id is null
            )
            and (
                cr.id is null
            )
        )
where
    cu.REV<=?
    and cu.REVTYPE<>?
    and a.city=cr.name
    and (
        cu.REVEND>?
        or cu.REVEND is null
    )
    and a.REV<=?
    and (
        a.REVEND>?
        or a.REVEND is null
    )
    and cr.REV<=?
    and (
        cr.REVEND>?
        or cr.REVEND is null
    )

-- binding parameter [1] as [INTEGER] - [2]
-- binding parameter [2] as [INTEGER] - [2]
-- binding parameter [3] as [INTEGER] - [2]
-- binding parameter [4] as [INTEGER] - [2]
-- binding parameter [5] as [INTEGER] - [2]
-- binding parameter [6] as [INTEGER] - [2]
-- binding parameter [7] as [INTEGER] - [2]