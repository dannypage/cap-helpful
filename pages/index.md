---
title: CapHelpful
---

An open-source implementation of CapFriendly. Fake data, real schemas!

# Cap Space

```sql teams
select
    name,
    total_cap,
    total_signed,
    remaining_space,
    '/teams/' || name as team_link
from motherduck.team_with_contracts
```

<DataTable data={teams} link=team_link/>

