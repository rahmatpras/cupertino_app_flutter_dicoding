import 'package:flutter/cupertino.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Settings Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('Log out'),
          onPressed: () {
            // panggil showCupertinoDialog() untuk menampilkan CupertinoAlertDialog
            // ketika tombol di klik
            showCupertinoDialog(
                context: context,
                builder: (context) {
                  // alert dialog akan menampilkan dialog untuk memperingatkan
                  //pengguna atas sebuah situasi
                  return CupertinoAlertDialog(
                      title: Text('Are you sure to log out?'),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('No'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        CupertinoDialogAction(
                          child: Text('Yes'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ]);
                });
          },
        ),
      ),
    );
  }
}
