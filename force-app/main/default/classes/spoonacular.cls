public class spoonacular {
    private static final String SPOONACULAR_API = 'https://api.spoonacular.com';
    private static final String API_KEY = 'ea2f5368fb8c4fc88830cd5f64075030';
    public static void getRandomReceipe(){
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint(SPOONACULAR_API + '/recipes/random?apiKey='+ API_KEY);
request.setMethod('GET');
HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
system.debug('reponse code '+ response.getBody());
if(response.getStatusCode() == 200) {
system.debug('reponse '+ response.getBody());
    }

    }
     public static void getReceipe(String receipeId){
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint(SPOONACULAR_API + '/recipes/'+receipeId+ 'information?apiKey='+ API_KEY);
request.setMethod('GET');
HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
system.debug('reponse code '+ response.getBody());
if(response.getStatusCode() == 200) {
system.debug('reponse '+ response.getBody());
    }

    }
     public static void getReceipeByIngredient(string ingredients){
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint(SPOONACULAR_API + '/recipes/findByIngredients?apiKey='+ API_KEY +'& ingredients= '+ingredients);
request.setMethod('GET');
HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
system.debug('reponse code '+ response.getBody());
if(response.getStatusCode() == 200) {
system.debug('reponse '+ response.getBody());
    }

    }
}