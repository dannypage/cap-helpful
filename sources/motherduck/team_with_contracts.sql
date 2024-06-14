select
teams.id,teams.name,
SUM(contracts.per_year) AS total_cap,
COUNT(contracts.per_year) AS total_signed,
(leagues.max_cap_space - total_cap) as remaining_space
FROM cap_helpful.teams
LEFT JOIN cap_helpful.contracts ON teams.id = contracts.team_id
JOIN cap_helpful.leagues ON teams.league_id = leagues.id
WHERE teams.league_id = 1
GROUP BY teams.id, teams.name, leagues.max_cap_space