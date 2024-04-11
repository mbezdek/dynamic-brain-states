%REST

subjects = {'pilot1';'pilot2';'301';'302';'305';'306';'307';'308';'309';'310';'312';'313'};
masterarray=[];
for s = 1:12
    subj = subjects{s};
    allarray = [];
    runfile = [subj '.REST.networks.1D'];
    adder = load(runfile,'-ascii');
    %remove zero rows
    adder(all(adder==0,2),:)=[];
    adder = zscore(adder);
    len=length(adder);
    for j = 1:len
        dist1=pdist2(adder(j,:),cent5(1,:));
        dist2=pdist2(adder(j,:),cent5(2,:));
        dist3=pdist2(adder(j,:),cent5(3,:));
        dist4=pdist2(adder(j,:),cent5(4,:));
        dist5=pdist2(adder(j,:),cent5(5,:));
        [C,I]=min([dist1 dist2 dist3 dist4 dist5]);
        allarray = [allarray; I];
    end
    masterarray = [masterarray; 0; allarray];
end
save('masterarray.txt','masterarray','-ascii')

%TASK
subjects = {'pilot1';'pilot2';'301';'302';'305';'306';'308';'309';'310';'311';'312';'313'};
masterarray=[];
for s = 1:12
    subj = subjects{s};
    allarray = [];
    runfile = [subj '.REST.networks.1D'];
    adder = load(runfile,'-ascii');
    len=length(adder);
    for j = 1:len
        dist1=pdist2(adder(j,:),cent5(1,:));
        dist2=pdist2(adder(j,:),cent5(2,:));
        dist3=pdist2(adder(j,:),cent5(3,:));
        dist4=pdist2(adder(j,:),cent5(4,:));
        dist5=pdist2(adder(j,:),cent5(5,:));
        [C,I]=min([dist1 dist2 dist3 dist4 dist5]);
        allarray = [allarray; I];
    end
    masterarray = [masterarray allarray];
end
