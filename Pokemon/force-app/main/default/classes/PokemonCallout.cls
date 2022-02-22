public with sharing class PokemonCallout {

    public static void getPokemonCallout(Contact contact){          
        PokemonAPI__mdt pokemonApiSettings = [SELECT EndPoint__c, Method__c FROM PokemonAPI__mdt];
        
        String endPointPokemon = pokemonApiSettings.EndPoint__c + contact.favoritePokemon__c.ToLowercase();

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint(endPointPokemon);
        request.setMethod(pokemonApiSettings.Method__c);  

        HttpResponse response = http.send(request);

        String jsonBody = response.getBody();

        if (response.getStatusCode() == 200 && jsonBody != null) {       
            PokemonWrapper.PokemonDetailWrapper pokemonDetails = (PokemonWrapper.PokemonDetailWrapper) JSON.deserialize(jsonBody, PokemonWrapper.PokemonDetailWrapper.class);
            
        }

    }
}
