function degradlew()
{
	mv settings.gradle settings.gradle.ORIGINAL || true
	mv ../settings.gradle ../settings.gradle.ORIGINAL || true
}

function regradlew()
{
	mv settings.gradle.ORIGINAL settings.gradle || true
	mv ../settings.gradle.ORIGINAL ../settings.gradle || true
}

function gradlew_clean()
{
	degradlew
	${LIFERAY_PORTAL_DIR}/gradlew clean
	regradlew
}

function gradlew_deploy()
{
	degradlew
	${LIFERAY_PORTAL_DIR}/gradlew deploy
	regradlew
}

function gradlew_eclipse()
{
	degradlew
	${LIFERAY_PORTAL_DIR}/gradlew eclipse -a
	regradlew
}

function gradlew_format()
{
	degradlew
	${LIFERAY_PORTAL_DIR}/gradlew formatSource -a
	regradlew
}
