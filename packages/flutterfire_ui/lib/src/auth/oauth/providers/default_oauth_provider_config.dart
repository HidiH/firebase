import 'package:flutterfire_ui/auth/apple.dart';
import 'package:flutterfire_ui/src/auth/configs/oauth_provider_configuration.dart';
import 'package:flutterfire_ui/src/auth/oauth/oauth_providers.dart';

OAuthProviderConfiguration
    createDefaultOAuthProviderConfiguration<T extends OAuthProvider>() {
  switch (T) {
    case Google:
      throw Exception("Can't create default provider configuration for $T");

    case Facebook:
      throw Exception("Can't create default provider configuration for $T");

    case Apple:
      return const AppleProviderConfiguration();

    default:
      throw Exception("Can't create default provider configuration for $T");
  }
}
