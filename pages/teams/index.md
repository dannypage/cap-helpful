```sql teams
select
    name,
    '/teams/' || name as team_link,
from motherduck.teams
group by name
```

<DataTable
    data={teams}
    link=team_link
/>