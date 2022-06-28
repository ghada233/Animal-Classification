% Animals' general features
% خصائص الحيوانات
%feature(X,Y)

feature(animal,can_move). 
feature(animal,has_no_cell_walls). 
feature(animal,is_heterotrophic). 
feature(animal,can_reproduce). 
feature(animal,can_respond_to_external_stimuli).

% خصائص المجموعات
% Groups' features
feature(vertebrate,has_backbone). 
feature(invertebrate,has_not_backbone). 

% خصائص الكلاسات للفقاريات
% vertebrate classes features
feature(mammal,covered_with_fluff).
feature(bird,covered_with_feather). 
feature(reptile,covered_with_conjunival_scale). 
feature(amphibian,has_bare_skin). 
feature(fish,covered_with_Unconsolidated_scales). 

%خصائص الكلاسات للافقاريات
% invertebrate classes features

feature(echinoderm,has_thorns). 
feature(arthropod,has_segmented_body). 
feature(mollusque,has_elastic_body).  
feature(worm,has_elognated_body). 
feature(sponge,has_pores_and_channels).
feature(cnidaria,has_stinging_cells).

% Mamal species features
% خصائص الأنواع للثديات

feature(camel,stores_water).
feature(camel, has_hump). 
feature(wolf, lives_in_a_flock). 
feature(wolf,is_Intelligent).

% خصائص الأنواع للطيور
% Bird species features

feature(falcon, has_high_visual_acuity). 
feature(hawk, eats_garbage).

%خصائص الأنواع للزواحف
% Reptile species  features

feature(lizard,has_sharp_teeth). 
feature(snake,has_high_sense_of_smell). 

%خصائص الأنواع للبرمائيات
% Amphibian species  features
feature(frog,moves_by_jumping). 
feature(toad,has_dry_skin). 

%خصائص الأنواع للأسماك
% fish species  features
feature(grouper,withstands_harsh_conditions). 
feature(lion_fish , thorns_13).

%Invertebrate species features
%خصائص الأنواع للافقاريات
% echinoderm species features
% خصائص الأنواع لشوكيات الجلد

feature(sea_urchin,round).
feature(see_star,has_five_arms).

% arthropod species features
% خصائص الأنواع للمفصليات

feature(scorpio,has_tail).
feature(shrimp,has_claws).
% Mollusque species features
% خصائص الأنواع للرخويات

feature(snail,has_a_slow_motion).
feature(oyster,produce_pearls).
% worm species features
% خصائص الأنواع للديدان

feature(earthworm,can_burrow_in_the_ground).
feature(leetche,have_suckers).

% sponge species features
% خصائص الأنواع للإسفجنيات

feature(chalinula,has_vived_blue_color).

%cnidaria_species_features
% خصائص الأنواع للاسعات

feature(jellyfish,has_bag_like_body).
feature(coral,filled_with_seaLife).

%taxonomy_tree
taxonomy(vertebrate, animal).
taxonomy(invertebrate, animal). 
taxonomy(mammal,vertebrate).
taxonomy(bird,vertebrate).
taxonomy(reptile,vertebrate).
taxonomy(amphibian,vertebrate).
taxonomy(fish,vertebrate).
taxonomy(wolf,mammal).
taxonomy(camel,mammal).
taxonomy(falcon,bird).
taxonomy(hawk,bird).
taxonomy(lizard,reptile).
taxonomy(snake,reptile).
taxonomy(frog,amphibian).
taxonomy(toad,amphibian).
taxonomy(grouper,fish).
taxonomy(lion_fish,fish).
taxonomy(echinoderm, invertebrate). 
taxonomy(arthropod, invertebrate). 
taxonomy(mollusque, invertebrate). 
taxonomy(worm, invertebrate). 
taxonomy(sponge, invertebrate).  
taxonomy(cnidaria, invertebrate).
taxonomy(sea_urchin,echinoderm). 
taxonomy(see_star,echinoderm).
taxonomy(scorpio,arthropod). 
taxonomy(shrimp,arthropod). 
taxonomy(snail,mollusque). 
taxonomy(oyster,mollusque). 
taxonomy(earthworm ,worm). 
taxonomy(leetche ,worm). 
taxonomy(jellyfish,cnidaria). 
taxonomy(coral,cnidaria).
taxonomy(chalinula,sponge). 
 
% Rules to find species or/and classes or/and groups or/and define animal 
% based on a gived feature
% القواعد لإيجاد النوع أو الكلاس أو المجموعات حسب الصفة المدخلة
find(A,B,C,D,E):-feature(A,B),taxonomy(A,C),taxonomy(C,D),taxonomy(D,E).
findClass(B,C,D,E):-feature(C,B),taxonomy(C,D),taxonomy(D,E).
findGroup(B,D,E):-feature(D,B),taxonomy(D,E).
findKingdom(B,E):-feature(E,B).

/*
 		*GUESS THE ANIMAL GAME*
 
 Guessing game predicate, it displays the available features.
 The player can think of an animal that lives in Saudi Arabia and
 enter its feature.
 the predicate will search the specie first, if its not there,
 it will search in the next level, class and so on until it find a match
 if there is no feature match in any level, it will display not exist
 User can play the guessing game again or can exit.
 
 this whole predicate depends on passing arguements or variables
 in which are:
 A: specie
 B: feature
 C: class
 D: group
 E: animal kingdom
 
*/

guess(A,B,C,D,E):-( 
     write('Choose in your head any specie or 
            any class or any group that lives in Saudi Arabia and I will guess!'),
         
    nl, write('*the animal must have a feature from this list*'), nl,
                  
    write('can_move'),nl,
	write('has_no_cell_walls'),nl,
	write('is_heterotrophic'),nl,
	write('can_respond_to_external_stimuli'),nl,
	write('has_not_backbone'),nl,
	write('has_thorns'),nl,
	write('has_segmented_body'),nl,
	write('has_elastic_body'),nl,
	write('has_elognated_body'),nl,
	write('has_pores_and_channels'),nl,
	write('has_stinging_cells'),nl,
	write('round'),nl,
	write('has_five_arms'),nl,
	write('has_tail'),nl,
	write('has_claws'),nl,
	write('has_a_slow_motion'),nl,
	write('produce_pearls'),nl,
	write('can_burrow_in_the_ground'),nl,
	write('have_suckers'),nl,
	write('has_vivid_blue_color'),nl,
	write('has_bag_like_body'),nl,
	write('filled_with_seaLife'),nl,
	write('has_backbone'),nl,
	write('covered_with_fluff'),nl,
	write('covered_with_feather'),nl,
	write('covered_with_conjunival_scale'),nl,
	write('has_bare_skin'),nl,
	write('covered_with_Unconsolidated_scales'),nl,
	write('stores_water'),nl,
	write('has_hump'),nl,
	write('lives_in_a_flock'),nl,
	write('is_Intelligent'),nl,
	write('has_high_visual_acuity'),nl,
	write('eats_garbage'),nl,
	write('has_sharp_teeth'),nl,
	write('has_high_sense_of_smell'),nl,
	write('moves_by_jumping'),nl,
	write('has_dry_skin'),nl,
	write('withstands_harsh_conditions'),nl,
	write('thorns_13'),nl,   
                  
  write('please enter the feature of the animal you chose'),nl,
                      read(B),
( find(A,B,C,D,E) -> (   write('The animal is '), write(A),nl,
    write(' which is from the class '),write(C),nl,
    write('  from group   '),write(D),nl,
    write(' verifying that it is  '),write(E),!);
                  
    findClass(B,C,D,E)->(    write('  the class is '),write(C),
     write('  from group   '),write(D),nl,
    write(' verifying that it is  '),write(E),nl,!);
    
    findGroup(B,D,E)->(     write(' the animal is from group '),write(D),
    write('and is an animal '),nl,!);
    
     findKingdom(B,E)->(     write('is an animal'),!);
    write('animal does not exist  or I did not learn ')
     
        

    ),playA).

play:- guess(X,Y,C,D,E),(taxonomy(X,C);taxonomy(C,D);taxonomy(D,E)),feature(X,Y).

playA:-nl,write('do you want to play again? enter y or n')
    ,nl,read(A),(A='y'->play,!;A='n'->write('Thank you'),!).
