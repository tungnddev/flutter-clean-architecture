import 'package:driver/generated/l10n.dart';
import 'package:driver/utils/widgets/alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_exception.dart';

class AppExceptionHandle {
  static void handle(BuildContext context, AppException exception) {
    if (exception is NetException) {
      if (exception.type == NetworkExceptionType.ExpiredToken) {
        _handleExpiredTokenException(context, exception.message);
        return;
      }
    }

    _showErrorDialog(context, exception);
  }

  static void _handleExpiredTokenException(BuildContext context, String message) async {
    showDialog(
      context: context,
      builder: (_) => MessageAlertDialog(
          title: S.of(context).dialog_message_title,
          message: message,
          done: () => SystemNavigator.pop(animated: true)),
    );
  }

  static void _handleNotInBuilding(BuildContext context, String message) async {
    showDialog(
      context: context,
      builder: (_) => MessageAlertDialog(
          title: S.of(context).dialog_message_title,
          message: message,
          done: () => SystemNavigator.pop(animated: true)),
    );
  }

  static void _showErrorDialog(BuildContext context, AppException exception,
      {Function()? onDone}) {
    showDialog(
      context: context,
      builder: (_) => MessageAlertDialog(
          title: S.of(context).dialog_message_title, message: exception.toString(), done: onDone),
    );
  }

  static void _showMessageDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (_) => MessageAlertDialog(
        title: S.of(context).dialog_message_title,
        message: message,
      ),
    );
  }
}
