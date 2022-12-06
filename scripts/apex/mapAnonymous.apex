map<string, string> mapCntCurrency = new map<string,string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rs');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Germany', 'Euro');

mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('Russia', 'Rubl');
system.debug('map of country and currency ' + mapCntCurrency );

string IndiaCurrency = mapCntCurrency.get('India');
string TurkeyCurrency = mapCntCurrency.get('Turkiye');

system.debug('India currency = ' +IndiaCurrency);
system.debug('Turkiye currency = ' + TurkeyCurrency);
string country = 'Turkiye';
string countryCurrency = mapCntCurrency.get(country);
system.debug(country + ' currency is ...' + countryCurrency);

set <string> countrySet = mapCntCurrency.keySet();
system.debug(' set of country is...' +countrySet);

list<string> currencyList = mapCntCurrency.values();
system.debug('currency list is...' +currencyList);

set <string> countries = mapCntCurrency.keySet();
for(string eachCountry : countries){
    system.debug('* each country is ' +eachCountry);
    string eachCurrency = mapCntCurrency.get(eachCountry);
    system.debug(' ** each currency is ' + eachCurrency);
    system.debug('country is '+ eachCountry + ', its currency is ' +eachCurrency);
}



