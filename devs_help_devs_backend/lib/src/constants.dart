const server =
    const String.fromEnvironment('SERVER', defaultValue: '63b34375.nhost.app');

const isProduction = server == '3fad0791.nhost.app';

const userID = const String.fromEnvironment('USER_ID');
const authPassword = const String.fromEnvironment('AUTH_PASSWORD');

const graphQlEndPoint = 'https://hasura-$server/v1/graphql';

const nhostBaseUrl = 'https://backend-$server';

String buildImageLink(String fileNamePath) =>
    '$nhostBaseUrl/storage/o/public/$fileNamePath';
