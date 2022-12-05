Candidates.CompanyName = 'SoftInnovas';
Candidates.PrintCandidateInfo();
system.debug('START count of candidates = ' + Candidates.countCandidates);

Candidates c1 = new Candidates();
Candidates.countCandidates++;
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
Candidates.countCandidates++;
c2.Name = 'Elaine';
c2.Gender = 'Female';
c2.printCandidate();


Candidates.CompanyName = 'Vandelay Industries';

Candidates c3 = new Candidates();
Candidates.countCandidates++;
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidate();

system.debug('-------');
c1.printCandidate();
system.debug('-------');
c2.printCandidate();
system.debug('-------');
Candidates.printCandidateInfo();

system.debug('END count of candidates = ' + Candidates.countCandidates);