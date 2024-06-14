```sql players
select
    name,
    position,
    contract
from motherduck.players
order by contract
```

<Dropdown 
multiple=true data={players} name=position value=position 
defaultValue={['D', 'F', 'G']}
/>

```sql filtered_query
select *, '/players/' || name as player_link,
from players
where position in ${inputs.position.value}
```

<DataTable
    data={filtered_query}
    link=player_link
/>