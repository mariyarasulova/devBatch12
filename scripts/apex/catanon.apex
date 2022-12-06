cat sfCat= new cat();
sfCat.name ='Snow';
sfCat.color ='White';
system.debug('sf cat ' + sfCat);
cat batch12Cat = new cat('ginger', 'white');
system.debug('batch12 cat '+ batch12Cat );
system.debug('number of cats=>' + cat.countCat);
sfCat.sleeping();