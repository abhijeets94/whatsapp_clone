import 'package:flutter_contacts/contact.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/select_contacts/repository/select_contacts_repository.dart';

final getContactsProvider = FutureProvider((ref) {
  final selectContactRepository = ref.watch(SelectContactRepositoryProvider);
  return selectContactRepository.getContacts();
});

class SelectContactsController {
  final SelectContactRepository selectContactRepository;
  final ProviderRef ref;

  SelectContactsController({
    required this.selectContactRepository,
    required this.ref,
  });

  Future<List<Contact>> getContacts() async {
    final contacts = await selectContactRepository.getContacts();
    return contacts;
  }
}
