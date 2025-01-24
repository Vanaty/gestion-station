 // Initialiser la carte
 var map = L.map('map').setView([-19.3570,  47.4362], 9); // Paris
 // Ajouter une couche OpenStreetMap
 L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
     attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
 }).addTo(map);
 
var longitude=0;
var lattitude=0;

map.on('click',function(event){
    longitude=event.latlng.lng;
    lattitude=event.latlng.lat;
    console.log(longitude+" "+lattitude);
})

function init() {
 /* Ajouter les maisons */
 console.log("Salut hello!!!!!!");
 
 afficheMaison();
 /* Ajouter les arrondissements */
 afficheArrondissement();
}

function afficheMaison() {
 console.log("Niditra tato @ Maison");
 
 fetch('http://localhost:8080/station/ListeMaisonServlet')
     .then(response => response.json()) // Convertir la réponse en JSON
     .then(data => {
         // Ajouter un marqueur pour chaque maison récupérée
         data.forEach(function(maison) {
             var lat = parseFloat(maison.LATITUDE);
             var lon = parseFloat(maison.LONGITUDE);

             // Ajouter un marqueur sur la carte
             L.marker([lat, lon])
                 .addTo(map)
                 .bindPopup("<button onclick=\"window.open('module.jsp?but=impot/formPayment.jsp?idMaison="+maison.IDMAISON+"')\">Payer impot</button>");
         });
     })
     .catch(error => {
         console.error('Erreur lors de la récupération des données:', error);
     });
}

function listeImpot(idArrondissement){
    window.open(`module.jsp?but=liste.jsp&idArrondissement=${idArrondissement}&annee=2025}`);
}

function ajouterMaison(idArrondissement){
    window.open(`module.jsp?but=insertionMaison&longitude=${longitude}&lattitude=${lattitude}`);
}

function afficheArrondissement() {
 fetch("http://localhost:8080/station/ListeArrondissementServlet")
     .then(response => response.json())
     .then(data => { 
         console.log("Données reçues :", data);
         data.forEach(arrondissement => {
             // Convertir les coordonnées de chaîne en tableau
             const coordinates = JSON.parse(arrondissement.COORDINATES);
             // Ajouter un polygone sur la carte
             console.log("Les coordonnees de " + arrondissement.ID + " est ", coordinates);

             // Résultat
             const polygon =  L.polygon(
             coordinates, {
                 color: 'red',
                 weight: 2,
                 fillColor: '#3388ff',
                 fillOpacity: 0.5,
             })
                 .addTo(map)
                 .bindPopup(`
                    <button onclick="listeImpot(window.open('module.jsp?but=impot/liste.jsp&idArrondissement=${arrondissement.ID}&annee=2025'))">impot</button>`);
                 //.bindPopup(`<b>${arrondissement.NOM}</b><br>ID: ${arrondissement.ID}`);
                 console.log("Les coordonnees de " + arrondissement.NOM + " est ", coordinates);
                 
                 polygon.on('click', () => {
                     console.log(`Polygon ${arrondissement.ID} clicked!`);
                    sendArrondissementId(arrondissement.ID);
                 });

             });
     })
     .catch(error => {
         console.error('Erreur lors de la récupération des données:', error);
     });
}

// Fonction pour envoyer l'ID au servlet via POST
function sendArrondissementId(id) {
  fetch("http://localhost:8080/station/ListeArrondissementServlet", {
      method: "POST",
      headers: {
          "Content-Type": "application/x-www-form-urlencoded",
     },
      body: `id=${encodeURIComponent(id) }`,
  })
  .then(response => {
      if (response.ok) {
          console.log(`ID ${id} envoyé avec succès !`);
      } else {
          console.error('Erreur lors de l\'envoi de l\'ID:', response.statusText);
        }

    return response.json();
    })
    .then( data => {
        console.log("Les Maison la dedans sont "+data);
    }
    )
    .catch(error => {
        console.error('Erreur réseau:', error);
    });
}

init();