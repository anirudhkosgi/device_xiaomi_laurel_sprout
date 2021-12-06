[1mdiff --git a/extract-files.sh b/extract-files.sh[m
[1mindex 8a959b9e..657ad6c4 100755[m
[1m--- a/extract-files.sh[m
[1m+++ b/extract-files.sh[m
[36m@@ -14,9 +14,9 @@[m [mVENDOR=xiaomi[m
 MY_DIR="${BASH_SOURCE%/*}"[m
 if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi[m
 [m
[31m-LINEAGE_ROOT="${MY_DIR}/../../.."[m
[32m+[m[32mANDROID_ROOT="${MY_DIR}/../../.."[m
 [m
[31m-HELPER="${LINEAGE_ROOT}/tools/extract-utils/extract_utils.sh"[m
[32m+[m[32mHELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"[m
 if [ ! -f "${HELPER}" ]; then[m
     echo "Unable to find helper script at ${HELPER}"[m
     exit 1[m
[36m@@ -53,7 +53,7 @@[m [mif [ -z "${SRC}" ]; then[m
 fi[m
 [m
 # Initialize the helper[m
[31m-setup_vendor "${DEVICE}" "${VENDOR}" "${LINEAGE_ROOT}" false "${CLEAN_VENDOR}"[m
[32m+[m[32msetup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"[m
 [m
 extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${KANG}" --section "${SECTION}"[m
 [m
[1mdiff --git a/setup-makefiles.sh b/setup-makefiles.sh[m
[1mindex 837bd6dd..7613c09f 100755[m
[1m--- a/setup-makefiles.sh[m
[1m+++ b/setup-makefiles.sh[m
[36m@@ -15,9 +15,9 @@[m [mVENDOR=xiaomi[m
 MY_DIR="${BASH_SOURCE%/*}"[m
 if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi[m
 [m
[31m-LINEAGE_ROOT="${MY_DIR}/../../.."[m
[32m+[m[32mANDROID_ROOT="${MY_DIR}/../../.."[m
 [m
[31m-HELPER="${LINEAGE_ROOT}/tools/extract-utils/extract_utils.sh"[m
[32m+[m[32mHELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"[m
 if [ ! -f "${HELPER}" ]; then[m
     echo "Unable to find helper script at ${HELPER}"[m
     exit 1[m
[36m@@ -25,7 +25,7 @@[m [mfi[m
 source "${HELPER}"[m
 [m
 # Initialize the helper[m
[31m-setup_vendor "${DEVICE}" "${VENDOR}" "${LINEAGE_ROOT}"[m
[32m+[m[32msetup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"[m
 [m
 # Warning headers and guards[m
 write_headers[m
