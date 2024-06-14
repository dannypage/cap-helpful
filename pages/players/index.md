```sql players
select
    name,
    '/players/' || name as player_link,
from motherduck.players
group by name
```

<DataTable
    data={players}
    link=player_link
/>