function gradlew_eclipse()
{
	mv settings.gradle settings.gradle.ORIGINAL || true
	mv ../settings.gradle ../settings.gradle.ORIGINAL || true

	${LIFERAY_PORTAL_DIR}/gradlew eclipse -a

	mv settings.gradle.ORIGINAL settings.gradle || true
	mv ../settings.gradle.ORIGINAL ../settings.gradle || true	
}
