import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexo/core/theme/theme_notifier.dart';
import 'package:nexo/presentation/bloc/links/link_bloc.dart';
import 'package:nexo/presentation/bloc/links/link_event.dart';
import 'package:nexo/presentation/bloc/links/link_state.dart';
import 'package:nexo/presentation/widgets/add_link_dialog.dart';
import 'package:nexo/presentation/widgets/link_card.dart';
import 'package:nexo/presentation/widgets/qr_code_dialog.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LinkBloc>().add(const LinkEvent.loadLinks());
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nexo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.palette),
            onPressed: () => _showThemeDialog(context, themeNotifier),
          ),
        ],
      ),
      body: BlocBuilder<LinkBloc, LinkState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (links) {
              return ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: links.length,
                itemBuilder: (context, index) {
                  final link = links[index];
                  return GestureDetector(
                    key: ValueKey(link.id),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => BlocProvider.value(
                          value: BlocProvider.of<LinkBloc>(context),
                          child: QrCodeDialog(link: link),
                        ),
                      );
                    },
                    child: LinkCard(
                      title: link.title,
                      url: link.url,
                    ),
                  );
                },
              );
            },
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<LinkBloc>(context),
              child: const AddLinkDialog(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showThemeDialog(BuildContext context, ThemeNotifier themeNotifier) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Select Theme'),
          children: themeNotifier.themes.entries.map((entry) {
            return SimpleDialogOption(
              onPressed: () {
                themeNotifier.setTheme(entry.key);
                Navigator.of(context).pop();
              },
              child: Text(entry.key),
            );
          }).toList(),
        );
      },
    );
  }
}
