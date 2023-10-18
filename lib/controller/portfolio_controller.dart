



  import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio1/json/portfolio.dart';
import 'package:portfolio1/models/new_mdl.dart';
import 'package:portfolio1/models/portfolio_model.dart';


    final portCategoryValueForProtFolioScreen =
    StateProvider<String?>((ref) => 'All');


final portFolioListModel =
    StateProvider<PortFolioListClass?>((ref) => PortFolioListClass(data: []));

    final portCategoryValueForHomeScreen =
    StateProvider<String?>((ref) => 'All');

    final filterPortFolioListModel =
    StateProvider<PortFolioListClass?>((ref) => PortFolioListClass(data: []));


final portFolioListProv =StateNotifierProvider<PortFolioNotifier,bool>((ref) =>PortFolioNotifier( ref: ref) );


class PortFolioNotifier extends StateNotifier<bool>{

    final Ref _ref;
    PortFolioNotifier({
       required Ref ref
    }): _ref = ref,
        super(false);




    getData(){
   var data=   _ref.read(portFolioListModel.notifier).update((state) {


        return PortFolioListClass.fromJson(
           dd);
      });

      _ref.read(filterPortFolioListModel.notifier).update((state) {

        return PortFolioListClass.fromJson(
           dd);
      });
    }





  }