
import 'package:driver/app/app.dart';

import 'environment.dart';

void main(){
  Environment.setEnvironment(EnvironmentType.DEV);
  mainDelegate();
}