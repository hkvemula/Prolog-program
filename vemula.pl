parent(jan,feb).
parent(jan,mar).
parent(feb,apr).
parent(apr,jun).
parent(mar,may).
parent(aaa,bba).
parent(aaa,bbc).
parent(aaa,bbd).
parent(bba,cca).
parent(cca,dda).
parent(cca,ddb).
parent(ddb,eee).
parent(bbd,ccb).
parent(bbd,ccd).
parent(ccd,ddc).
parent(ccd,ddd).
parent(ddd,eeb).

male(aaa).
female(bba).
male(bbc).
female(bbd).
male(cca).
male(ccb).
male(ccd).
female(dda).
male(ddb).
female(ddc).
male(ddd).
female(eee).
male(eeb).
male(jan).
female(feb).
female(mar).
female(apr).
female(may).
female(jun).
husband(ccd,may).

ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z),ancestor(Z,Y).
descendent(X,Y):- parent(Y,X).
descendent(X,Y):- parent(Y,Z),descendent(X,Z).
motherinlaw(X,Y):-parent(X,Z),husband(Z,Y),female(X).
motherinlaw(X,Y):-parent(X,Z),husband(Y,Z),female(X).
nephew(X,Y):- male(X),parent(Z,X),parent(M,Z),parent(M,Y),Z\==Y.

