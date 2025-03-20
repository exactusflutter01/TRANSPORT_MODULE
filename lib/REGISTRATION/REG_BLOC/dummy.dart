import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<RegBloc>().add(const FetchDivCodes()); // Fetch data on start
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Division")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: "Search Division",
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    context.read<RegBloc>().add(SearchDivCode(_searchController.text));
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<RegBloc, RegState>(
              builder: (context, state) {
                if (state is Loading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is Loaded) {
                  return ListView.builder(
                    itemCount: state.divCodes.length,
                    itemBuilder: (context, index) {
                      final div = state.divCodes[index];
                      return ListTile(
                        title: Text(div['DIV_NAME']),
                        subtitle: Text("Code: ${div['DIV_CODE']}"),
                      );
                    },
                  );
                } else if (state is Error) {
                  return Center(child: Text("Error: ${state.message}"));
                }
                return Center(child: Text("Start Searching..."));
              },
            ),
          ),
        ],
      ),
    );
  }
}
