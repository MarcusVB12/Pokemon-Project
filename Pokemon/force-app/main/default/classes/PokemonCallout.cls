public with sharing class PokemonCallout {

    public static void getPokemonCallout(Contact contact){          
        PokemonAPI__mdt pokemonApiSettings = [SELECT EndPoint__c, Method__c FROM PokemonAPI__mdt];

        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(pokemonApiSettings.EndPoint__c);
        request.setMethod(pokemonApiSettings.Method__c);  

        HttpResponse response = http.send(request);

        String jsonBody = response.getBody();
        
        if (response.getStatusCode() == 200) {
            System.debug('JsonBody: ' + jsonBody);
        }
 

    }
}
