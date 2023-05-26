with
    people as (select * from {{ref('seed_people')}}),

    filtered as (
        select
            id
        from
            people
        where
            startswith(last_name, 'R')
    )

select * from filtered
