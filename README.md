# atelier1

Atelier rapide sur la compréhension du gestion de management riverpod

Il existe deux tags pour ce projet : `v0` (init) et `v1` (ma solution). Le tag `v0` représente l'état initial du projet, tandis que le tag `v1` contient la solution complète et fonctionnelle. Ces tags permettent de suivre l'évolution du projet et de comparer les différentes étapes de développement.

## Fonctionnement du Projet

### Installation des Dépendances
Pour commencer, vous devez installer les dépendances nécessaires. Utilisez la commande suivante pour installer toutes les dépendances listées dans le fichier `pubspec.yaml` :
```bash
flutter pub get
```

### Génération de Code

Pour générer du code à l'aide de `build_runner`, utilisez la commande suivante :
```bash
flutter pub run build_runner build -d
```
Cette commande analysera votre code et générera les fichiers nécessaires en fonction des annotations et des générateurs de code que vous avez configurés.

### Structure du Projet
Le projet est structuré de manière à séparer les différentes couches de l'application. Voici un aperçu des principaux dossiers :
- `lib/`: Contient le code source de l'application.
- `lib/models/`: Contient les modèles de données.
- `lib/logic/`: Contient les fournisseurs Riverpod.
- `lib/views/`: Contient les différentes pages de l'application.


### Exécution du Projet
Pour exécuter le projet, utilisez la commande suivante :
```bash
flutter run
```
Cette commande lancera l'application sur un émulateur ou un appareil connecté.
