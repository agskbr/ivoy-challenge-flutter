import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/countries_provider.dart';
import '../widgets/custom_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final countries = Provider.of<CountriesProvider>(context).countries;
    final isLoading = Provider.of<CountriesProvider>(context).isLoading;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ivoy challenge"),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : countries.isEmpty
              ? Center(
                  child: ElevatedButton(
                    child: const Text("Get all countries"),
                    onPressed: () =>
                        Provider.of<CountriesProvider>(context, listen: false)
                            .getAllCountries(),
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    final country = countries[index];
                    return ListTile(
                      title: Text(countries[index].name),
                      subtitle: Text('Capital: ${country.capital}'),
                      leading: CircleAvatar(
                        child: Text(country.emoji),
                        backgroundColor: Colors.white,
                      ),
                      onTap: () => showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            CustomBottomSheet(country: country),
                      ),
                    );
                  },
                  itemCount: countries.length,
                ),
    );
  }
}
