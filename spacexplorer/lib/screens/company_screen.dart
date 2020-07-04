import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:spacexplorer/providers/spacex.dart';

class CompanyScreen extends StatefulWidget {
  static const String routeName = '/company';

  const CompanyScreen({Key key}) : super(key: key);

  @override
  _CompanyInfoScreenState createState() => _CompanyInfoScreenState();
}

class _CompanyInfoScreenState extends State<CompanyScreen> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  void didChangeDependencies() {
    // test - test
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<SpaceX>(context).fetchCompanyInfo().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle _style() {
      return TextStyle(fontWeight: FontWeight.bold);
    }

    return Center(
      child: _isLoading
          ? CircularProgressIndicator()
          : Consumer<SpaceX>(
              builder: (ctx, spaceXdata, _) => Padding(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text("Name"),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "spaceXdata.companyInfo.name.toString()",
                          style: _style(),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Email 123",
                          style: _style(),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("milan@gmail.com"),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Location",
                          style: _style(),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("New York, USA"),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Language",
                          style: _style(),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("English, French"),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Occupation",
                          style: _style(),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Employee"),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
