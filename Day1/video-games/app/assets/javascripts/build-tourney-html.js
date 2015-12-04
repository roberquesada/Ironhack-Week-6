function buildTourneyHtml(tournament) {
  return '\
    <li data-tournament-id="' + tournament.id + '">\
      <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
      <button data-hook="tourney-delete" name="tournament" value="'+  tournament.id + '">DELETE</button>\
    </li>\
  '
}
