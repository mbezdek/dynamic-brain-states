

% 'loess' smoothing = local regression using weighted linear least squares
% and a 2nd degree polynomial model. 10 percent span.
chasemeans=smooth(chasemean,.1,'loess');
concertmeans=smooth(concertmean,.1,'loess');
fieldmeans=smooth(fieldmean,.1,'loess');
heistmeans=smooth(heistmean,.1,'loess');
lessonmeans=smooth(lessonmean,.1,'loess');
meetingmeans=smooth(meetingmean,.1,'loess');
mountainmeans=smooth(mountainmean,.1,'loess');
phonemeans=smooth(phonemean,.1,'loess');
searchmeans=smooth(searchmean,.1,'loess');
spaceshipmeans=smooth(spaceshipmean,.1,'loess');
chasedeltas=smooth(chasedelta,.1,'loess');
concertdeltas=smooth(concertdelta,.1,'loess');
fielddeltas=smooth(fielddelta,.1,'loess');
heistdeltas=smooth(heistdelta,.1,'loess');
lessondeltas=smooth(lessondelta,.1,'loess');
meetingdeltas=smooth(meetingdelta,.1,'loess');
mountaindeltas=smooth(mountaindelta,.1,'loess');
phonedeltas=smooth(phonedelta,.1,'loess');
searchdeltas=smooth(searchdelta,.1,'loess');
spaceshipdeltas=smooth(spaceshipdelta,.1,'loess');

% The 'locs' arrays contain the locations of the top peaks in descending
% order. Take the first 5 and leave out any within he first or last 10
% values for each movie.

[chasemeanpks,chasemeanlocs]=findpeaks(chasemeans,'sortstr','descend');
[concertmeanpks,concertmeanlocs]=findpeaks(concertmeans,'sortstr','descend');
[fieldmeanpks,fieldmeanlocs]=findpeaks(fieldmeans,'sortstr','descend');
[heistmeanpks,heistmeanlocs]=findpeaks(heistmeans,'sortstr','descend');
[lessonmeanpks,lessonmeanlocs]=findpeaks(lessonmeans,'sortstr','descend');
[meetingmeanpks,meetingmeanlocs]=findpeaks(meetingmeans,'sortstr','descend');
[mountainmeanpks,mountainmeanlocs]=findpeaks(mountainmeans,'sortstr','descend');
[phonemeanpks,phonemeanlocs]=findpeaks(phonemeans,'sortstr','descend');
[searchmeanpks,searchmeanlocs]=findpeaks(searchmeans,'sortstr','descend');
[spaceshipmeanpks,spaceshipmeanlocs]=findpeaks(spaceshipmeans,'sortstr','descend');

[chasedeltapks,chasedeltalocs]=findpeaks(chasedeltas,'sortstr','descend');
[concertdeltapks,concertdeltalocs]=findpeaks(concertdeltas,'sortstr','descend');
[fielddeltapks,fielddeltalocs]=findpeaks(fielddeltas,'sortstr','descend');
[heistdeltapks,heistdeltalocs]=findpeaks(heistdeltas,'sortstr','descend');
[lessondeltapks,lessondeltalocs]=findpeaks(lessondeltas,'sortstr','descend');
[meetingdeltapks,meetingdeltalocs]=findpeaks(meetingdeltas,'sortstr','descend');
[mountaindeltapks,mountaindeltalocs]=findpeaks(mountaindeltas,'sortstr','descend');
[phonedeltapks,phonedeltalocs]=findpeaks(phonedeltas,'sortstr','descend');
[searchdeltapks,searchdeltalocs]=findpeaks(searchdeltas,'sortstr','descend');
[spaceshipdeltapks,spaceshipdeltalocs]=findpeaks(spaceshipdeltas,'sortstr','descend');


all_delta_peaks = [chasedeltapks(1:13) concertdeltapks(1:13) fielddeltapks(1:13) heistdeltapks(1:13) lessondeltapks(1:13) meetingdeltapks(1:13) mountaindeltapks(1:13) phonedeltapks(1:13) searchdeltapks(1:13) spaceshipdeltapks(1:13)];

all_delta_locs = [chasedeltalocs(1:13) concertdeltalocs(1:13) fielddeltalocs(1:13) heistdeltalocs(1:13) ...
    lessondeltalocs(1:13) meetingdeltalocs(1:13) mountaindeltalocs(1:13) phonedeltalocs(1:13) searchdeltalocs(1:13) spaceshipdeltalocs(1:13)];

all_delta_valleys = [nchasedeltapks(1:13) nconcertdeltapks(1:13) nfielddeltapks(1:13) nheistdeltapks(1:13) ...
    nlessondeltapks(1:13) nmeetingdeltapks(1:13) nmountaindeltapks(1:13) nphonedeltapks(1:13) nsearchdeltapks(1:13) nspaceshipdeltapks(1:13)];

all_delta_valley_locs = [nchasedeltalocs(1:13) nconcertdeltalocs(1:13) nfielddeltalocs(1:13) nheistdeltalocs(1:13) ...
    nlessondeltalocs(1:13) nmeetingdeltalocs(1:13) nmountaindeltalocs(1:13) nphonedeltalocs(1:13) nsearchdeltalocs(1:13) nspaceshipdeltalocs(1:13)];

% Do the same for the inverse functions to find the valleys.

nchasemean=chasemean*-1;
nconcertmean=concertmean*-1;
nfieldmean=fieldmean*-1;
nheistmean=heistmean*-1;
nlessonmean=lessonmean*-1;
nmeetingmean=meetingmean*-1;
nmountainmean=mountainmean*-1;
nphonemean=phonemean*-1;
nsearchmean=searchmean*-1;
nspaceshipmean=spaceshipmean*-1;
nchasedelta=chasedelta*-1;
nconcertdelta=concertdelta*-1;
nfielddelta=fielddelta*-1;
nheistdelta=heistdelta*-1;
nlessondelta=lessondelta*-1;
nmeetingdelta=meetingdelta*-1;
nmountaindelta=mountaindelta*-1;
nphonedelta=phonedelta*-1;
nsearchdelta=searchdelta*-1;
nspaceshipdelta=spaceshipdelta*-1;

% 'loess' smoothing = local regression using weighted linear least squares
% and a 2nd degree polynomial model. 10 percent span.
nchasemeans=smooth(nchasemean,.1,'loess');
nconcertmeans=smooth(nconcertmean,.1,'loess');
nfieldmeans=smooth(nfieldmean,.1,'loess');
nheistmeans=smooth(nheistmean,.1,'loess');
nlessonmeans=smooth(nlessonmean,.1,'loess');
nmeetingmeans=smooth(nmeetingmean,.1,'loess');
nmountainmeans=smooth(nmountainmean,.1,'loess');
nphonemeans=smooth(nphonemean,.1,'loess');
nsearchmeans=smooth(nsearchmean,.1,'loess');
nspaceshipmeans=smooth(nspaceshipmean,.1,'loess');
nchasedeltas=smooth(nchasedelta,.1,'loess');
nconcertdeltas=smooth(nconcertdelta,.1,'loess');
nfielddeltas=smooth(nfielddelta,.1,'loess');
nheistdeltas=smooth(nheistdelta,.1,'loess');
nlessondeltas=smooth(nlessondelta,.1,'loess');
nmeetingdeltas=smooth(nmeetingdelta,.1,'loess');
nmountaindeltas=smooth(nmountaindelta,.1,'loess');
nphonedeltas=smooth(nphonedelta,.1,'loess');
nsearchdeltas=smooth(nsearchdelta,.1,'loess');
nspaceshipdeltas=smooth(nspaceshipdelta,.1,'loess');

% The 'locs' arrays contain the locations of the top peaks in descending
% order. Take the first 5 and leave out any within he first or last 10
% values for each movie.

[nchasemeanpks,nchasemeanlocs]=findpeaks(nchasemeans,'sortstr','descend');
[nconcertmeanpks,nconcertmeanlocs]=findpeaks(nconcertmeans,'sortstr','descend');
[nfieldmeanpks,nfieldmeanlocs]=findpeaks(nfieldmeans,'sortstr','descend');
[nheistmeanpks,nheistmeanlocs]=findpeaks(nheistmeans,'sortstr','descend');
[nlessonmeanpks,nlessonmeanlocs]=findpeaks(nlessonmeans,'sortstr','descend');
[nmeetingmeanpks,nmeetingmeanlocs]=findpeaks(nmeetingmeans,'sortstr','descend');
[nmountainmeanpks,nmountainmeanlocs]=findpeaks(nmountainmeans,'sortstr','descend');
[nphonemeanpks,nphonemeanlocs]=findpeaks(nphonemeans,'sortstr','descend');
[nsearchmeanpks,nsearchmeanlocs]=findpeaks(nsearchmeans,'sortstr','descend');
[nspaceshipmeanpks,nspaceshipmeanlocs]=findpeaks(nspaceshipmeans,'sortstr','descend');

[nchasedeltapks,nchasedeltalocs]=findpeaks(nchasedeltas,'sortstr','descend');
[nconcertdeltapks,nconcertdeltalocs]=findpeaks(nconcertdeltas,'sortstr','descend');
[nfielddeltapks,nfielddeltalocs]=findpeaks(nfielddeltas,'sortstr','descend');
[nheistdeltapks,nheistdeltalocs]=findpeaks(nheistdeltas,'sortstr','descend');
[nlessondeltapks,nlessondeltalocs]=findpeaks(nlessondeltas,'sortstr','descend');
[nmeetingdeltapks,nmeetingdeltalocs]=findpeaks(nmeetingdeltas,'sortstr','descend');
[nmountaindeltapks,nmountaindeltalocs]=findpeaks(nmountaindeltas,'sortstr','descend');
[nphonedeltapks,nphonedeltalocs]=findpeaks(nphonedeltas,'sortstr','descend');
[nsearchdeltapks,nsearchdeltalocs]=findpeaks(nsearchdeltas,'sortstr','descend');
[nspaceshipdeltapks,nspaceshipdeltalocs]=findpeaks(nspaceshipdeltas,'sortstr','descend');



