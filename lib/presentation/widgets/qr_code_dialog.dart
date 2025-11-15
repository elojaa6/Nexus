import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexo/core/theme/app_theme.dart';
import 'package:nexo/domain/entities/link.dart';
import 'package:nexo/presentation/bloc/links/link_bloc.dart';
import 'package:nexo/presentation/bloc/links/link_event.dart';
import 'package:nexo/presentation/widgets/add_link_dialog.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeDialog extends StatelessWidget {
  const QrCodeDialog({super.key, required this.link});

  final Link link;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [AppColors.gradientStart, AppColors.gradientEnd],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            QrImageView(
              data: link.url,
              version: QrVersions.auto,
              size: 200.0,
              foregroundColor: AppColors.white,
            ),
            const SizedBox(height: 24),
            Text(link.title, style: AppTextStyles.title),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      builder: (_) => BlocProvider.value(
                        value: BlocProvider.of<LinkBloc>(context),
                        child: AddLinkDialog(link: link),
                      ),
                    );
                  },
                  child: const Text('Edit'),
                ),
                const SizedBox(width: 16),
                TextButton(
                  onPressed: () {
                    context.read<LinkBloc>().add(
                      LinkEvent.deleteLink(link.id!),
                    );
                    Navigator.of(context).pop();
                  },
                  child: const Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
