
import 'dart:async';
import 'package:flutter/material.dart';


class ListBuilderCommon extends StatefulWidget {
  final List datas;
  final toPage;
  final bool head;
  final bool popBack;

  const ListBuilderCommon(
      {required this.datas,
      this.toPage,
      required this.head,
      required this.popBack});
  @override
  _ListBuilderCommonState createState() => _ListBuilderCommonState();
}

// int list_length;

String? gs_sales_param1;
String? gs_sales_param2;
String? gs_sales_param3;
String? gs_sales_param4;
String? gs_site;
String? gs_loc_from;
String? gs_loc_to;
int? gs_list_index;

List dataForDisplay = [];

class _ListBuilderCommonState extends State<ListBuilderCommon> {
  final ScrollController _scrollController = ScrollController();
  List _datas = [];
  bool _timer_ = false;
  bool pop = false;
  final _searchfieldfocus = FocusNode();
  @override
  void initState() {
    setState(() {
      if (widget.popBack == true) pop = true;
      _datas = widget.datas;
      dataForDisplay = _datas;
      _searchfieldfocus.requestFocus();
    });

    super.initState();
    new Timer(const Duration(milliseconds: 400), () {
      setState(() {
        _timer_ = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
        body: Column(
          children: <Widget>[
            // Container(
            //     margin: EdgeInsets.only(top: 10.0, left: 10.0),
            //     child: align(Alignment.centerLeft, gs_currentUser, 20.0)),
            _searchBar(),

              Expanded(
                child: listView(dataForDisplay, widget.toPage),
              ),
          ],
        ));
  }

  close(context) {
    Navigator.pop(context);
  }

  _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        focusNode: _searchfieldfocus,
        decoration: InputDecoration(hintText: 'Search...'),
        style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        onChanged: (text) {
          text = text.toUpperCase();
          setState(() {
            dataForDisplay = _datas.where((data) {
              var search = data.val2.toString().toUpperCase();
              var search2 = data.val1.toString().toUpperCase();
              // print('************' + dataForDisplay.length.toString());
              // print(dataForDisplay.indexOf(search));
              // print('--------------INDEX----------');
              return search.contains(text) || search2.contains(text);
            }).toList();
          });
        },
      ),
    );
  }


  listView(List datasForDisplay, toPage) {
    // _searchBar();
    return Scrollbar(

      controller: _scrollController,
      child: ListView.builder(
        controller: _scrollController,
        itemBuilder: (context, index) {
          // var val3;
          // datasForDisplay[index].val3 == null
          //     ? val3 = ""
          //     : val3 = datasForDisplay[index].val3;
          // print('*****COMMAN*******list' + datasForDisplay.length.toString());
          // print(datasForDisplay[index].val1.toString());
          return Card(
            color: Colors.green[900],
            child: ListTile(
              subtitle: Column(
                children: <Widget>[
                if (datasForDisplay[index].val1 != null)
                    align(Alignment.centerLeft,
                        datasForDisplay[index].val1.toString(), 14.0),
                  if (datasForDisplay[index].val2 != null)
                    align(Alignment.centerRight,datasForDisplay[index].val2.toString(),
                         14.0),
                ],
              ),
              onTap: () {
                // print(dataForDisplay[index].val2.toString());
                // print("Mu King");
                if (widget.toPage != null && pop == false) {
                  gs_sales_param1 = dataForDisplay[index].param1.toString();

                  // gs_sales_param2 = _datasForDisplay[index].val2.toString();
                  if (dataForDisplay[index].param3 != null)
                    gs_sales_param3 = dataForDisplay[index].param3.toString();
                  if (dataForDisplay[index].param4 != null)
                    gs_sales_param4 = dataForDisplay[index].param4.toString();
                  Navigator.pushNamed(context, toPage);
                } else if (pop == true) {
                  setState(() {
                    gs_list_index = index;
                    gs_site = dataForDisplay[index].val1.toString();
                    gs_sales_param2 = dataForDisplay[index].val2.toString();
                    gs_loc_from = dataForDisplay[index].val2.toString();
                    gs_loc_to = dataForDisplay[index].val2.toString();
             
                    Navigator.of(context).pop(true);
                  });
                }
              },
            ),
          );
        },
        itemCount: datasForDisplay.length,
      ),
    );
  }
}
align(alignment, _text, size) {
  if (_text == 'null' || _text == null) _text = ' ';
  return Align(
    alignment: alignment,
    child: textData(_text, Colors.white, size),
  );
}

textData(_text, clr, size) {
  return Text(
    _text,
    style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: clr,
        fontSize: size),
  );
}