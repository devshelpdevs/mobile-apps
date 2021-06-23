import 'package:devs_help_devs_backend/src/graphql/graphql_api.dart';
import 'package:devs_help_devs_backend/src/nhost_service.dart';
import 'package:test/test.dart';

main() {
  test('login success', () async {
    final server = NhostService();
    final result = await server.loginUser(
        'devshelpdevs_applicant@maildrop.cc', 'devshelpdevs');
    expect(result, true);
  });

  test('login fails', () async {
    final server = NhostService();
    final result =
        await server.loginUser('devshelpdevs_applicant@maildrop.cc', 'wrong');
    expect(result, false);
  });
  test('Insert Donation', () async {
    final server = NhostService();
    final result = await server.loginUser(
        'devshelpdevs_applicant@maildrop.cc', 'devshelpdevs');
    var response = await server.client.execute(InsertPersonMutation(
        variables: InsertPersonArguments(
            first_name: 'Thomas',
            last_name: 'Burkhart',
            is_verified: false,
            phone_number: '243424',
            github_url: '',
            linkedin_url: '',
            national_id_num: '')));
    final response2 = await server.client.execute(PersonQuery(
        variables: PersonArguments(
            person_id: response.data!.insertPersonOne!.personId)));

    final response3 = await server.client.execute(DeletePersonMutation(
        variables: DeletePersonArguments(
            person_id: response.data!.insertPersonOne!.personId)));

    print(response3.errors);
  });

//   test(' Update Donation', () async {
//     final server = NhostService();
//     await server.loginUser('mail@devshelpdevs.org', 'staging');
//     var donation = Donation(
//         amount: 42, date: DateTime.now().toIso8601String(), name: 'TestUser');
//     final int id = await server.addDonation(donation);

//     donation = await server.getDonation(id);
//     await server.updateDonation(donation.copyWith(amount: 4711));

//     final readBackDonation = await server.getDonation(id);
//     expect(readBackDonation.amount, 4711);
//     await server.deleteDonation(readBackDonation);
//   });

//   test('Delete Donation not logged in', () async {
//     final server = NhostService();
//     expectLater(
//         () async => await server
//             .deleteDonation(Donation(id: 33, amount: 10, date: "no date")),
//         throwsA(isA<OperationException>()));
//   });

//   test('Delete Donation', () async {
//     final server = NhostService();
//     await server.loginUser('mail@devshelpdevs.org', 'staging');
//     int id = await server.addDonation(Donation(
//         amount: 42, date: DateTime.now().toIso8601String(), name: 'TestUser'));
//     final readBackDonation = await server.getDonation(id);
//     await server.deleteDonation(readBackDonation);
//     expectLater(
//         () async => await server.getDonation(id), throwsA(isA<Exception>()));
//   });

//   /// CRUD Usages
//   test('Insert Usage', () async {
//     final server = NhostService();
//     await server.loginUser('mail@devshelpdevs.org', 'staging');
//     final int id = await server.addUsage(Usage(
//         amount: 42,
//         date: DateTime.now().toIso8601String(),
//         name: 'TestUser',
//         whatFor: 'Test usage'));
//     final donation = await server.getUsage(id);
//     expect(donation.amount, 42);
//     await server.deleteUsage(donation);
//   });

//   test(' Update Usage', () async {
//     final server = NhostService();
//     await server.loginUser('mail@devshelpdevs.org', 'staging');
//     var donation = Usage(
//         amount: 42,
//         date: DateTime.now().toIso8601String(),
//         name: 'TestUser',
//         whatFor: 'Test usage');
//     final int id = await server.addUsage(donation);

//     donation = await server.getUsage(id);
//     await server.updateUsage(donation.copyWith(amount: 4711));

//     final readBackUsage = await server.getUsage(id);
//     expect(readBackUsage.amount, 4711);
//     await server.deleteUsage(readBackUsage);
//   });

//   test('Delete Usage not logged in', () async {
//     final server = NhostService();
//     expectLater(
//         () async =>
//             await server.deleteUsage(Usage(whatFor: 'Test', amount: 21)),
//         throwsA(isA<OperationException>()));
//   });

//   test('Delete Usage', () async {
//     final server = NhostService();
//     await server.loginUser('mail@devshelpdevs.org', 'staging');
//     int id = await server.addUsage(Usage(
//         whatFor: 'TestUsage',
//         amount: 42,
//         date: DateTime.now().toIso8601String(),
//         name: 'TestUser'));
//     final readBackUsage = await server.getUsage(id);
//     await server.deleteUsage(readBackUsage);
//     expectLater(
//         () async => await server.getUsage(id), throwsA(isA<Exception>()));
//   });
}
