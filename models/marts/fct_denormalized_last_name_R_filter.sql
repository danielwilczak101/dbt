with
    filtered as (select * from {{ref('int_filtered_to_last_name_R')}}),
    people as (select * from {{hidden_ref('seed_people')}}),

    denormalized as (
        select
            people.first_name,
            people.last_name
        from
            filtered
        left join
            people
                using(id)
    )

select * from denormalized
