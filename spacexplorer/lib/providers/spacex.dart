
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:spacexplorer/app_config.dart';
import 'package:spacexplorer/models/company_info.dart';
import 'package:http/http.dart' as http;

class SpaceX with ChangeNotifier { 

  final apiEndPointUrl = SpaceXplorerConfig.apiEndpointUrl.toString();

  static final getCompanyInfo = "/company";

  CompanyInfo companyInfo;

  Future<void> fetchCompanyInfo() async {
    
    var getCompanyInfoUrl = apiEndPointUrl + getCompanyInfo;

    try{

      var response = await http.get(getCompanyInfoUrl, headers: { 
            HttpHeaders.contentTypeHeader: 'application/json', 
            HttpHeaders.acceptHeader: 'application/json', 
          });

      var respBody = response.body;
      print(respBody);
      final JsonDecoder _decoder = new JsonDecoder();
      var companyInfoRespData = new CompanyInfo.fromJson(_decoder.convert(respBody));

      if(response.statusCode == 200) {

        companyInfo = companyInfoRespData;

        notifyListeners();

      }

    } catch(error) {
      throw (error);
    }

  }

}