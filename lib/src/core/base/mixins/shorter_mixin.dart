import 'package:lazycoder/src/app_config/imports/import.dart';

mixin ShorterEnumMixin {
  
  TextInputType get textInputType => TextInputType.text;

  TextInputType get numberInputType => TextInputType.number;

  TextInputType get datetimeInputType => TextInputType.datetime;

  TextInputType get phoneInputType => TextInputType.phone;

  TextInputType get emailAddressInputType => TextInputType.emailAddress;

  TextInputType get multilineInputType => TextInputType.multiline;

  //final  numberWithOptionsInputType = TextInputType.numberWithOptions;

  TextInputAction get doneInputAction => TextInputAction.done;

  TextInputAction get nextInputAction => TextInputAction.next;

  TextInputAction get previousInputAction => TextInputAction.previous;

  TextInputAction get searchInputAction => TextInputAction.search;

  TextInputAction get goInputAction => TextInputAction.go;

  TextInputAction get sendInputAction => TextInputAction.send;

  TextInputAction get noneInputAction => TextInputAction.none;

  AutovalidateMode get autoValidate => AutovalidateMode.always;

  AutovalidateMode get onUserInteraction => AutovalidateMode.onUserInteraction;

  AutovalidateMode get disabled => AutovalidateMode.disabled;


  List<FilteringTextInputFormatter> get integerInputFormatter => [
    FilteringTextInputFormatter.allow(RegExp('^[0-9]*')),
  ];
  List<FilteringTextInputFormatter> get doubleInputFormatter => [
    FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*.?[0-9]*')),
  ];
  
  MainAxisAlignment get startMAA => MainAxisAlignment.start;

  MainAxisAlignment get endMAA => MainAxisAlignment.end;

  MainAxisAlignment get centerMAA => MainAxisAlignment.center;

  MainAxisAlignment get spaceBetweenMAA => MainAxisAlignment.spaceBetween;

  MainAxisAlignment get spaceAroundMAA => MainAxisAlignment.spaceAround;

  MainAxisAlignment get spaceEvenlyMAA => MainAxisAlignment.spaceEvenly;

  CrossAxisAlignment get startCAA => CrossAxisAlignment.start;

  CrossAxisAlignment get endCAA => CrossAxisAlignment.end;

  CrossAxisAlignment get centerCAA => CrossAxisAlignment.center;

  CrossAxisAlignment get stretchCAA => CrossAxisAlignment.stretch;

  CrossAxisAlignment get baselineCAA => CrossAxisAlignment.baseline;

  MainAxisSize get minMAS => MainAxisSize.min;

  MainAxisSize get maxMAS => MainAxisSize.max;

  TextAlign get leftTA => TextAlign.left;
  TextAlign get rightTA => TextAlign.right;
  TextAlign get centerTA => TextAlign.center;
  TextAlign get justifyTA => TextAlign.justify;
  TextAlign get startTA => TextAlign.start;
  TextAlign get endTA => TextAlign.end;

  TextDirection get ltrTD => TextDirection.ltr;
  TextDirection get rtlTD => TextDirection.rtl;

  TextOverflow get clipTO => TextOverflow.clip;
  TextOverflow get fadeTO => TextOverflow.fade;
  TextOverflow get ellipsisTO => TextOverflow.ellipsis;
  TextOverflow get visibleTO => TextOverflow.visible;

  WrapAlignment get startWA => WrapAlignment.start;
  WrapAlignment get endWA => WrapAlignment.end;
  WrapAlignment get centerWA => WrapAlignment.center;
  WrapAlignment get spaceBetweenWA => WrapAlignment.spaceBetween;
  WrapAlignment get spaceAroundWA => WrapAlignment.spaceAround;
  WrapAlignment get spaceEvenlyWA => WrapAlignment.spaceEvenly;

  WrapCrossAlignment get startWCA => WrapCrossAlignment.start;
  WrapCrossAlignment get endWCA => WrapCrossAlignment.end;
  WrapCrossAlignment get centerWCA => WrapCrossAlignment.center;


  EdgeInsets get zero => EdgeInsets.zero;

}
