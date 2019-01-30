function degradlew()
{
	if [ -e "settings.gradle" ]; then
	    mv settings.gradle settings.gradle.ORIGINAL || true
	fi 
	if [ -e "../settings.gradle" ]; then
	    mv ../settings.gradle ../settings.gradle.ORIGINAL || true
	fi 
}

function regradlew()
{
	if [ -e "settings.gradle.ORIGINAL" ]; then
	    mv settings.gradle.ORIGINAL settings.gradle || true
	fi 
	if [ -e "../settings.gradle.ORIGINAL" ]; then
	    mv ../settings.gradle.ORIGINAL ../settings.gradle || true
	fi 
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
