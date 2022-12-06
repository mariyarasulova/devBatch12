RankHandler rk = new RankHandler();
string p1 = rk.rankPrize(1);
system.debug( ' p1 is ' + p1);

string p2 = rk.rankPrize(2);
system.debug( ' p1 is ' + p2);

string p5 = rk.rankPrize(8);
system.debug(' p3 is ' + p5);

string p12 = rk.rankPrize(12);
system.debug( ' p4 is ' + p12);


RankHandler rk1= new RankHandler();
string pr1 = rk.rankPrizeSwitch(1);
system.debug( ' p1 is ' + pr1);

string pr2 = rk1.rankPrizeSwitch(2);
system.debug( ' p1 is ' + pr2);

string pr5 = rk1.rankPrizeSwitch(8);
system.debug(' p3 is ' + pr5);

string pr12 = rk1.rankPrizeSwitch(12);
system.debug( ' p4 is ' + pr12);