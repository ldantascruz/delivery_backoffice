import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'Erro',
        message: message,
        contentType: ContentType.failure,
      ),
    );
  }

  void showWarning(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'Atenção',
        message: message,
        contentType: ContentType.warning,
      ),
    );
  }

  void showInfo(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'Atenção',
        message: message,
        contentType: ContentType.help,
      ),
    );
  }

  void showSuccess(String message) {
    _showSnackBar(
      AwesomeSnackbarContent(
        title: 'Sucesso',
        message: message,
        contentType: ContentType.success,
      ),
    );
  }

  void _showSnackBar(AwesomeSnackbarContent content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.only(top: 72),
        backgroundColor: Colors.transparent,
        content: content,
      ),
    );
  }
}
