import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DeviceSizeType {WEB,TAB,MOBILE}



    final deviceTypeProvider =
    StateProvider<DeviceSizeType?>((ref) => DeviceSizeType.TAB);




    final responsiveClassNotifierController =StateNotifierProvider<ResponsiveClassNotifier,bool>((ref) =>ResponsiveClassNotifier( ref: ref) );


class ResponsiveClassNotifier extends StateNotifier<bool>{

    final Ref _ref;
    ResponsiveClassNotifier({
       required Ref ref
    }): _ref = ref,
        super(false);




    setDeviceType(DeviceSizeType value){
   _ref.read(deviceTypeProvider.notifier).update((state) {

state =value;
        return value;
      });

  
    }





  }