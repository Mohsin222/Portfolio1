
    import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio1/models/services_model.dart';

import '../json/services_json.dart';


final servicesListModel =
    StateProvider<ServicesBaseClass?>((ref) => ServicesBaseClass(data: []));
final servicesClassNotifierController =StateNotifierProvider<ServicesClassNotifier,bool>((ref) =>ServicesClassNotifier( ref: ref) );


class ServicesClassNotifier extends StateNotifier<bool>{

    final Ref _ref;
    ServicesClassNotifier({
       required Ref ref
    }): _ref = ref,
        super(false);




    getData(){
   var data=   _ref.read(servicesListModel.notifier).update((state) {


        return ServicesBaseClass.fromJson(serviceJson);
      });


    }






  }