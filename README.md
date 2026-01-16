# Projet Flutter + Firebase

Ce projet est un exemple simple réalisé pour apprendre l'intégration de
Flutter avec Firebase (Auth, Firestore, Storage, etc.). Il contient des
écrans basiques pour afficher et ajouter des événements.

**Fonctionnalités incluses**
- Stockage d'événements dans Firestore
- Pages : ajout d'événement, liste d'événements, page d'accueil

**Fichiers clés**
- `lib/main.dart` : point d'entrée de l'application
- `lib/pages/home_page.dart`, `lib/pages/events_page.dart`, `lib/pages/add_event_page.dart`

**Screenshoot**


**Prérequis**
- Flutter installé (stable)
- Compte Firebase et projet Firebase configuré
- `flutterfire` CLI (optionnel, recommandé)

Installation et exécution

1. Récupérer les dépendances :

```bash
flutter pub get
```

2. Configurer Firebase pour le projet :

```bash
# Exemple : configurer avec flutterfire (remplacez le nom de projet)
flutterfire configure --project=conf-flutter
```

Cela génère `lib/firebase_options.dart` et met à jour les fichiers natifs.

3. (Android / iOS) Ajouter les fichiers de configuration côté natif :

- Android : placez `google-services.json` dans `android/app/`
- iOS : placez `GoogleService-Info.plist` dans `ios/Runner/`

4. Lancer l'application :

```bash
flutter run
```


Ressources utiles
- Documentation Flutter : https://docs.flutter.dev/
- Documentation Firebase for Flutter : https://firebase.flutter.dev/