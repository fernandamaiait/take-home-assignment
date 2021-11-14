// import 'package:extended_masked_text/extended_masked_text.dart';
// import 'package:flutter/material.dart';

// import 'input.dart';

// class CurrencyInput extends StatefulWidget {
//   const CurrencyInput({
//     //required this.parent,
//     // required this.formKey,
//     required this.label,
//     required this.controller,
//     // required this.validator,
//     // required this.onTapEvent,
//     // this.focusNode,
//     // this.autofocus = false,
//     // this.enabled = true,
//     // this.onChanged,
//     this.key,
//   }) : super(key: key);

//   //final parent;
//   // final GlobalKey<FormState>? formKey;
//   final String label;
//   final MoneyMaskedTextController? controller;
//   //final String? Function(String?)? validator;
//   // final bool autofocus;
//   // final bool enabled;
//   // final Function? onChanged;
//   // final FocusNode? focusNode;
//   // final Function() onTapEvent;
//   final Key? key;

//   @override
//   _CurrencyInputState createState() => _CurrencyInputState();
// }

// class _CurrencyInputState extends State<CurrencyInput> {
//   // var _controller;
//   // final _unfocusedInputController = TextEditingController();
//   // FocusNode? _inputFocusNode;

//   @override
//   void initState() {
//     // _inputFocusNode = widget.focusNode ?? FocusNode();
//     // _inputFocusNode!.addListener(_onFocusNodeEvent);

//     super.initState();
//   }

//   // void _onFocusNodeEvent() async {
//   //   var controller =
//   //       !_inputFocusNode!.hasFocus && widget.controller!.numberValue == 0
//   //           ? _unfocusedInputController
//   //           : widget.controller!;
//   //   //esse delay impede de dar erro no MoneyMaskedTextController
//   //   //que é o erro da tela cinza no iOS que foi relatado no bug WSC-14
//   //   //é um erro conhecido do componente que ainda não foi corrigido,
//   //   //embora a issue esteja closed
//   //   //https://github.com/benhurott/flutter-masked-text/issues/39
//   //   await Future.delayed(const Duration(milliseconds: 100));
//   //   controller.selection = TextSelection.fromPosition(
//   //       TextPosition(offset: controller.text.length));

//   //   if (mounted) {
//   //     setState(() => _controller = controller);
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     //_onFocusNodeEvent();

//     // return Input(
//     //   key: widget.key,
//       // label: widget.label,
//       // // autofocus: widget.autofocus,
//       // // focusNode: _inputFocusNode,
//       // controller: widget.controller,
//       // keyboardType: TextInputType.number,
//       // validator: widget.validator,
//       // enabled: widget.enabled,
//       // onTapEvent: widget.onTapEvent,
//       // onChanged: (val) {
//       //   widget.parent.setState(() => {});
//       //   if (widget.onChanged != null) {
//       //     widget.onChanged!(widget.controller!.numberValue);
//       //   }
//       // },
//     );
//   }
// }
