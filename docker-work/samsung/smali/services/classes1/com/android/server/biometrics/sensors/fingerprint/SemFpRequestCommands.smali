.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;
.super Ljava/lang/Object;
.source "SemFpRequestCommands.java"


# static fields
.field public static final FINISH_GESTURE_MODE:I = 0x10

.field public static final GET_BRIGHTNESS_VALUE_OF_OPTICAL_SENSOR:I = 0x20

.field public static final GET_DAEMON_VERSION:I = 0x4

.field public static final GET_ENROLLED_TEMPLATES:I = 0xb

.field public static final GET_ENROLLED_USER_IDS:I = 0xc

.field public static final GET_OPTICAL_CALIBRATION_TIME:I = 0x28

.field public static final GET_SECURITY_LEVEL:I = 0x1e

.field public static final GET_SENSOR_INFO:I = 0x5

.field public static final GET_SENSOR_STATUS:I = 0x6

.field public static final GET_SENSOR_TEST_RESULT:I = 0x13

.field public static final GET_STATUS_OF_NEW_MATCHER:I = 0x1b

.field public static final GET_STATUS_OF_TEMPLATE_CHANGED:I = 0x19

.field public static final GET_TRUST_APP_VERSION:I = 0x2710

.field public static final GET_TZ_BUILD_TYPE:I = 0x25

.field public static final GET_UNIQUE_ID_OF_TEMPLATE:I = 0x7

.field public static final HANDLE_FIDO_DATA:I = 0x9

.field public static final INSTALL_TRUST_APP:I = 0x2711

.field public static final NOTIFY_ENROLL_TYPE:I = 0x12

.field public static final NOTIFY_SCREEN_STATUS:I = 0x24

.field public static final NOTIFY_SCREEN_STATUS_FOR_GESTURE_MODE:I = 0x11

.field public static final NOTIFY_TOUCH_EVENT:I = 0x16

.field public static final NOTIFY_TSP_BLOCKED_STATUS:I = 0x23

.field public static final NOTIFY_WIRELESS_CHARGER_STATUS:I = 0x1d

.field public static final OPEN_TRUST_APP_SESSION:I = 0x2

.field public static final PAUSE_ENROLLMENT:I = 0x0

.field public static final REMOVE_CBGE_OF_UDFPS_QCOM:I = 0x18

.field public static final RESUME_ENROLLMENT:I = 0x1

.field public static final RUN_CALIBRATION_FOR_VENDOR_EGIS:I = 0x17

.field public static final RUN_CALIBRATION_FOR_VENDOR_GOODIX:I = 0x1f

.field public static final RUN_FORCE_CBGE_OPERATION_FOR_UDFPS_QCOM:I = 0x15

.field public static final RUN_FORCE_QDB_FOR_UDFPS_QCOM:I = 0x22

.field public static final RUN_SENSOR_TEST:I = 0x3

.field public static final SET_ACTIVE_GROUP:I = 0x8

.field public static final SET_ANTI_SPOOFING_LEVEL:I = 0x14

.field public static final START_GESTURE_MODE:I = 0xf

.field public static final UPDATE_MATCHER:I = 0x1c

.field public static final UPDATE_SECURE_ID:I = 0xa


# virtual methods
.method public onRequestResult(I)V
    .registers 2

    return-void
.end method
