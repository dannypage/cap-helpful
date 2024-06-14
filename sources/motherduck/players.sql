select 
players.*, 
contracts.per_year as contract 
from cap_helpful.players
left join cap_helpful.contracts 
on players.id = contracts.player_id;