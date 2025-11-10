import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexo/core/theme/app_theme.dart';
import 'package:nexo/domain/entities/link.dart';
import 'package:nexo/presentation/bloc/links/link_bloc.dart';
import 'package:nexo/presentation/bloc/links/link_event.dart';

class AddLinkDialog extends StatefulWidget {
  const AddLinkDialog({super.key, this.link});

  final Link? link;

  @override
  State<AddLinkDialog> createState() => _AddLinkDialogState();
}

class _AddLinkDialogState extends State<AddLinkDialog> {
  final _titleController = TextEditingController();
  final _urlController = TextEditingController();
  final _isButtonEnabled = ValueNotifier<bool>(false);

  bool get isEditing => widget.link != null;

  @override
  void initState() {
    super.initState();
    if (isEditing) {
      _titleController.text = widget.link!.title;
      _urlController.text = widget.link!.url;
      _isButtonEnabled.value = true;
    }
    _titleController.addListener(_validate);
    _urlController.addListener(_validate);
  }

  void _validate() {
    _isButtonEnabled.value =
        _titleController.text.isNotEmpty && _urlController.text.isNotEmpty;
  }

  @override
  void dispose() {
    _titleController.removeListener(_validate);
    _urlController.removeListener(_validate);
    _titleController.dispose();
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [
              AppColors.gradientStart,
              AppColors.gradientEnd,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              isEditing ? 'Edit Link' : 'Add Link',
              style: AppTextStyles.title,
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title *',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: 'URL *',
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 16),
                ValueListenableBuilder<bool>(
                  valueListenable: _isButtonEnabled,
                  builder: (context, isEnabled, child) {
                    return ElevatedButton(
                      onPressed: isEnabled
                          ? () {
                              if (isEditing) {
                                context.read<LinkBloc>().add(
                                      LinkEvent.updateLink(
                                        link: widget.link!.copyWith(
                                          title: _titleController.text,
                                          url: _urlController.text,
                                        ),
                                      ),
                                    );
                              } else {
                                context.read<LinkBloc>().add(
                                      LinkEvent.addLink(
                                        title: _titleController.text,
                                        url: _urlController.text,
                                      ),
                                    );
                              }
                              Navigator.of(context).pop();
                            }
                          : null,
                      child: Text(isEditing ? 'Update' : 'Add'),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
