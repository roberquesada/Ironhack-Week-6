function deleteTournament(event) {
  var tournamentId = $(event.currentTarget).val();
  console.log(tournamentId);
  var request = $.ajax({
        url: '/api/tournaments',
        type: 'DELETE',
        data: {id: tournamentId},
        success: function(response) {
          $('[data-tournament-id=' + response.id + ']').remove();
        }
      });
}
