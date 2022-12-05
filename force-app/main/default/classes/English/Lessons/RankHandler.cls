public class RankHandler {
    public string RankPrize(integer rank) {
        string prize = '';
        if(rank == 1){
            prize = 'Gold';
        } else if (rank ==2 ){
            prize = 'silver';
        } else if (rank == 3){
            prize = 'Bronze';
        } else {
            if(rank <= 10)
            prize = 'Top 10 certificate';
            else {
                prize = 'Participation certificate';
            }
        }
        return prize;
    }
public string rankPrizeSwitch(integer rank){
    String prize = '';
    switch on rank {
        when 1 {
            prize = 'Gold';
        }
        when 2{
            prize = 'Silver';
        }
        when 3{
            prize = 'Bronze';
        }
        When 4,5,6,7,8,9,10{
            prize = 'Top 10 cong';

        }
        when else {
          prize  = 'Thank you for pacticipation';
        }
    }

    return prize;
}
}
