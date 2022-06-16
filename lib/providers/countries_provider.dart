import 'package:flutter/foundation.dart';
import 'package:artemis/artemis.dart';
import 'package:ivoy_challenge/data/graphql/queries/fetch_countries.graphql.dart';

class CountriesProvider extends ChangeNotifier {
  List<Country> _countries = [];
  bool _isLoading = false;

  //getters
  List<Country> get countries => _countries;
  bool get isLoading => _isLoading;

  final _client = ArtemisClient("https://countries.trevorblades.com/graphql");
  final _getAllCountriesQuery = GetAllCountriesQuery();

  // final response = await client.execute(simpleQuery);

  Future<void> getAllCountries() async {
    _changeIsLoadingToTrue();
    final response = await _client.execute(_getAllCountriesQuery);
    _countries = [...response.data!.countries];
    _changeIsLoadingToFalse();
    notifyListeners();
  }

  void _changeIsLoadingToTrue() {
    _isLoading = true;
    notifyListeners();
  }

  void _changeIsLoadingToFalse() {
    _isLoading = false;
    notifyListeners();
  }
}
