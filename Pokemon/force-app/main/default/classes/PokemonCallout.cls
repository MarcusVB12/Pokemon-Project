public with sharing class PokemonCallout {

    public static PokemonWrapper.PokemonDetailWrapper getPokemonCallout(String pokemon){          
        PokemonAPI__mdt pokemonApiSettings = [SELECT EndPoint__c, Method__c FROM PokemonAPI__mdt];
        
        String endPointPokemon = pokemonApiSettings.EndPoint__c + pokemon.ToLowercase();
        PokemonWrapper.PokemonDetailWrapper pokemonDetails = new PokemonWrapper.PokemonDetailWrapper();

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setEndpoint(endPointPokemon);
        request.setMethod(pokemonApiSettings.Method__c);  

        HttpResponse response = http.send(request);

        String jsonBody = response.getBody();
        
        if (response.getStatusCode() == 200 && jsonBody != null) {       
            return pokemonDetails = (PokemonWrapper.PokemonDetailWrapper) JSON.deserialize(jsonBody, PokemonWrapper.PokemonDetailWrapper.class);
        }else{
            pokemonDetails.Erro.erro = 'F';
            return pokemonDetails;
        }
    }
}
