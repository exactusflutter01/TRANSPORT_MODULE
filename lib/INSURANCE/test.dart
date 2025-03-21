import 'package:flutter/material.dart';

class ItemSelector extends StatefulWidget {
  final String labelText; // Label to display
  final List<dynamic> itemList; // List of items

  const ItemSelector({
    super.key,
    required this.labelText,
    required this.itemList,
  });

  @override
  State<ItemSelector> createState() => _ItemSelectorState();
}

class _ItemSelectorState extends State<ItemSelector> {
  String selectedValue = ''; // Selected item from list

  @override
  void initState() {
    super.initState();
    selectedValue = widget.labelText; // Set initial label
  }

  // Show AlertDialog with list of items
  Future<void> _showItemDialog() async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Select an Item',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          content: SizedBox(
            width: double.maxFinite,
            height: 200,
            child: ListView.builder(
              itemCount: widget.itemList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.itemList[index]),
                  onTap: () {
                    setState(() {
                      selectedValue = widget.itemList[index]; // Update label
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Label showing selected value
        Text(
          selectedValue,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        // Button to open dialog
        ElevatedButton(
          onPressed: _showItemDialog,
          child: const Text('Show List'),
        ),
      ],
    );
  }
}
