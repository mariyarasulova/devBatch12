candidayes.companyName = 'Softinnovas';
system.debug('start count candidates+> '+ candidayes.countCandidates);
candidayes c1 = new candidayes();
candidayes.countCandidates++;
c1.name = 'Jerry';
c1.gender = 'Male';
c1.printCandidates();
system.debug('----------');


candidayes c2 = new candidayes();
candidayes.countCandidates++;
c2.name = 'Elaine';
c2.gender = 'Female';
c2.printCandidates();
system.debug('----------');

candidayes.companyName = ' Vandelay Industries';
candidayes c3 = new candidayes();
candidayes.countCandidates++;
c3.name = 'Mariya';
c3.gender = 'Female';

c3.printCandidates();


system.debug('----------');
candidayes.printCandidateInfo();
system.debug('end count candidates+> '+ candidayes.countCandidates);
