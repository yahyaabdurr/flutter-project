import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/done_module_provider.dart';

class ModulePage extends StatefulWidget {
  @override
  _ModulePageState createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  //menggunakan metode lift step up (oper parameter) agar child dari parent ini bisa mengakses datanya

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan State Management'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoneModuleList(),
                  ),
                );
              })
        ],
      ),
      body: ModuleList(),
    );
  }
}

//menggunakan statefull widget karena terdapat perubahan data
class ModuleList extends StatefulWidget {
  @override
  _ModuleListState createState() => _ModuleListState();
}

class _ModuleListState extends State<ModuleList> {
  final List<String> moduleList = [
    'Modul 1 - Pengenalan Dart',
    'Modul 2 - Memulai Pemrograman dengan Dart',
    'Modul 3 - Dart Fundamental',
    'Modul 4 - Control Flow',
    'Modul 5 - Collections',
    'Modul 6 - Object Oriented Programming',
    'Modul 7 - Functional Styles',
    'Modul 8 - Dart Type System',
    'Modul 9 - Dart Futures',
    'Modul 10 - Effective Dart',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: moduleList.length,
      itemBuilder: (context, index) {
        //pada consumer widget yang ada didalam nya akan di build ulang ketika ada perubahan
        return Consumer<DoneModuleProvider>(
          //parameter wajib dari consumer
          builder: (context, DoneModuleProvider data, widget) {
            return ModuleTile(
              moduleName: moduleList[index],
              isDone: data.doneModuleList.contains(moduleList[index]),
              onClick: () {
                data.complele(moduleList[index]);
              },
            );
          },
        );
      },
    );
  }
}

class ModuleTile extends StatelessWidget {
  final String moduleName;
  final bool isDone;
  final Function onClick;

  ModuleTile({this.moduleName, this.isDone, this.onClick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(moduleName),
      trailing: (isDone)
          ? Icon(Icons.done)
          : RaisedButton(
              onPressed: onClick,
              child: Text('Done'),
            ),
    );
  }
}

class DoneModuleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //listen false mendadakan provider tersebut tidak peduli dengan perubahan data
    //provider.of yaitu jika kita hanya ingin mengakses data dari state naum tidak perlu mengubah UI
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module List'),
      ),
      body: ListView.builder(
        itemCount: doneModuleList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(doneModuleList[index]),
          );
        },
      ),
    );
  }
}
