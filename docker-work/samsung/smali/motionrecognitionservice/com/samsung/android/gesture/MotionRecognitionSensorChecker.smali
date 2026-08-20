.class public Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;,
        Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;
    }
.end annotation


# static fields
.field private static final ACC_WRONG_RANGE_SAMPLING_RATE:I = 0x2

.field private static final BINARY_VERSION_PATH:Ljava/lang/String; = "/system/info.extra"

.field private static final BUFFER_SIZE:I = 0x80

.field private static final CALIBRATION_SENSOR_TYPE:Ljava/lang/String; = "CAL_SENSOR_TYPE"

.field private static final CLIENT_INFO_SEMCONTEXT:Ljava/lang/String; = "SEMCONTEXT"

.field private static final CLIENT_INFO_SENSOR:Ljava/lang/String; = "SENSOR"

.field private static final DATA_X:I = 0x0

.field private static final DATA_Y:I = 0x1

.field private static final DATA_Z:I = 0x2

.field private static final DEBUG_HISTORY_SIZE:I = 0x64

.field private static final ERROR_ACC_RANGE:I = 0x4

.field private static final ERROR_MCU_PROBE:I = 0x0

.field private static final ERROR_SENSORHUB_RESET:I = 0x3

.field private static final ERROR_SENSOR_PROBE:I = 0x1

.field private static final ERROR_SENSOR_STUCK:I = 0x2

.field private static final EVENT_FREE_FALL:I = 0x0

.field private static final EVENT_MOVE:I = 0x4

.field private static final EVENT_NOMOVE:I = 0x3

.field private static final EVENT_NONE:I = 0x0

.field private static final FREE_FALL_DETECTION_DETECT:I = 0x66

.field private static final FREE_FALL_DETECTION_START:I = 0x22

.field private static final FREE_FALL_LOGGING_PATH:Ljava/lang/String; = "/data/system/ff_data"

.field private static final FREE_FALL_LOGGING_SIZE:I = 0x3e8

.field private static final FREE_FALL_MIN_HEIGHT:J = 0x32L

.field private static final FREE_FALL_SENSOR_CHECKING_FORCE_STOP:I = 0x77

.field private static final FREE_FALL_SENSOR_EVENT_MAX_CNT:I = 0x3

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_ACCELEROMETER:I = 0x0

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_GYROSCOPE:I = 0x1

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_MAX:I = 0x4

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_SUB_ACCELEROMETER:I = 0x2

.field private static final FREE_FALL_SENSOR_EVENT_TYPE_SUB_GYROSCOPE:I = 0x3

.field private static final GRAVITY_VALUE:F = 9.8f

.field private static final GYRO_MOVING_THRESHOLD:F = 0.15f

.field private static final HQM_HIT_TYPE_EM:Ljava/lang/String; = "em"

.field private static final HQM_HIT_TYPE_PH:Ljava/lang/String; = "ph"

.field private static final HQM_HIT_TYPE_SM:Ljava/lang/String; = "sm"

.field private static final HQM_SENSORHUB_MINIDUMP_FEATURE:Ljava/lang/String; = "SHMD"

.field private static final HQM_SENSOR_EMERGENCY_FREE_FALL_FEATURE:Ljava/lang/String; = "FALL"

.field private static final HQM_SENSOR_ERROR_FEATURE:Ljava/lang/String; = "MRSI"

.field private static final HQM_SURVEY_LOG:Z = true

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final LOGGING_DATA:I = 0x1

.field private static final LOGGING_DATA_END:I = 0x2

.field private static final LOGGING_DATA_START:I = 0x0

.field private static final MCU_ERROR:Ljava/lang/String; = "0000000000"

.field private static final MCU_FIRMWARE_CHIP_ID_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/mcu_name"

.field private static final MCU_FIRMWARE_VER_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/mcu_rev"

.field private static final MRSI_CHECK_ACC_PROBE:I = 0x1

.field private static final MRSI_CHECK_ACC_STUCK:I = 0x6

.field private static final MRSI_CHECK_BARO_PROBE:I = 0x4

.field private static final MRSI_CHECK_BARO_STUCK:I = 0x9

.field private static final MRSI_CHECK_GYRO_PROBE:I = 0x2

.field private static final MRSI_CHECK_GYRO_STUCK:I = 0x7

.field private static final MRSI_CHECK_LIGHT_PROBE:I = 0xb

.field private static final MRSI_CHECK_MAG_PROBE:I = 0x3

.field private static final MRSI_CHECK_MAG_STUCK:I = 0x8

.field private static final MRSI_CHECK_MCU_PROBE:I = 0x0

.field private static final MRSI_CHECK_PROXY_LIGHT_PROBE:I = 0x5

.field private static final MRSI_CHECK_PROXY_PROBE:I = 0xa

.field private static final MRSI_CHECK_SUB_ACC_PROBE:I = 0xc

.field private static final MRSI_CHECK_SUB_ACC_STUCK:I = 0xe

.field private static final MRSI_CHECK_SUB_GYRO_PROBE:I = 0xd

.field private static final MRSI_CHECK_SUB_GYRO_STUCK:I = 0xf

.field private static final MRSI_SENSOR_CHECK_DEFAULT_VALUE:Ljava/lang/String; = "0000000000000000"

.field private static final MRSI_VERSION:Ljava/lang/String; = "8.6.0"

.field private static final NOMOVE_MAX_CNT:I = 0x64

.field private static final NOMOVE_TIME_THD:I = 0x32

.field private static final NOMOVE_VAR_WINSIZE:I = 0x9

.field private static final PROBE_CHECK_TYPE_ACCEL:I = 0x0

.field private static final PROBE_CHECK_TYPE_BAROMETER:I = 0x3

.field private static final PROBE_CHECK_TYPE_GYRO:I = 0x1

.field private static final PROBE_CHECK_TYPE_LIGHT:I = 0x6

.field private static final PROBE_CHECK_TYPE_MAGNETIC:I = 0x2

.field private static final PROBE_CHECK_TYPE_PROXIMITY:I = 0x5

.field private static final PROBE_CHECK_TYPE_PROXY_LIGHT:I = 0x4

.field private static final PROBE_CHECK_TYPE_SUB_ACCEL:I = 0x7

.field private static final PROBE_CHECK_TYPE_SUB_GYRO:I = 0x8

.field private static final PROBE_STATUS_FAIL:I = 0x0

.field private static final PROBE_STATUS_NO_SENSOR:I = -0x1

.field private static final PROBE_STATUS_SUCCESS:I = 0x1

.field private static final PROBE_STATUS_TYPE_ACCEL:I = 0x0

.field private static final PROBE_STATUS_TYPE_BAROMETER:I = 0x3

.field private static final PROBE_STATUS_TYPE_GYRO:I = 0x1

.field private static final PROBE_STATUS_TYPE_LIGHT:I = 0x6

.field private static final PROBE_STATUS_TYPE_MAGNETIC:I = 0x2

.field private static final PROBE_STATUS_TYPE_MAX:I = 0x9

.field private static final PROBE_STATUS_TYPE_PROXIMITY:I = 0x5

.field private static final PROBE_STATUS_TYPE_PROXY_LIGHT:I = 0x4

.field private static final PROBE_STATUS_TYPE_SUB_ACCEL:I = 0x7

.field private static final PROBE_STATUS_TYPE_SUB_GYRO:I = 0x8

.field private static final RESET_REASON_ADDRESS_MCU:I = 0x0

.field private static final RESET_REASON_ADDRESS_SLPI:I = 0x1

.field private static final SAMPLE_3AXIS_CNT_MAX:I = 0x259

.field private static final SAMPLE_ACC_WRONG_RANGE_CNT_MAX:I = 0xa

.field private static final SAMPLE_BARO_CNT_MAX:I = 0x3d

.field private static final SEM_PROXIMITY_TYPE:I = 0x1003f

.field private static final SENSORHUB_BCOM_MINI_DUMP_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/bcm_minidump"

.field private static final SENSORHUB_MAX_RESET_CNT:I = 0x12c

.field private static final SENSORHUB_MINI_DUMP_CNT:I = 0x2

.field private static final SENSORHUB_QCOM_WAKEUP_COUNT_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/wakeup_reason"

.field private static final SENSORHUB_RESET_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.SENSORHUB_RESET"

.field private static final SENSORHUB_RESET_CHECKING_START:I = 0x44

.field private static final SENSORHUB_RESET_INFO_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/reset_info"

.field private static final SENSORHUB_SLSI_MTEK_WAKEUP_COUNT_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/wakeup_reason"

.field private static final SENSOR_ACCELEROMETER_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Accelerometer"

.field private static final SENSOR_BAROMETER_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Barometer"

.field private static final SENSOR_BAROMETER_TEMPERATURE_PATH:Ljava/lang/String; = "/sys/class/sensors/barometer_sensor/temperature"

.field private static final SENSOR_CALIBRATION_LOGGING_START:I = 0x11

.field private static final SENSOR_CHECKING_FORCE_STOP:I = 0x55

.field private static final SENSOR_CHECKING_GET_ACTION:Ljava/lang/String; = "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

.field private static final SENSOR_CHECKING_START:I = 0x33

.field private static final SENSOR_CHIP_NAME_PREFIX_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/"

.field private static final SENSOR_DATA_LOGGING_CNT:I = 0x2

.field private static final SENSOR_GYROSCOPE_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Gyroscope"

.field private static final SENSOR_LIGHT_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Light"

.field private static final SENSOR_MAGNETOMETER_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Magnetometer"

.field private static final SENSOR_NAME_ACCELEROMETER:Ljava/lang/String; = "Accelerometer"

.field private static final SENSOR_NAME_BAROMETER:Ljava/lang/String; = "Barometer"

.field private static final SENSOR_NAME_GYROSCOPE:Ljava/lang/String; = "Gyroscope"

.field private static final SENSOR_NAME_LIGHT:Ljava/lang/String; = "Light"

.field private static final SENSOR_NAME_MAGNETOMETER:Ljava/lang/String; = "Magnetometer"

.field private static final SENSOR_NAME_NONE:Ljava/lang/String; = "None"

.field private static final SENSOR_NAME_PROXIMITY:Ljava/lang/String; = "Proximity"

.field private static final SENSOR_NAME_PROXIMITY_LIGHT:Ljava/lang/String; = "Prox_Light"

.field private static final SENSOR_NAME_SUB_ACCELEROMETER:Ljava/lang/String; = "Sub_Accelerometer"

.field private static final SENSOR_NAME_SUB_GYROSCOPE:Ljava/lang/String; = "Sub_Gyroscope"

.field protected static final SENSOR_PROBE_PATH:Ljava/lang/String; = "/sys/class/sensors/ssp_sensor/sensor_state"

.field private static final SENSOR_PROXIMITY_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Proximity"

.field private static final SENSOR_SUB_ACCELEROMETER_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Sub_Accelerometer"

.field private static final SENSOR_SUB_GYROSCOPE_CHIP_NAME_PATH:Ljava/lang/String; = "/efs/FactoryApp/Sensorinfo/Sub_Gyroscope"

.field private static final SENSOR_TYPE_ACCEL:I = 0x2

.field private static final SENSOR_TYPE_BAROMETER:I = 0x10

.field private static final SENSOR_TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field private static final SENSOR_TYPE_DROP_CLASSIFIER:I = 0x1006c

.field private static final SENSOR_TYPE_GYRO:I = 0x4

.field private static final SENSOR_TYPE_LIGHT:I = 0x20

.field private static final SENSOR_TYPE_MAGNETIC:I = 0x8

.field private static final SENSOR_TYPE_MAX:I = 0x200

.field private static final SENSOR_TYPE_PROXIMITY:I = 0x40

.field private static final SENSOR_TYPE_SUB_ACCEL:I = 0x80

.field private static final SENSOR_TYPE_SUB_ACCELEROMETER:I = 0x10097

.field private static final SENSOR_TYPE_SUB_GYRO:I = 0x100

.field private static final SENSOR_TYPE_SUB_GYROSCOPE:I = 0x10099

.field private static final SLPI_BOOT_PATH:Ljava/lang/String; = "/sys/kernel/boot_slpi/boot"

.field private static final SLPI_MAGIC_NUMBER:I = 0x64

.field private static final SLPI_RESET_INFO_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/ssr_msg"

.field private static final SLPI_SNS_REG_PATH:Ljava/lang/String; = "/efs/FactoryApp/sensors/sns.reg"

.field private static final SLPI_SUB_6AXIS_SUPPORT_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/support_dual_sensor"

.field private static final STUCK_STATUS_TYPE_ACCEL:I = 0x0

.field private static final STUCK_STATUS_TYPE_BAROMETER:I = 0x3

.field private static final STUCK_STATUS_TYPE_GYRO:I = 0x1

.field private static final STUCK_STATUS_TYPE_MAGNETIC:I = 0x2

.field private static final STUCK_STATUS_TYPE_MAX:I = 0x6

.field private static final STUCK_STATUS_TYPE_SUB_ACCEL:I = 0x4

.field private static final STUCK_STATUS_TYPE_SUB_GYRO:I = 0x5

.field private static final SURVEY_LOG:Z

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionSensorChecker"

.field private static final USAGE_DATA_CALL_GESTURE:Ljava/lang/String; = "USAGE_DATA_CALL_GESTURE"

.field private static final USAGE_DATA_IR:Ljava/lang/String; = "IR_USAGE"

.field private static final USAGE_DATA_MOBEAM:Ljava/lang/String; = "MOBEAM_USAGE"

.field private static final USAGE_DATA_SENSOR:Ljava/lang/String; = "SENSOR_USAGE"

.field private static final USAGE_DATA_SENSOR_PACKAGE:Ljava/lang/String; = "USAGE_DATA_SENSOR_PACKAGE"

.field private static final USAGE_GRIP_SENSOR:Ljava/lang/String; = "GRIPSENSOR_USAGE"

.field private static mIsFreeFallSensorChecking:Z

.field private static mSensorProbeStatus:[I

.field private static final sErrorType:[Ljava/lang/String;

.field private static final sEventType:[Ljava/lang/String;

.field private static final sResetReason:[[Ljava/lang/String;


# instance fields
.field private FREE_FALL_HEIGHT_THRESHOLD:J

.field private FREE_FALL_SENSOR_CHECK_TIMEOUT:J

.field private SENSORHUB_RESET_TIMESTAMP_DURATION:J

.field private SENSOR_CHECK_TIMEOUT:J

.field private SENSOR_MRSI_FEATURE_MAX_LENGTH:I

.field private SENSOR_TYPE_CNT_MAX:I

.field private SENSOR_TYPE_REGISTERED_CNT:I

.field private SENSOR_TYPE_UNREGISTERED_MAX:I

.field private WrongVectorSum:Z

.field private buffer_nomove:[F

.field private buffer_nomove2:[F

.field private checkStuckAcc:Z

.field private checkStuckBaro:Z

.field private checkStuckGyro:Z

.field private checkStuckSubAcc:Z

.field private checkStuckSubGyro:Z

.field private index_nomove:I

.field private isFreeFallSensorEnabled:[I

.field private mAccCnt:I

.field private mAccDataList:[[F

.field private mAccEnabled:Z

.field private mAccName:Ljava/lang/String;

.field private mAccSensor:Landroid/hardware/Sensor;

.field private mAccStuckAxis:[[Z

.field private mAccStuckData:[[F

.field private mAccVectorSumCnt:I

.field private mAccVectorsum:F

.field private mAccWrongRangeEnabled:Z

.field private mAccWrongVectorsumCnt:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBaroCnt:I

.field private mBaroDataList:[F

.field private mBaroName:Ljava/lang/String;

.field private mBaroStuckAxis:[Z

.field private mBaroStuckData:[F

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Ljava/lang/String;

.field private final mDropClassifierListener:Landroid/hardware/SensorEventListener;

.field private mDropClassifierSensor:Landroid/hardware/Sensor;

.field private mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

.field private mFreeFallAccelData:[[F

.field private mFreeFallAccelEventCnt:I

.field private final mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

.field private mFreeFallGyroData:[[F

.field private mFreeFallGyroEventCnt:I

.field private mFreeFallInfo:Ljava/lang/String;

.field private mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeFallLoggingManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

.field private mFreeFallSensorID:[[Ljava/lang/String;

.field private mFreeFallSubAccelData:[[F

.field private mFreeFallSubAccelEventCnt:I

.field private final mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

.field private mFreeFallSubGyroData:[[F

.field private mFreeFallSubGyroEventCnt:I

.field private mGyroCnt:I

.field private mGyroDataList:[[F

.field private mGyroEnabled:Z

.field private mGyroName:Ljava/lang/String;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mGyroStuckAxis:[[Z

.field private mGyroStuckData:[[F

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsMoving:Z

.field private mIsMovingForVectorSum:I

.field private mIsMovingForVectorSumCnt:I

.field private mIsMovingSub:Z

.field private mIsRunning:Z

.field private mIsVirtualProximitySensor:Z

.field private mLightName:Ljava/lang/String;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLockSensor:Ljava/lang/Object;

.field private mMagEnabled:Z

.field private mMagName:Ljava/lang/String;

.field private mMagSensor:Landroid/hardware/Sensor;

.field private mMagStuckAxis:[[Z

.field private mMagStuckData:[[F

.field private mPreMiniDumpValue:Ljava/lang/String;

.field private mPressureEnabled:Z

.field private mPressureSensor:Landroid/hardware/Sensor;

.field private mPrevSensorHubResetTimeStamp:J

.field private mProbeSensorList:I

.field private mProbeStatusData:[[I

.field private mProbeTestResult:Z

.field private mProximityLightName:Ljava/lang/String;

.field private mProximityName:Ljava/lang/String;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSarMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

.field private mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field private mSensorCheck:Ljava/lang/String;

.field private mSensorCheckingHandler:Landroid/os/Handler;

.field private mSensorCheckingThread:Landroid/os/HandlerThread;

.field private mSensorHubMiniDumpMaxCnt:J

.field private mSensorHubResetMaxCnt:J

.field private mSensorList:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorProbeFailCnt:[I

.field private mSensorStuckCnt:[I

.field private mStuckAxisData:[[Z

.field private mSubAccCnt:I

.field private mSubAccDataList:[[F

.field private mSubAccEnabled:Z

.field private mSubAccName:Ljava/lang/String;

.field private mSubAccSensor:Landroid/hardware/Sensor;

.field private mSubAccStuckAxis:[[Z

.field private mSubAccStuckData:[[F

.field private mSubGyroCnt:I

.field private mSubGyroDataList:[[F

.field private mSubGyroEnabled:Z

.field private mSubGyroName:Ljava/lang/String;

.field private mSubGyroSensor:Landroid/hardware/Sensor;

.field private mSubGyroStuckAxis:[[Z

.field private mSubGyroStuckData:[[F

.field private mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

.field private nomove_cnt:I

.field private prvResult_mv:I

.field private final sensorAccListener:Landroid/hardware/SensorEventListener;

.field private final sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

.field private final sensorGyroListener:Landroid/hardware/SensorEventListener;

.field private final sensorMagListener:Landroid/hardware/SensorEventListener;

.field private final sensorPressureListener:Landroid/hardware/SensorEventListener;

.field private final sensorSubAccListener:Landroid/hardware/SensorEventListener;

.field private final sensorSubGyroListener:Landroid/hardware/SensorEventListener;

.field private sumAccX:F

.field private sumAccX2:F

.field private varAcc:F


# direct methods
.method static bridge synthetic -$$Nest$fgetFREE_FALL_HEIGHT_THRESHOLD(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->FREE_FALL_HEIGHT_THRESHOLD:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetFREE_FALL_SENSOR_CHECK_TIMEOUT(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->FREE_FALL_SENSOR_CHECK_TIMEOUT:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetSENSOR_CHECK_TIMEOUT(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_CHECK_TIMEOUT:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_CNT_MAX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckStuckAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckAcc:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckStuckBaro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckBaro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckStuckGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckGyro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckStuckSubAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckSubAcc:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckStuckSubGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckSubGyro:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccDataList:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccName(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckAxis:[[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorsum:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBaroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroDataList:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBaroStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[Z
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckAxis:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBaroStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckData:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDropClassifierListener(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDropClassifierSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDumpInfoHistory(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroDataList:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGyroStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckAxis:[[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGyroStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMoving:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMovingSub(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingSub:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorCheckingHandler(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorStuckCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckCnt:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mStuckAxisData:[[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubAccDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccDataList:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubAccStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckAxis:[[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubAccStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubGyroDataList(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroDataList:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubGyroStuckAxis(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[Z
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckAxis:[[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubGyroStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckData:[[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputSENSOR_TYPE_CNT_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_CNT_MAX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputSENSOR_TYPE_UNREGISTERED_MAX(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputWrongVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckStuckAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckAcc:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckStuckBaro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckBaro:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckStuckGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckGyro:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckStuckSubAcc(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckSubAcc:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckStuckSubGyro(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckSubGyro:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccVectorsum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorsum:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccWrongRangeEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccWrongVectorsumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBaroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGyroEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMoving:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMovingForVectorSumCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMovingSub(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingSub:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPressureEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubAccCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubAccEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubGyroCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubGyroEnabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mForceStopSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->ForceStopSensor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$maddSensorCheckLog(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckFreeFallSensorDisabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkFreeFallSensorDisabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckHWParamSensorStatus(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkHWParamSensorStatus(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSensorHubResetStatus(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkSensorHubResetStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->convertTimeToStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->disableFreeFallSensorEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->enableFreeFallSensorEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableFreefreeFallDetection(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->enableFreefreeFallDetection()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetDeviceInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getDeviceInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFreeFallDetectionTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFreeFallDetectionTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mgetFreeFallTime(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFreeFallTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMcuInfo(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getMcuInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSensorStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorStuckData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStuckAxisData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckAxisData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDiagStuckData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isDiagStuckData(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMoving(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;[F)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isMoving([F)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMovingForVectorSum(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;[F)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isMovingForVectorSum([F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSensorHubSupported(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isSensorHubSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendFreeFallEventToBigDataServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendFreeFallEventToBigDataServer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendHWParamServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterAccWrongRangeListner(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->unregisterAccWrongRangeListner()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFreeFallLoggingData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->writeFreeFallLoggingData(JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmSensorProbeStatus()[I
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsErrorType()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsEventType()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sEventType:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 284
    const-string v0, "ERROR_MCU_PROBE"

    const-string v1, "ERROR_SENSOR_PROBE"

    const-string v2, "ERROR_SENSOR_STUCK"

    const-string v3, "ERROR_SENSORHUB_RESET"

    const-string v4, "ERROR_ACC_RANGE"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    .line 292
    const-string v0, "EVENT_FREE_FALL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sEventType:[Ljava/lang/String;

    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "RESET_REASON_UNKNOWN"

    const-string v2, "RESET_REASON_KERNEL_RESET"

    const-string v3, "RESET_REASON_CRASH"

    const-string v4, "RESET_REASON_SYSFS"

    const-string v5, "RESET_REASON_HUB_REQUEST"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "RESET_REASON_SLPI_ERROR_FATAL"

    const-string v4, "RESET_SLPI_WDOG_BITE"

    const-string v5, "RESET_SLPI_BY_AP"

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sResetReason:[[Ljava/lang/String;

    .line 323
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    .line 422
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SURVEY_LOG:Z

    .line 3340
    sput-boolean v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    return-void

    nop

    :array_54
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/SemContextManager;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "semmanager"    # Lcom/samsung/android/hardware/context/SemContextManager;

    .line 480
    const-class v0, Z

    const-class v1, F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_3da

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorStuckCnt:[I

    .line 346
    const/16 v3, 0x9

    new-array v4, v3, [I

    fill-array-data v4, :array_3ea

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeFailCnt:[I

    .line 359
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_CNT_MAX:I

    .line 360
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    .line 361
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 362
    const-wide/16 v5, 0x7530

    iput-wide v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_CHECK_TIMEOUT:J

    .line 363
    const-wide/16 v5, 0x1388

    iput-wide v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->FREE_FALL_SENSOR_CHECK_TIMEOUT:J

    .line 364
    const-wide/16 v5, 0x2710

    iput-wide v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSORHUB_RESET_TIMESTAMP_DURATION:J

    .line 365
    const-wide/16 v5, 0xb4

    iput-wide v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->FREE_FALL_HEIGHT_THRESHOLD:J

    .line 366
    const/16 v5, 0x400

    iput v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_MRSI_FEATURE_MAX_LENGTH:I

    .line 368
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    .line 370
    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_400

    const-class v7, I

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeStatusData:[[I

    .line 371
    new-array v6, v5, [I

    fill-array-data v6, :array_408

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mStuckAxisData:[[Z

    .line 384
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    .line 385
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    .line 386
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    .line 387
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    .line 388
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    .line 389
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    .line 390
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityLightName:Ljava/lang/String;

    .line 391
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    .line 392
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    .line 436
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLockSensor:Ljava/lang/Object;

    .line 451
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    .line 452
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    .line 453
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    .line 454
    iput-wide v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    .line 455
    iput-wide v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPrevSensorHubResetTimeStamp:J

    .line 456
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPreMiniDumpValue:Ljava/lang/String;

    .line 457
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsVirtualProximitySensor:Z

    .line 463
    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;-><init>(I)V

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    .line 465
    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    const/16 v8, 0x3e8

    invoke-direct {v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;-><init>(I)V

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    .line 467
    iput-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    .line 1112
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1113
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    .line 1114
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    .line 1115
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    .line 1116
    iput v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    .line 1117
    iput v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    .line 1118
    iput v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorsum:F

    .line 1119
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    .line 1120
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    .line 1121
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    .line 1122
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    .line 1123
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    .line 1124
    new-array v7, v3, [F

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove:[F

    .line 1125
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove2:[F

    .line 1637
    new-array v3, v5, [I

    fill-array-data v3, :array_410

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccDataList:[[F

    .line 1638
    new-array v3, v5, [I

    fill-array-data v3, :array_418

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckData:[[F

    .line 1639
    new-array v3, v5, [I

    fill-array-data v3, :array_420

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckAxis:[[Z

    .line 1640
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccCnt:I

    .line 1641
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckAcc:Z

    .line 1642
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMoving:Z

    .line 1644
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$4;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccListener:Landroid/hardware/SensorEventListener;

    .line 1770
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

    .line 1835
    new-array v3, v5, [I

    fill-array-data v3, :array_428

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccDataList:[[F

    .line 1836
    new-array v3, v5, [I

    fill-array-data v3, :array_430

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckData:[[F

    .line 1837
    new-array v3, v5, [I

    fill-array-data v3, :array_438

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckAxis:[[Z

    .line 1838
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccCnt:I

    .line 1839
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckSubAcc:Z

    .line 1840
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingSub:Z

    .line 1841
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubAccListener:Landroid/hardware/SensorEventListener;

    .line 1917
    new-array v3, v5, [I

    fill-array-data v3, :array_440

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagStuckData:[[F

    .line 1918
    new-array v3, v5, [I

    fill-array-data v3, :array_448

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagStuckAxis:[[Z

    .line 1922
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$7;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorMagListener:Landroid/hardware/SensorEventListener;

    .line 1990
    new-array v3, v5, [I

    fill-array-data v3, :array_450

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroDataList:[[F

    .line 1991
    new-array v3, v5, [I

    fill-array-data v3, :array_458

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckData:[[F

    .line 1992
    new-array v3, v5, [I

    fill-array-data v3, :array_460

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckAxis:[[Z

    .line 1993
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroCnt:I

    .line 1994
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckGyro:Z

    .line 1996
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$8;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorGyroListener:Landroid/hardware/SensorEventListener;

    .line 2059
    new-array v3, v5, [I

    fill-array-data v3, :array_468

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroDataList:[[F

    .line 2060
    new-array v3, v5, [I

    fill-array-data v3, :array_470

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckData:[[F

    .line 2061
    new-array v3, v5, [I

    fill-array-data v3, :array_478

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckAxis:[[Z

    .line 2062
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroCnt:I

    .line 2063
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckSubGyro:Z

    .line 2064
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$9;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubGyroListener:Landroid/hardware/SensorEventListener;

    .line 2127
    const/16 v0, 0x3d

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroDataList:[F

    .line 2128
    const/4 v0, 0x3

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckData:[F

    .line 2129
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckAxis:[Z

    .line 2130
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroCnt:I

    .line 2131
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkStuckBaro:Z

    .line 2133
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$10;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorPressureListener:Landroid/hardware/SensorEventListener;

    .line 3304
    new-instance v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$11;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierListener:Landroid/hardware/SensorEventListener;

    .line 3347
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    .line 3348
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    .line 3349
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    .line 3350
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    .line 3351
    const/4 v3, 0x4

    new-array v7, v3, [I

    fill-array-data v7, :array_480

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    .line 3352
    new-array v7, v5, [I

    fill-array-data v7, :array_48c

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    .line 3353
    new-array v7, v5, [I

    fill-array-data v7, :array_494

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    .line 3354
    new-array v7, v5, [I

    fill-array-data v7, :array_49c

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[F

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    .line 3355
    new-array v7, v5, [I

    fill-array-data v7, :array_4a4

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    .line 3356
    new-array v1, v3, [[Ljava/lang/String;

    const-string v7, "ACC_AVG_X"

    const-string v8, "ACC_AVG_Y"

    const-string v9, "ACC_AVG_Z"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    const-string v7, "GYRO_AVG_X"

    const-string v8, "GYRO_AVG_Y"

    const-string v9, "GYRO_AVG_Z"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v1, v8

    const-string v7, "SACC_AVG_X"

    const-string v9, "SACC_AVG_Y"

    const-string v10, "SACC_AVG_Z"

    filled-new-array {v7, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    const-string v7, "SGYRO_AVG_X"

    const-string v9, "SGYRO_AVG_Y"

    const-string v10, "SGYRO_AVG_Z"

    filled-new-array {v7, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSensorID:[[Ljava/lang/String;

    .line 3499
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$12;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    .line 3533
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$13;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    .line 3566
    new-instance v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$14;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    .line 482
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 483
    invoke-static {}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->getInstance()Lcom/samsung/android/gesture/MotionRecognitionSAR;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSarMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    .line 484
    const-string v7, "sensor"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 485
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 487
    new-instance v7, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    invoke-direct {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    .line 488
    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->isFileExists()Z

    move-result v7

    const-string v9, "0000000000000000"

    if-nez v7, :cond_288

    .line 489
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    invoke-virtual {v7, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->writeData(Ljava/lang/String;)V

    goto :goto_2a1

    .line 491
    :cond_288
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    invoke-virtual {v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->readData()Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_29c

    invoke-direct {p0, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkMRSISensorFileData(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2a1

    .line 493
    :cond_29c
    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    invoke-virtual {v10, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->writeData(Ljava/lang/String;)V

    .line 498
    .end local v7    # "data":Ljava/lang/String;
    :cond_2a1
    :goto_2a1
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v9, 0x1003f

    invoke-virtual {v7, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    .line 500
    .local v7, "mSensor":Landroid/hardware/Sensor;
    if-eqz v7, :cond_2b4

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getVersion()I

    move-result v9

    if-ne v9, v0, :cond_2b4

    .line 501
    iput-boolean v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsVirtualProximitySensor:Z

    .line 505
    :cond_2b4
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->initializeSensorProbeStatus()V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    .line 508
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagSensor:Landroid/hardware/Sensor;

    .line 509
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    .line 510
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureSensor:Landroid/hardware/Sensor;

    .line 511
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightSensor:Landroid/hardware/Sensor;

    .line 512
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximitySensor:Landroid/hardware/Sensor;

    .line 513
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10097

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    .line 514
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10099

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    .line 516
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 517
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeSensorList:I

    .line 518
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeTestResult:Z

    .line 519
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccEnabled:Z

    .line 520
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    .line 521
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagEnabled:Z

    .line 522
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroEnabled:Z

    .line 523
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureEnabled:Z

    .line 524
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccEnabled:Z

    .line 525
    iput-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroEnabled:Z

    .line 527
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkSensorChipName()V

    .line 529
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    .line 531
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 532
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "MotionRecognitionSensorChecker"

    if-eqz v2, :cond_389

    .line 534
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v2, :cond_383

    const/16 v4, 0x37

    invoke-virtual {v2, v4}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_383

    .line 535
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 586
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "FreefreeFallDetectionThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 587
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 588
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mHandler:Landroid/os/Handler;

    .line 611
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    const-string v4, "/data/system/ff_data"

    invoke-direct {v2, v4, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    .line 612
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->readFreeFallData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)I

    move-result v2

    .line 613
    .local v2, "ff_size":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ff_size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v2    # "ff_size":I
    goto :goto_38e

    .line 615
    :cond_383
    const-string v2, "Free fall detection isn\'t supported"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38e

    .line 618
    :cond_389
    const-string v2, "Sensorhub isn\'t supported"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_38e
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "SensorCheckingThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingThread:Landroid/os/HandlerThread;

    .line 622
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 623
    new-instance v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$3;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    .line 649
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x1006c

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDropClassifierSensor:Landroid/hardware/Sensor;

    .line 651
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 652
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v4, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v4, "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 658
    const-string v1, "MotionRecognitionSensorChecker~~ "

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void

    nop

    :array_3da
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3ea
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_400
    .array-data 4
        0x3
        0x9
    .end array-data

    :array_408
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_410
    .array-data 4
        0x259
        0x3
    .end array-data

    :array_418
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_420
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_428
    .array-data 4
        0x259
        0x3
    .end array-data

    :array_430
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_438
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_440
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_448
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_450
    .array-data 4
        0x259
        0x3
    .end array-data

    :array_458
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_460
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_468
    .array-data 4
        0x259
        0x3
    .end array-data

    :array_470
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_478
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_480
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_48c
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_494
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_49c
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_4a4
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private ForceStopSensor()I
    .registers 5

    .line 1329
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    const-string v1, "MotionRecognitionSensorChecker"

    const/4 v2, 0x0

    if-eqz v0, :cond_6c

    .line 1330
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1331
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->unregisterAccWrongRangeListner()V

    .line 1332
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccEnabled:Z

    .line 1333
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMoving:Z

    .line 1334
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1335
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorGyroListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1336
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1337
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroEnabled:Z

    .line 1338
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorPressureListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1339
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1340
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureEnabled:Z

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubAccListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1342
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccEnabled:Z

    .line 1343
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingSub:Z

    .line 1344
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1345
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubGyroListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1346
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroEnabled:Z

    .line 1347
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1349
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    .line 1350
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_CNT_MAX:I

    .line 1351
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 1352
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->release()V

    .line 1354
    const-string v0, "Run ForceStopSensor()"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 1356
    :cond_6c
    const-string v0, "Skip ForceStopSensor()"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_71
    return v2
.end method

.method private InitVariableForVectorSum()V
    .registers 4

    .line 1129
    const-string v0, "MotionRecognitionSensorChecker"

    const-string v1, "InitVariableForVectorSum"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongVectorsumCnt:I

    .line 1131
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccVectorSumCnt:I

    .line 1132
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSumCnt:I

    .line 1133
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->WrongVectorSum:Z

    .line 1134
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingForVectorSum:I

    .line 1135
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1136
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    .line 1137
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    .line 1138
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    .line 1139
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    .line 1140
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    .line 1141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2f

    .line 1142
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove:[F

    aput v0, v2, v1

    .line 1143
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove2:[F

    aput v0, v2, v1

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1145
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method private addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 2386
    const-string v0, ""

    .line 2387
    .local v0, "result":Ljava/lang/String;
    if-nez p3, :cond_17

    .line 2388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2390
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2391
    if-eqz p3, :cond_59

    const/4 v1, 0x1

    if-ne p3, v1, :cond_42

    goto :goto_59

    .line 2393
    :cond_42
    const/4 v1, 0x2

    if-ne p3, v1, :cond_6c

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    .line 2392
    :cond_59
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2396
    :cond_6c
    :goto_6c
    return-object v0
.end method

.method private cancelAlarm()V
    .registers 6

    .line 3218
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v1, "MotionRecognitionSensorChecker"

    if-nez v0, :cond_c

    .line 3219
    const-string v0, "AlarmManager is null!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    return-void

    .line 3222
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3224
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3225
    .local v2, "operation":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3226
    const-string v3, "Cancel alarm about forcing stop sensor."

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    return-void
.end method

.method private checkDiagProbeSensor(I)Z
    .registers 6
    .param p1, "address"    # I

    .line 1469
    const/4 v0, 0x1

    .line 1470
    .local v0, "res":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3a

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Probe Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeStatusData:[[I

    aget-object v3, v3, v1

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ProbeStatusType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionRecognitionSensorChecker"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeStatusData:[[I

    aget-object v2, v2, v1

    aget v2, v2, p1

    if-eqz v2, :cond_37

    .line 1473
    const/4 v0, 0x0

    .line 1474
    goto :goto_3a

    .line 1470
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1477
    .end local v1    # "j":I
    :cond_3a
    :goto_3a
    return v0
.end method

.method private checkFreeFallSensorDisabled()Z
    .registers 5

    .line 3472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_27

    .line 3473
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    aget v1, v1, v0

    if-lez v1, :cond_24

    .line 3474
    const/4 v1, 0x0

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_2a

    goto :goto_24

    .line 3488
    :pswitch_10
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    if-ge v3, v2, :cond_24

    .line 3489
    return v1

    .line 3484
    :pswitch_15
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    if-ge v3, v2, :cond_24

    .line 3485
    return v1

    .line 3480
    :pswitch_1a
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    if-ge v3, v2, :cond_24

    .line 3481
    return v1

    .line 3476
    :pswitch_1f
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    if-ge v3, v2, :cond_24

    .line 3477
    return v1

    .line 3472
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3496
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method private checkHWParamSensorStatus(I)V
    .registers 19
    .param p1, "type"    # I

    .line 2625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->readData()Ljava/lang/String;

    move-result-object v1

    .line 2626
    .local v1, "sensorStatusData":Ljava/lang/String;
    const-string v2, ""

    .line 2628
    .local v2, "result":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "MotionRecognitionSensorChecker"

    if-eqz v4, :cond_1a

    .line 2629
    const-string v3, "Status of sensor data is wrong"

    invoke-static {v5, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    return-void

    .line 2633
    :cond_1a
    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkMRSISensorFileData(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2634
    const-string v4, "Status of sensor data is incorrect. Set default value"

    invoke-static {v5, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iget-object v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    const-string v6, "0000000000000000"

    invoke-virtual {v4, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->writeData(Ljava/lang/String;)V

    .line 2636
    const-string v1, "0000000000000000"

    .line 2640
    :cond_2e
    const-string v4, "8.6.0"

    .line 2641
    .local v4, "mrsiVersion":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2642
    const-string v4, "NULL"

    .line 2644
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "MRSI_VERSION"

    const/4 v7, 0x1

    invoke-direct {v0, v6, v4, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sensor status data size : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->initializeSensorProbeStatus()V

    .line 2648
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3b5

    .line 2649
    const-string v5, ""

    .line 2650
    .local v5, "probeStatus":Ljava/lang/String;
    const-string v6, ""

    .line 2651
    .local v6, "stuckStatus":Ljava/lang/String;
    const-string v8, ""

    .line 2652
    .local v8, "chipName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2653
    .local v9, "data":C
    const/16 v10, 0x31

    if-ne v9, v10, :cond_87

    .line 2654
    const-string v5, "FAIL"

    .line 2655
    const-string v6, "STUCK"

    goto :goto_8f

    .line 2656
    :cond_87
    const/16 v11, 0x30

    if-ne v9, v11, :cond_8f

    .line 2657
    const-string v5, "SUCCESS"

    .line 2658
    const-string v6, "NOT STUCK"

    .line 2660
    :cond_8f
    :goto_8f
    const/4 v11, 0x4

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v14, -0x1

    packed-switch v3, :pswitch_data_3c0

    :pswitch_9a
    goto/16 :goto_3b1

    .line 2787
    :pswitch_9c
    const/16 v11, 0xd

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_aa

    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v12

    if-ne v10, v14, :cond_ac

    .line 2790
    :cond_aa
    const-string v6, "N/A"

    .line 2791
    :cond_ac
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v12

    if-ne v10, v14, :cond_b4

    .line 2792
    const-string v8, "N/A"

    .line 2793
    :cond_b4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SUB_GYRO_STUCK"

    invoke-direct {v0, v11, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2794
    goto/16 :goto_3b1

    .line 2778
    :pswitch_cd
    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_db

    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v13

    if-ne v10, v14, :cond_dd

    .line 2781
    :cond_db
    const-string v6, "N/A"

    .line 2782
    :cond_dd
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v13

    if-ne v10, v14, :cond_e5

    .line 2783
    const-string v8, "N/A"

    .line 2784
    :cond_e5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SUB_ACC_STUCK"

    invoke-direct {v0, v11, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2785
    goto/16 :goto_3b1

    .line 2741
    :pswitch_fe
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v12

    if-ne v10, v14, :cond_109

    .line 2742
    const-string v5, "N/A"

    .line 2743
    const-string v8, "N/A"

    goto :goto_10b

    .line 2745
    :cond_109
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    .line 2747
    :goto_10b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SUB_GYRO_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2748
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SUB_GYRO_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2749
    goto/16 :goto_3b1

    .line 2731
    :pswitch_13b
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v13

    if-ne v10, v14, :cond_146

    .line 2732
    const-string v5, "N/A"

    .line 2733
    const-string v8, "N/A"

    goto :goto_148

    .line 2735
    :cond_146
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    .line 2737
    :goto_148
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SUB_ACC_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2738
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SUB_ACC_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2739
    goto/16 :goto_3b1

    .line 2721
    :pswitch_178
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    if-ne v10, v14, :cond_184

    .line 2722
    const-string v5, "N/A"

    .line 2723
    const-string v8, "N/A"

    goto :goto_186

    .line 2725
    :cond_184
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    .line 2727
    :goto_186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PROXI_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2728
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PROXI_PROBE"

    invoke-direct {v0, v11, v5, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2729
    goto/16 :goto_3b1

    .line 2769
    :pswitch_1b6
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_1c3

    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    if-ne v10, v14, :cond_1c5

    .line 2772
    :cond_1c3
    const-string v6, "N/A"

    .line 2773
    :cond_1c5
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    if-ne v10, v14, :cond_1ce

    .line 2774
    const-string v8, "N/A"

    .line 2775
    :cond_1ce
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "BARO_STUCK"

    invoke-direct {v0, v11, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2776
    goto/16 :goto_3b1

    .line 2760
    :pswitch_1e7
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_1f3

    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v7

    if-ne v10, v14, :cond_1f5

    .line 2763
    :cond_1f3
    const-string v6, "N/A"

    .line 2764
    :cond_1f5
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v7

    if-ne v10, v14, :cond_1fd

    .line 2765
    const-string v8, "N/A"

    .line 2766
    :cond_1fd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "GYRO_STUCK"

    invoke-direct {v0, v11, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2767
    goto/16 :goto_3b1

    .line 2751
    :pswitch_216
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v10, :cond_222

    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v16

    if-ne v10, v14, :cond_224

    .line 2754
    :cond_222
    const-string v6, "N/A"

    .line 2755
    :cond_224
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v16

    if-ne v10, v14, :cond_22c

    .line 2756
    const-string v8, "N/A"

    .line 2757
    :cond_22c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ACC_STUCK"

    invoke-direct {v0, v11, v6, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2758
    goto/16 :goto_3b1

    .line 2702
    :pswitch_245
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v11

    if-ne v10, v14, :cond_250

    .line 2703
    const-string v5, "N/A"

    .line 2704
    const-string v8, "N/A"

    goto :goto_252

    .line 2706
    :cond_250
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityLightName:Ljava/lang/String;

    .line 2708
    :goto_252
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PROXI_LIGHT_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2709
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "PROXI_LIGHT_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2711
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    if-ne v10, v14, :cond_28c

    .line 2712
    const-string v5, "N/A"

    .line 2713
    const-string v8, "N/A"

    goto :goto_28e

    .line 2715
    :cond_28c
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    .line 2717
    :goto_28e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "LIGHT_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2718
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "LIGHT_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2719
    goto/16 :goto_3b1

    .line 2692
    :pswitch_2be
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    if-ne v10, v14, :cond_2ca

    .line 2693
    const-string v5, "N/A"

    .line 2694
    const-string v8, "N/A"

    goto :goto_2cc

    .line 2696
    :cond_2ca
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    .line 2698
    :goto_2cc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "BARO_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2699
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "BARO_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2700
    goto/16 :goto_3b1

    .line 2682
    :pswitch_2fc
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v15

    if-ne v10, v14, :cond_307

    .line 2683
    const-string v5, "N/A"

    .line 2684
    const-string v8, "N/A"

    goto :goto_309

    .line 2686
    :cond_307
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    .line 2688
    :goto_309
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MAG_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2689
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MAG_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2690
    goto/16 :goto_3b1

    .line 2672
    :pswitch_339
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v7

    if-ne v10, v14, :cond_344

    .line 2673
    const-string v5, "N/A"

    .line 2674
    const-string v8, "N/A"

    goto :goto_346

    .line 2676
    :cond_344
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    .line 2678
    :goto_346
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "GYRO_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2679
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "GYRO_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2680
    goto :goto_3b1

    .line 2662
    :pswitch_375
    sget-object v10, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aget v10, v10, v16

    if-ne v10, v14, :cond_380

    .line 2663
    const-string v5, "N/A"

    .line 2664
    const-string v8, "N/A"

    goto :goto_382

    .line 2666
    :cond_380
    iget-object v8, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    .line 2668
    :goto_382
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ACC_NAME"

    invoke-direct {v0, v11, v8, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2669
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ACC_PROBE"

    invoke-direct {v0, v11, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2670
    nop

    .line 2648
    .end local v5    # "probeStatus":Ljava/lang/String;
    .end local v6    # "stuckStatus":Ljava/lang/String;
    .end local v8    # "chipName":Ljava/lang/String;
    .end local v9    # "data":C
    :goto_3b1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6e

    .line 2800
    .end local v3    # "i":I
    :cond_3b5
    const-string v3, "MRSI"

    const-string v5, "sm"

    move/from16 v6, p1

    invoke-direct {v0, v3, v2, v6, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2802
    return-void

    nop

    :pswitch_data_3c0
    .packed-switch 0x1
        :pswitch_375
        :pswitch_339
        :pswitch_2fc
        :pswitch_2be
        :pswitch_245
        :pswitch_216
        :pswitch_1e7
        :pswitch_9a
        :pswitch_1b6
        :pswitch_178
        :pswitch_9a
        :pswitch_13b
        :pswitch_fe
        :pswitch_cd
        :pswitch_9c
    .end packed-switch
.end method

.method private checkJSONFormat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 2849
    const/4 v0, 0x0

    .line 2851
    .local v0, "res":Z
    if-nez p1, :cond_4

    .line 2852
    return v0

    .line 2855
    :cond_4
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2856
    const/4 v0, 0x1

    .line 2859
    :cond_15
    return v0
.end method

.method private checkMRSISensorFileData(Ljava/lang/String;)Z
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 3231
    const/4 v0, 0x1

    .line 3233
    .local v0, "result":Z
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3234
    const/4 v0, 0x0

    .line 3235
    return v0

    .line 3238
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 3239
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3240
    .local v2, "probeStatus":C
    const/16 v3, 0x31

    if-eq v2, v3, :cond_20

    const/16 v3, 0x30

    if-eq v2, v3, :cond_20

    .line 3241
    const/4 v0, 0x0

    .line 3242
    goto :goto_23

    .line 3238
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3245
    .end local v1    # "i":I
    .end local v2    # "probeStatus":C
    :cond_23
    :goto_23
    return v0
.end method

.method private checkMiniDumpData(Ljava/lang/String;)Z
    .registers 10
    .param p1, "data"    # Ljava/lang/String;

    .line 3058
    const/4 v0, 0x0

    .line 3060
    .local v0, "res":Z
    const-string v1, "MotionRecognitionSensorChecker"

    if-nez p1, :cond_c

    .line 3061
    const-string v2, "Dump data is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    const/4 v0, 0x1

    .line 3063
    return v0

    .line 3066
    :cond_c
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3067
    const-string v2, "Dump data is wrong!!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    const/4 v0, 0x1

    .line 3069
    return v0

    .line 3072
    :cond_1b
    const-string v2, "|<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3073
    .local v2, "address1":I
    const-string v3, ">;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3074
    .local v3, "address2":I
    const-string v4, ""

    .line 3076
    .local v4, "pcValue":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_7a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_36

    goto :goto_7a

    .line 3081
    :cond_36
    if-lez v2, :cond_79

    if-lez v3, :cond_79

    .line 3082
    if-le v2, v3, :cond_3e

    .line 3083
    const/4 v0, 0x1

    .line 3084
    return v0

    .line 3087
    :cond_3e
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3088
    if-eqz v4, :cond_6a

    .line 3089
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3090
    .local v5, "subData":[Ljava/lang/String;
    if-eqz v5, :cond_6a

    array-length v6, v5

    const/4 v7, 0x7

    if-le v6, v7, :cond_6a

    .line 3091
    const/4 v6, 0x5

    aget-object v4, v5, v6

    .line 3092
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3093
    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    .end local v5    # "subData":[Ljava/lang/String;
    :cond_6a
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPreMiniDumpValue:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 3098
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 3099
    const/4 v0, 0x1

    goto :goto_77

    .line 3101
    :cond_76
    const/4 v0, 0x0

    .line 3105
    :cond_77
    :goto_77
    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPreMiniDumpValue:Ljava/lang/String;

    .line 3108
    :cond_79
    return v0

    .line 3077
    :cond_7a
    :goto_7a
    const/4 v0, 0x1

    .line 3078
    return v0
.end method

.method private checkSensorChipName()V
    .registers 17

    .line 2516
    move-object/from16 v0, p0

    const-string v1, "/efs/FactoryApp/Sensorinfo/Accelerometer"

    const-string v2, "/efs/FactoryApp/Sensorinfo/Gyroscope"

    const-string v3, "/efs/FactoryApp/Sensorinfo/Magnetometer"

    const-string v4, "/efs/FactoryApp/Sensorinfo/Barometer"

    const-string v5, "/efs/FactoryApp/Sensorinfo/Proximity"

    const-string v6, "/efs/FactoryApp/Sensorinfo/Light"

    const-string v7, "/efs/FactoryApp/Sensorinfo/Sub_Accelerometer"

    const-string v8, "/efs/FactoryApp/Sensorinfo/Sub_Gyroscope"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 2521
    .local v1, "chipNamePath":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSensorProbeStatus.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionRecognitionSensorChecker"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    sget-object v4, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    array-length v5, v4

    const-string v6, "None"

    if-ge v2, v5, :cond_5f

    .line 2523
    aget v4, v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5c

    .line 2524
    packed-switch v2, :pswitch_data_196

    goto :goto_5c

    .line 2550
    :pswitch_42
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    .line 2551
    goto :goto_5c

    .line 2547
    :pswitch_45
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    .line 2548
    goto :goto_5c

    .line 2544
    :pswitch_48
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    .line 2545
    goto :goto_5c

    .line 2541
    :pswitch_4b
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    .line 2542
    goto :goto_5c

    .line 2538
    :pswitch_4e
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityLightName:Ljava/lang/String;

    .line 2539
    goto :goto_5c

    .line 2535
    :pswitch_51
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    .line 2536
    goto :goto_5c

    .line 2532
    :pswitch_54
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    .line 2533
    goto :goto_5c

    .line 2529
    :pswitch_57
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    .line 2530
    goto :goto_5c

    .line 2526
    :pswitch_5a
    iput-object v6, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    .line 2522
    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 2558
    .end local v2    # "i":I
    :cond_5f
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    .line 2559
    :cond_69
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    .line 2560
    :cond_73
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    .line 2561
    :cond_7d
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_87

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    .line 2562
    :cond_87
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_91

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    .line 2563
    :cond_91
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    .line 2564
    :cond_9b
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    .line 2565
    :cond_a5
    iget-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_af

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    .line 2567
    :cond_af
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v5, v4, v8

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v5, v4, v9

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    const/4 v10, 0x3

    aput-object v5, v4, v10

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    const/4 v11, 0x4

    aput-object v5, v4, v11

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    const/4 v12, 0x5

    aput-object v5, v4, v12

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    const/4 v13, 0x6

    aput-object v5, v4, v13

    iget-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    const/4 v14, 0x7

    aput-object v5, v4, v14

    .line 2568
    .local v4, "chipNameData":[Ljava/lang/String;
    new-array v2, v2, [Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    .line 2570
    .local v2, "fileManager":[Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    aget-object v15, v1, v7

    aget-object v14, v4, v7

    invoke-direct {v5, v15, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v7

    .line 2572
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    aget-object v7, v1, v8

    aget-object v14, v4, v8

    invoke-direct {v5, v7, v14}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v8

    .line 2574
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    aget-object v7, v1, v9

    aget-object v8, v4, v9

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v9

    .line 2576
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    aget-object v7, v1, v10

    aget-object v8, v4, v10

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v10

    .line 2578
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    aget-object v7, v1, v11

    aget-object v8, v4, v11

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v11

    .line 2580
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    aget-object v7, v1, v12

    aget-object v8, v4, v12

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v12

    .line 2582
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    aget-object v7, v1, v13

    aget-object v8, v4, v13

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v13

    .line 2584
    new-instance v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    const/4 v7, 0x7

    aget-object v8, v1, v7

    aget-object v9, v4, v7

    invoke-direct {v5, v8, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v7

    .line 2586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileManager.length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14e
    array-length v5, v2

    if-ge v3, v5, :cond_194

    .line 2589
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->readData()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 2591
    packed-switch v3, :pswitch_data_1ac

    goto :goto_191

    .line 2616
    :pswitch_15d
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    .line 2617
    goto :goto_191

    .line 2613
    :pswitch_162
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    .line 2614
    goto :goto_191

    .line 2608
    :pswitch_167
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    .line 2609
    aget-object v5, v4, v3

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    .line 2610
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityLightName:Ljava/lang/String;

    goto :goto_191

    .line 2605
    :pswitch_178
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    .line 2606
    goto :goto_191

    .line 2602
    :pswitch_17d
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    .line 2603
    goto :goto_191

    .line 2599
    :pswitch_182
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    .line 2600
    goto :goto_191

    .line 2596
    :pswitch_187
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    .line 2597
    goto :goto_191

    .line 2593
    :pswitch_18c
    aget-object v5, v4, v3

    iput-object v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    .line 2594
    nop

    .line 2587
    :cond_191
    :goto_191
    add-int/lit8 v3, v3, 0x1

    goto :goto_14e

    .line 2622
    .end local v3    # "i":I
    :cond_194
    return-void

    nop

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_18c
        :pswitch_187
        :pswitch_182
        :pswitch_17d
        :pswitch_178
        :pswitch_167
        :pswitch_162
        :pswitch_15d
    .end packed-switch
.end method

.method private checkSensorHubResetStatus(Landroid/os/Bundle;)V
    .registers 23
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 781
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "MotionRecognitionSensorChecker"

    if-nez v1, :cond_e

    .line 782
    const-string v3, "Bundle is null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void

    .line 786
    :cond_e
    const/4 v3, 0x0

    .line 787
    .local v3, "address":I
    const-string v4, "resetStatus"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 788
    .local v4, "resetStatus":I
    const-string v5, "resetCnt"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 789
    .local v5, "resetCnt":J
    const-string v7, "timestamp"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 791
    .local v7, "timestamp":J
    const-string v9, ""

    .line 794
    .local v9, "dumpRaw":Ljava/lang/String;
    const-string v10, "/sys/class/sensors/ssp_sensor/bcm_minidump"

    invoke-direct {v0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_35

    .line 795
    if-ne v4, v12, :cond_35

    .line 796
    invoke-direct {v0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 799
    invoke-direct {v0, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendAssertData(Ljava/lang/String;)V

    .line 804
    :cond_35
    iget-wide v13, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPrevSensorHubResetTimeStamp:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_4c

    sub-long v13, v7, v13

    move-wide v15, v5

    .end local v5    # "resetCnt":J
    .local v15, "resetCnt":J
    iget-wide v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSORHUB_RESET_TIMESTAMP_DURATION:J

    cmp-long v5, v13, v5

    if-gez v5, :cond_4d

    .line 806
    const-string v5, "Resetting timestamp of sensorhub is too short, skip sending event to big data server!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void

    .line 804
    .end local v15    # "resetCnt":J
    .restart local v5    # "resetCnt":J
    :cond_4c
    move-wide v15, v5

    .line 809
    .end local v5    # "resetCnt":J
    .restart local v15    # "resetCnt":J
    :cond_4d
    iput-wide v7, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPrevSensorHubResetTimeStamp:J

    .line 812
    invoke-direct {v0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "sm"

    const/4 v10, 0x0

    if-eqz v5, :cond_9f

    .line 814
    if-ne v4, v12, :cond_9f

    .line 815
    iget-wide v13, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    const-wide/16 v19, 0x2

    cmp-long v5, v13, v19

    if-gez v5, :cond_9a

    .line 816
    invoke-direct {v0, v9}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkMiniDumpData(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_94

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getMiniDumpVersion()Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "dumpInfo":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "MD_RAW"

    invoke-direct {v0, v13, v9, v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v11, "SHMD"

    invoke-direct {v0, v11, v5, v10, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 822
    iget-wide v13, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    iput-wide v13, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    .line 824
    .end local v5    # "dumpInfo":Ljava/lang/String;
    goto :goto_9f

    .line 825
    :cond_94
    const-string v5, "Mini dump data is same, skip sending to big data!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 828
    :cond_9a
    const-string v5, "Max event about minidump happens!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_9f
    :goto_9f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sensorhub reset status : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " sensorhub reset cnt : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v13, v15

    .end local v15    # "resetCnt":J
    .local v13, "resetCnt":J
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " sensorhub reset timestamp : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-wide v10, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    iput-wide v10, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    .line 838
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SensorHubResetCnt : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    iget-wide v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-wide v5, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubResetMaxCnt:J

    const-wide/16 v16, 0x12c

    cmp-long v5, v5, v16

    if-gez v5, :cond_21b

    .line 840
    const-string v5, ""

    .line 841
    .local v5, "deviceInfo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getDeviceInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isSensorHubSupported()Z

    move-result v6

    if-eqz v6, :cond_124

    .line 843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getMcuInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 846
    :cond_124
    const/16 v6, 0x64

    const/4 v10, 0x1

    if-lt v4, v6, :cond_12f

    .line 847
    const/4 v3, 0x1

    .line 848
    add-int/lit8 v6, v4, -0x64

    add-int/lit8 v4, v6, 0x1

    goto :goto_130

    .line 850
    :cond_12f
    const/4 v3, 0x0

    .line 853
    :goto_130
    const/4 v6, 0x3

    if-ne v4, v6, :cond_134

    .line 854
    const/4 v4, 0x0

    .line 857
    :cond_134
    sget-object v16, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sResetReason:[[Ljava/lang/String;

    aget-object v15, v16, v3

    array-length v15, v15

    if-ge v4, v15, :cond_13d

    if-gez v4, :cond_13e

    .line 858
    :cond_13d
    const/4 v4, 0x0

    .line 862
    :cond_13e
    if-lez v4, :cond_21a

    .line 863
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v18, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    aget-object v6, v18, v6

    const-string v12, "ERROR_TYPE"

    invoke-direct {v0, v12, v6, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 864
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v12, v16, v3

    aget-object v12, v12, v4

    const-string v15, "RESET_REASON"

    invoke-direct {v0, v15, v12, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const-string v15, "TIMESTAMP"

    invoke-direct {v0, v15, v12, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 866
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "SENSOR"

    invoke-direct {v0, v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorClientData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "SENSOR_INFO"

    invoke-direct {v0, v15, v12, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 867
    const-string v6, "/sys/class/sensors/ssp_sensor/reset_info"

    invoke-direct {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v12

    const-string v15, "RESET_INFO"

    if-eqz v12, :cond_1d2

    .line 868
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v15, v6, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1f3

    .line 869
    :cond_1d2
    const-string v6, "/sys/class/sensors/ssc_core/ssr_msg"

    invoke-direct {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f3

    .line 870
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {v0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v15, v6, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 872
    :cond_1f3
    :goto_1f3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "SEMCONTEXT"

    invoke-direct {v0, v10}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorClientData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "SEMCONTEXT_INFO"

    const/4 v15, 0x2

    invoke-direct {v0, v12, v10, v15}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 874
    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v2, "MRSI"

    const/4 v6, 0x0

    invoke-direct {v0, v2, v5, v6, v11}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 881
    .end local v5    # "deviceInfo":Ljava/lang/String;
    :cond_21a
    goto :goto_220

    .line 882
    :cond_21b
    const-string v5, "Max event about resetting sensorhub happens!!"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_220
    return-void
.end method

.method private convertTimeToStr(J)Ljava/lang/String;
    .registers 8
    .param p1, "time"    # J

    .line 3883
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 3884
    const-string v0, ""

    return-object v0

    .line 3886
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3887
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3889
    .local v1, "today":Ljava/util/Calendar;
    if-eqz v1, :cond_74

    .line 3890
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3891
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3892
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 3893
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3894
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3896
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3897
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3898
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3900
    .end local v3    # "month":I
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private disableFreeFallSensorEvent()V
    .registers 3

    .line 3461
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->cancelAlarm()V

    .line 3462
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    .line 3463
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    .line 3464
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    .line 3465
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    .line 3466
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    .line 3467
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3468
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3469
    return-void
.end method

.method private enableFreeFallSensorEvent()V
    .registers 7

    .line 3427
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    const-string v1, "MotionRecognitionSensorChecker"

    if-eqz v0, :cond_c

    .line 3428
    const-string v0, "Free fall sensor checking is already enabled!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    return-void

    .line 3431
    :cond_c
    iget-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->FREE_FALL_SENSOR_CHECK_TIMEOUT:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->startAlarm(J)V

    .line 3432
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsFreeFallSensorChecking:Z

    .line 3433
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelEventCnt:I

    .line 3434
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelEventCnt:I

    .line 3435
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroEventCnt:I

    .line 3436
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroEventCnt:I

    .line 3438
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    const/4 v4, 0x4

    if-ge v3, v4, :cond_29

    .line 3439
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    const/4 v5, -0x1

    aput v5, v4, v3

    .line 3438
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 3441
    .end local v3    # "i":I
    :cond_29
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_38

    .line 3442
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3443
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    aput v0, v3, v2

    .line 3445
    :cond_38
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_47

    .line 3446
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3447
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    aput v0, v2, v0

    .line 3449
    :cond_47
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_57

    .line 3450
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3451
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 3453
    :cond_57
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_67

    .line 3454
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelGyroEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3455
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFreeFallSensorEnabled:[I

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 3457
    :cond_67
    const-string v0, "Enable free fall sensor event"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    return-void
.end method

.method private enableFreefreeFallDetection()I
    .registers 5

    .line 2805
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_23

    .line 2806
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2807
    .local v0, "tmpPM":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2808
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_23

    .line 2809
    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2811
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 2816
    .end local v0    # "tmpPM":Landroid/content/pm/PackageManager;
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private getBinaryVersion()Ljava/lang/String;
    .registers 10

    .line 2283
    const-string v0, "="

    const-string v1, "ro.build.hidden_ver"

    const-string v2, "MotionRecognitionSensorChecker"

    const-string v3, ""

    .line 2284
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2287
    .local v4, "buffer_reader":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/system/info.extra"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 2290
    :cond_1d
    :goto_1d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "s":Ljava/lang/String;
    if-eqz v5, :cond_3d

    .line 2291
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2292
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2293
    .local v5, "data":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 2294
    const/4 v0, 0x1

    aget-object v0, v5, v0
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_3a} :catch_54
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3a} :catch_48
    .catchall {:try_start_9 .. :try_end_3a} :catchall_46

    .line 2295
    .end local v3    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    move-object v3, v0

    goto :goto_3d

    .line 2297
    .end local v0    # "result":Ljava/lang/String;
    .end local v5    # "data":[Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_3c
    goto :goto_1d

    .line 2305
    .end local v6    # "s":Ljava/lang/String;
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 2308
    :cond_40
    :goto_40
    goto :goto_60

    .line 2306
    :catch_41
    move-exception v0

    .line 2307
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2309
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_60

    .line 2304
    :catchall_46
    move-exception v0

    goto :goto_6d

    .line 2301
    :catch_48
    move-exception v0

    .line 2302
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_49
    const-string v5, "File transmission is failed"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    .line 2305
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_40

    :try_start_50
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_41

    goto :goto_40

    .line 2299
    :catch_54
    move-exception v0

    .line 2300
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_55
    const-string v5, "File is not found"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_46

    .line 2305
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_40

    :try_start_5c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_41

    goto :goto_40

    .line 2311
    :goto_60
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2312
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2315
    :cond_6c
    return-object v3

    .line 2305
    :goto_6d
    if-eqz v4, :cond_78

    :try_start_6f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_78

    .line 2306
    :catch_73
    move-exception v1

    .line 2307
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 2308
    .end local v1    # "e":Ljava/io/IOException;
    :cond_78
    :goto_78
    nop

    .line 2309
    :goto_79
    throw v0
.end method

.method private getDeviceInfo()Ljava/lang/String;
    .registers 10

    .line 2243
    const-string v0, ""

    .line 2246
    .local v0, "result":Ljava/lang/String;
    const-string v1, "8.6.0"

    .line 2247
    .local v1, "mrsiVersion":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2248
    const-string v1, "NULL"

    .line 2250
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "MRSI_VERSION"

    invoke-direct {p0, v5, v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    const-string v3, "ro.chipname"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2254
    .local v3, "chipName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2255
    const-string v3, "NULL"

    .line 2257
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AP_INFO"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v3, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2260
    const-string v4, "ro.revision"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2261
    .local v4, "hwRev":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 2262
    const-string v4, "NULL"

    .line 2264
    :cond_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "HW_REV"

    invoke-direct {p0, v7, v4, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2267
    const-string v5, "ril.rfcal_date"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2268
    .local v5, "rfCalDate":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 2269
    const-string v5, "NULL"

    .line 2271
    :cond_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "RF_CAL"

    invoke-direct {p0, v8, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2274
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getBinaryVersion()Ljava/lang/String;

    move-result-object v7

    .line 2275
    .local v7, "binaryVersion":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 2276
    const-string v7, "NULL"

    .line 2278
    :cond_a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "BINARY_VER"

    invoke-direct {p0, v8, v7, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2279
    return-object v0
.end method

.method private static getFileData(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "file_path"    # Ljava/lang/String;

    .line 2338
    const-string v0, ""

    .line 2339
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2340
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 2342
    .local v3, "buffer_reader":Ljava/io/BufferedReader;
    const-string v4, "MotionRecognitionSensorChecker"

    if-nez p0, :cond_14

    .line 2343
    const-string v2, "File Path is null!!"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    return-object v0

    .line 2347
    :cond_14
    :try_start_14
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 2349
    :goto_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-eqz v5, :cond_31

    .line 2350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 2352
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 2353
    const-string v5, "\n"

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_3c} :catch_54
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3c} :catch_48
    .catchall {:try_start_14 .. :try_end_3c} :catchall_46

    move-object v0, v2

    .line 2361
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 2364
    :cond_40
    :goto_40
    goto :goto_63

    .line 2362
    :catch_41
    move-exception v2

    .line 2363
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2365
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_63

    .line 2360
    :catchall_46
    move-exception v2

    goto :goto_64

    .line 2357
    :catch_48
    move-exception v2

    .line 2358
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_49
    const-string v5, "File transmission is failed"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    .line 2361
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_40

    :try_start_50
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_41

    goto :goto_40

    .line 2354
    :catch_54
    move-exception v2

    .line 2355
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_55
    const-string v5, "File is not found"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_46

    .line 2361
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_40

    :try_start_5f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_41

    goto :goto_40

    .line 2367
    :goto_63
    return-object v0

    .line 2361
    :goto_64
    if-eqz v3, :cond_6f

    :try_start_66
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6f

    .line 2362
    :catch_6a
    move-exception v4

    .line 2363
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70

    .line 2364
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    nop

    .line 2365
    :goto_70
    throw v2
.end method

.method private getFreeFallDetectionTime(J)J
    .registers 9
    .param p1, "height"    # J

    .line 2820
    const/4 v0, 0x0

    .line 2821
    .local v0, "tmpTime":F
    long-to-double v1, p1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 2822
    .local v1, "tmpHeight":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2823
    .local v2, "time":F
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    const v4, 0x411ccccd    # 9.8f

    div-float/2addr v3, v4

    .line 2824
    .end local v0    # "tmpTime":F
    .local v3, "tmpTime":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 2825
    .end local v2    # "time":F
    .local v0, "time":F
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    .line 2826
    float-to-long v4, v0

    return-wide v4
.end method

.method private getFreeFallTime(J)Ljava/lang/String;
    .registers 7
    .param p1, "time"    # J

    .line 3275
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 3276
    const-string v0, ""

    return-object v0

    .line 3278
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3279
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3280
    .local v1, "today":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd/HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3282
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v1, :cond_26

    .line 3283
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getMcuInfo()Ljava/lang/String;
    .registers 8

    .line 2320
    const-string v0, ""

    .line 2321
    .local v0, "result":Ljava/lang/String;
    const-string v1, "/sys/class/sensors/ssp_sensor/mcu_rev"

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2322
    .local v1, "firmData":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2323
    .local v2, "firmVer":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "FIRM_VER"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2324
    return-object v0
.end method

.method private getMiniDumpVersion()Ljava/lang/String;
    .registers 8

    .line 2329
    const-string v0, ""

    .line 2330
    .local v0, "result":Ljava/lang/String;
    const-string v1, "/sys/class/sensors/ssp_sensor/mcu_rev"

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, "firmData":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2332
    .local v2, "firmVer":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "SH_VER"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2333
    return-object v0
.end method

.method private getSensorClientData(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .line 2830
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2831
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4c

    :cond_e
    goto :goto_23

    :sswitch_f
    const-string v1, "SEMCONTEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_24

    :sswitch_19
    const-string v1, "SENSOR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_24

    :goto_23
    const/4 v1, -0x1

    :goto_24
    packed-switch v1, :pswitch_data_56

    goto :goto_47

    .line 2838
    :pswitch_28
    const-string v1, "/data/system/sensor_big_data.txt"

    const-string v2, "sensorservice"

    const-string v3, "big_data"

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2839
    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 2833
    :pswitch_3c
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v1, :cond_47

    .line 2834
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextManager;->getCurrentServiceList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2845
    :cond_47
    :goto_47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_4c
    .sparse-switch
        -0x6e6cb846 -> :sswitch_19
        -0x3381270c -> :sswitch_f
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_28
    .end packed-switch
.end method

.method private getSensorHubResetInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 3144
    const-string v0, ""

    if-eqz p1, :cond_26

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_26

    .line 3149
    :cond_b
    const-string v1, ""

    .line 3150
    .local v1, "result":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3151
    const-string v2, "\""

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3152
    .end local v1    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    const-string v1, ","

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3153
    const-string v1, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3154
    return-object v0

    .line 3145
    .end local v0    # "result":Ljava/lang/String;
    :cond_26
    :goto_26
    const-string v1, "MotionRecognitionSensorChecker"

    const-string v2, "Data about resetting information is wrong"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    return-object v0
.end method

.method private getSensorStuckData(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "type"    # Ljava/lang/String;

    .line 2192
    const-string v0, ""

    .line 2193
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    .line 2194
    .local v1, "sensorType":Ljava/lang/String;
    const-string v2, ""

    .line 2195
    .local v2, "chipID":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 2197
    .local v3, "sensorStuckData":[F
    const-string v4, "Accelerometer"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1d

    .line 2198
    const-string v1, "Accelerometer"

    .line 2199
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    .line 2200
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckData:[[F

    aget-object v3, v4, v6

    goto/16 :goto_97

    .line 2201
    :cond_1d
    const-string v4, "Gyroscope"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2202
    const-string v1, "Gyroscope"

    .line 2203
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    .line 2204
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckData:[[F

    aget-object v3, v4, v6

    goto :goto_97

    .line 2205
    :cond_2e
    const-string v4, "Magnetometer"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2206
    const-string v1, "Magnetometer"

    .line 2207
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    .line 2208
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagStuckData:[[F

    aget-object v3, v4, v6

    goto :goto_97

    .line 2209
    :cond_3f
    const-string v4, "Barometer"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "MotionRecognitionSensorChecker"

    if-eqz v4, :cond_70

    .line 2210
    const-string v1, "Barometer"

    .line 2211
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    .line 2212
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckData:[F

    aget v4, v4, v6

    aput v4, v3, v6

    .line 2213
    const-string v4, "/sys/class/sensors/barometer_sensor/temperature"

    invoke-direct {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 2214
    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2215
    .local v4, "temperature":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v3, v5

    .line 2216
    .end local v4    # "temperature":Ljava/lang/String;
    goto :goto_97

    .line 2217
    :cond_6a
    const-string v4, "File doesn\'t exist about barometer temprature"

    invoke-static {v7, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 2219
    :cond_70
    const-string v4, "Sub_Accelerometer"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2220
    const-string v1, "Sub_Accelerometer"

    .line 2221
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    .line 2222
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckData:[[F

    aget-object v3, v4, v6

    goto :goto_97

    .line 2223
    :cond_81
    const-string v4, "Sub_Gyroscope"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 2224
    const-string v1, "Sub_Gyroscope"

    .line 2225
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    .line 2226
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckData:[[F

    aget-object v3, v4, v6

    goto :goto_97

    .line 2228
    :cond_92
    const-string v4, "This sensor type is wrong!!"

    invoke-static {v7, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :goto_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "SENSOR_TYPE"

    invoke-direct {p0, v7, v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "CHIP_ID"

    invoke-direct {p0, v7, v2, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const-string v9, "ERROR_TYPE"

    invoke-direct {p0, v9, v7, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckAxisData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "STUCK AXIS"

    invoke-direct {p0, v9, v7, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DATA1"

    invoke-direct {p0, v7, v6, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DATA2"

    invoke-direct {p0, v7, v6, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DATA3"

    invoke-direct {p0, v6, v5, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2238
    return-object v0
.end method

.method private getStuckAxis([I)[Z
    .registers 6
    .param p1, "samples"    # [I

    .line 1482
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_18

    .line 1483
    .local v0, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 1484
    aget v2, p1, v1

    const/16 v3, 0x258

    if-ne v2, v3, :cond_13

    .line 1485
    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1483
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1488
    .end local v1    # "i":I
    :cond_16
    return-object v0

    nop

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getStuckAxisData(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;

    .line 1492
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 1495
    .local v1, "address":I
    const-string v2, "Accelerometer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1496
    const/4 v1, 0x0

    goto :goto_43

    .line 1497
    :cond_12
    const-string v2, "Gyroscope"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1498
    const/4 v1, 0x1

    goto :goto_43

    .line 1499
    :cond_1c
    const-string v2, "Magnetometer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1500
    const/4 v1, 0x2

    goto :goto_43

    .line 1501
    :cond_26
    const-string v2, "Barometer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1502
    const/4 v1, 0x3

    goto :goto_43

    .line 1503
    :cond_30
    const-string v2, "Sub_Accelerometer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1504
    const/4 v1, 0x4

    goto :goto_43

    .line 1505
    :cond_3a
    const-string v2, "Sub_Gyroscope"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1506
    const/4 v1, 0x5

    .line 1509
    :cond_43
    :goto_43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    const/4 v3, 0x3

    if-ge v2, v3, :cond_68

    .line 1510
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mStuckAxisData:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_65

    .line 1511
    packed-switch v2, :pswitch_data_6e

    goto :goto_65

    .line 1519
    :pswitch_54
    const-string v3, "Z"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1520
    goto :goto_65

    .line 1516
    :pswitch_5a
    const-string v3, "Y"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1517
    goto :goto_65

    .line 1513
    :pswitch_60
    const-string v3, "X"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1509
    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 1526
    .end local v2    # "i":I
    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_54
    .end packed-switch
.end method

.method private getUsageData(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "type"    # Ljava/lang/String;

    .line 2863
    const-string v0, ""

    const-string v1, "MotionRecognitionSensorChecker"

    if-nez p1, :cond_c

    .line 2864
    const-string v2, "Type value is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    return-object v0

    .line 2868
    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2869
    const-string v2, "Type value is wrong!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    return-object v0

    .line 2873
    :cond_18
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 2874
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_150

    :cond_26
    goto :goto_62

    :sswitch_27
    const-string v3, "USAGE_DATA_SENSOR_PACKAGE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x3

    goto :goto_62

    :sswitch_31
    const-string v3, "IR_USAGE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x2

    goto :goto_62

    :sswitch_3b
    const-string v3, "USAGE_DATA_CALL_GESTURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x4

    goto :goto_62

    :sswitch_45
    const-string v3, "MOBEAM_USAGE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x1

    goto :goto_62

    :sswitch_4f
    const-string v3, "GRIPSENSOR_USAGE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x5

    goto :goto_62

    :sswitch_59
    const-string v3, "SENSOR_USAGE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x0

    :goto_62
    const-string v3, "big_data"

    const-string v4, "/data/system/mobeam_big_data_usage.txt"

    const-string v5, "sensorservice"

    const-string v6, "Data about usage of sensor is too long!!"

    const/16 v7, 0x3e8

    packed-switch v2, :pswitch_data_16a

    goto/16 :goto_14b

    .line 2942
    :pswitch_71
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSarMotion:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    if-eqz v2, :cond_14b

    .line 2943
    invoke-virtual {v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->getUsage()Ljava/lang/String;

    move-result-object v2

    .line 2944
    .local v2, "usageData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_83

    .line 2945
    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 2947
    :cond_83
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 2948
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2951
    .end local v2    # "usageData":Ljava/lang/String;
    :cond_8c
    :goto_8c
    goto/16 :goto_14b

    .line 2929
    :pswitch_8e
    const-string v2, "/data/system/big_data_usage_call_gesture.txt"

    const-string v3, "big_data_call_gesture"

    invoke-virtual {p0, v2, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 2930
    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2931
    .restart local v2    # "usageData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_a6

    .line 2932
    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 2934
    :cond_a6
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2935
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2939
    .end local v2    # "usageData":Ljava/lang/String;
    :cond_af
    :goto_af
    goto/16 :goto_14b

    .line 2916
    :pswitch_b1
    const-string v2, "/data/system/big_data_sensor_usage_pkg.txt"

    const-string v3, "big_data_pkg"

    invoke-virtual {p0, v2, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 2917
    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2918
    .restart local v2    # "usageData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_c9

    .line 2919
    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 2921
    :cond_c9
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 2922
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2926
    .end local v2    # "usageData":Ljava/lang/String;
    :cond_d2
    :goto_d2
    goto/16 :goto_14b

    .line 2903
    :pswitch_d4
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2904
    .local v2, "pm2":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.consumerir"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 2905
    const-string v1, "/data/system/ir_big_data_usage.txt"

    const-string v5, "consumer_ir"

    invoke-virtual {p0, v1, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 2906
    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2907
    .local v1, "usageData":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 2908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2910
    .end local v1    # "usageData":Ljava/lang/String;
    :cond_f9
    goto :goto_14b

    .line 2912
    :cond_fa
    const-string v3, "IR isn\'t supported!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    goto :goto_14b

    .line 2889
    .end local v2    # "pm2":Landroid/content/pm/PackageManager;
    :pswitch_100
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2890
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.sec.feature.barcode_emulator"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 2891
    const-string v1, "barbeam"

    invoke-virtual {p0, v4, v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 2892
    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2893
    .restart local v1    # "usageData":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 2894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2897
    .end local v1    # "usageData":Ljava/lang/String;
    :cond_123
    goto :goto_14b

    .line 2899
    :cond_124
    const-string v3, "Barcode emulator isn\'t supported!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    goto :goto_14b

    .line 2876
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :pswitch_12a
    const-string v2, "/data/system/sensor_big_data_usage.txt"

    const-string v3, "big_data_sensor_usage"

    invoke-virtual {p0, v2, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 2877
    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2878
    .local v2, "usageData":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_142

    .line 2879
    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14b

    .line 2881
    :cond_142
    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkJSONFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 2882
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2957
    .end local v2    # "usageData":Ljava/lang/String;
    :cond_14b
    :goto_14b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_150
    .sparse-switch
        -0x38060344 -> :sswitch_59
        0x10e7150e -> :sswitch_4f
        0x24c01c13 -> :sswitch_45
        0x2b41fb7f -> :sswitch_3b
        0x37e5aeeb -> :sswitch_31
        0x43569a18 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_100
        :pswitch_d4
        :pswitch_b1
        :pswitch_8e
        :pswitch_71
    .end packed-switch
.end method

.method private getWakeUpCountData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 3112
    const-string v0, ""

    if-eqz p1, :cond_12

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_12

    .line 3117
    :cond_b
    const-string v0, ""

    .line 3118
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3119
    return-object v0

    .line 3113
    .end local v0    # "result":Ljava/lang/String;
    :cond_12
    :goto_12
    const-string v1, "MotionRecognitionSensorChecker"

    const-string v2, "WakeUpCount path is wrong"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    return-object v0
.end method

.method private initializeSensorProbeStatus()V
    .registers 8

    .line 2466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_c

    .line 2467
    aput v3, v1, v0

    .line 2466
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2469
    .end local v0    # "i":I
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d1

    .line 2470
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2471
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_21

    .line 2472
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aput v2, v1, v3

    .line 2473
    :cond_21
    const-string v1, "android.hardware.sensor.compass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2474
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 2475
    :cond_2e
    const-string v1, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 2476
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 2477
    :cond_3b
    const-string v1, "android.hardware.sensor.barometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 2478
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 2479
    :cond_48
    const-string v1, "android.hardware.sensor.light"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "None"

    if-nez v1, :cond_5c

    .line 2480
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v4, 0x6

    aput v2, v1, v4

    .line 2481
    const/4 v4, 0x4

    aput v2, v1, v4

    .line 2482
    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    .line 2484
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Virtual proximity Sensor = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsVirtualProximitySensor:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MotionRecognitionSensorChecker"

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    const-string v1, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsVirtualProximitySensor:Z

    if-eqz v1, :cond_89

    .line 2486
    :cond_82
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v5, 0x5

    aput v2, v1, v5

    .line 2487
    iput-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    .line 2493
    :cond_89
    const-string v1, "/sys/class/sensors/ssc_core/support_dual_sensor"

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x8

    const/4 v6, 0x7

    if-nez v3, :cond_a0

    .line 2494
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aput v2, v1, v6

    .line 2495
    aput v2, v1, v5

    .line 2496
    const-string v1, "Not Support Sub 6 Axix Sensor. There is no path "

    invoke-static {v4, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 2498
    :cond_a0
    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2499
    .local v1, "result":Ljava/lang/String;
    const-string v3, "SINGLE_GYRO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 2500
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aput v2, v3, v6

    .line 2501
    aput v2, v3, v5

    .line 2502
    const-string v2, "Not Support Sub 6 Axix Sensor! "

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 2503
    :cond_b8
    const-string v3, "DUAL_GYRO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 2504
    const-string v2, "Support Sub 6 Axix Sensor "

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 2506
    :cond_c6
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aput v2, v3, v6

    .line 2507
    aput v2, v3, v5

    .line 2508
    const-string v2, "Not Support Sub 6 Axix Sensor!!! "

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "result":Ljava/lang/String;
    :cond_d1
    :goto_d1
    return-void
.end method

.method private isDiagStuckData(Ljava/lang/String;)Z
    .registers 16
    .param p1, "type"    # Ljava/lang/String;

    .line 1530
    const/4 v0, 0x0

    .line 1531
    .local v0, "res":Z
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_130

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 1532
    .local v2, "stuckData":[[F
    new-array v3, v1, [I

    fill-array-data v3, :array_138

    const-class v4, Z

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 1533
    .local v3, "stuckAxis":[[Z
    const/4 v4, 0x3

    .line 1534
    .local v4, "axisLength":I
    const/4 v5, 0x3

    .line 1535
    .local v5, "loggingCnt":I
    const/4 v6, 0x0

    .line 1537
    .local v6, "address":I
    const-string v7, "Accelerometer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2e

    .line 1538
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckData:[[F

    .line 1539
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckAxis:[[Z

    .line 1540
    const/4 v6, 0x0

    goto :goto_87

    .line 1541
    :cond_2e
    const-string v7, "Gyroscope"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1542
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckData:[[F

    .line 1543
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckAxis:[[Z

    .line 1544
    const/4 v6, 0x1

    goto :goto_87

    .line 1545
    :cond_3c
    const-string v7, "Magnetometer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 1546
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagStuckData:[[F

    .line 1547
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagStuckAxis:[[Z

    .line 1548
    const/4 v6, 0x2

    goto :goto_87

    .line 1549
    :cond_4a
    const-string v7, "Barometer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1550
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_53
    const/4 v9, 0x3

    if-ge v7, v9, :cond_69

    .line 1551
    aget-object v9, v2, v7

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckData:[F

    aget v10, v10, v7

    aput v10, v9, v8

    .line 1552
    aget-object v9, v3, v7

    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckAxis:[Z

    aget-boolean v10, v10, v7

    aput-boolean v10, v9, v8

    .line 1550
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 1554
    .end local v7    # "i":I
    :cond_69
    const/4 v6, 0x3

    .line 1555
    const/4 v4, 0x1

    goto :goto_87

    .line 1556
    :cond_6c
    const-string v7, "Sub_Accelerometer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 1557
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckData:[[F

    .line 1558
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckAxis:[[Z

    .line 1559
    const/4 v6, 0x4

    goto :goto_87

    .line 1560
    :cond_7a
    const-string v7, "Sub_Gyroscope"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 1561
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckData:[[F

    .line 1562
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckAxis:[[Z

    .line 1563
    const/4 v6, 0x5

    .line 1566
    :cond_87
    :goto_87
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_88
    const/4 v9, 0x1

    if-ge v7, v5, :cond_f6

    .line 1567
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stuckAxis : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v7

    aget-boolean v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v3, v7

    aget-boolean v12, v12, v9

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v3, v7

    aget-boolean v12, v12, v1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "MotionRecognitionSensorChecker"

    invoke-static {v12, v10}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stuckData : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v13, v2, v7

    aget v13, v13, v8

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v13, v2, v7

    aget v9, v13, v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v7

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 1572
    .end local v7    # "i":I
    :cond_f6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f7
    if-ge v1, v4, :cond_12f

    .line 1574
    const/4 v7, 0x1

    .line 1575
    .local v7, "isAxisStuck":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_fb
    if-ge v8, v5, :cond_107

    .line 1576
    aget-object v10, v3, v8

    aget-boolean v10, v10, v1

    if-nez v10, :cond_104

    .line 1577
    const/4 v7, 0x0

    .line 1575
    :cond_104
    add-int/lit8 v8, v8, 0x1

    goto :goto_fb

    .line 1580
    .end local v8    # "j":I
    :cond_107
    if-eqz v7, :cond_12c

    .line 1581
    const/4 v8, 0x1

    .line 1582
    .local v8, "isDataStuck":Z
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_10b
    add-int/lit8 v11, v5, -0x1

    if-ge v10, v11, :cond_123

    .line 1583
    aget-object v11, v2, v10

    aget v11, v11, v1

    add-int/lit8 v12, v10, 0x1

    aget-object v12, v2, v12

    aget v12, v12, v1

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDataStuck(FF)Z

    move-result v11

    if-nez v11, :cond_120

    .line 1584
    const/4 v8, 0x0

    .line 1582
    :cond_120
    add-int/lit8 v10, v10, 0x1

    goto :goto_10b

    .line 1587
    .end local v10    # "j":I
    :cond_123
    if-eqz v8, :cond_12c

    .line 1588
    const/4 v0, 0x1

    .line 1589
    iget-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mStuckAxisData:[[Z

    aget-object v10, v10, v6

    aput-boolean v9, v10, v1

    .line 1572
    .end local v7    # "isAxisStuck":Z
    .end local v8    # "isDataStuck":Z
    :cond_12c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f7

    .line 1593
    .end local v1    # "i":I
    :cond_12f
    return v0

    :array_130
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_138
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 2381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2382
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isMoving([F)Z
    .registers 5
    .param p1, "sensorData"    # [F

    .line 1629
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_12

    .line 1630
    aget v1, p1, v0

    const v2, 0x3e19999a    # 0.15f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    .line 1631
    const/4 v1, 0x1

    return v1

    .line 1629
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1634
    .end local v0    # "i":I
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isMovingForVectorSum([F)I
    .registers 12
    .param p1, "sensorData"    # [F

    .line 1728
    const/4 v0, 0x0

    .line 1729
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1730
    .local v1, "accData":F
    const/4 v2, 0x0

    .line 1731
    .local v2, "accData2":F
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 1732
    mul-float v2, v1, v1

    .line 1734
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1735
    const/16 v5, 0x9

    if-lt v4, v5, :cond_15

    .line 1736
    rem-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    .line 1739
    :cond_15
    iget v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove:[F

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->index_nomove:I

    aget v7, v5, v6

    sub-float/2addr v4, v7

    add-float/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX:F

    .line 1740
    iget v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->buffer_nomove2:[F

    aget v9, v8, v6

    sub-float/2addr v7, v9

    add-float/2addr v7, v2

    iput v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sumAccX2:F

    .line 1742
    aput v1, v5, v6

    .line 1743
    aput v2, v8, v6

    .line 1745
    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v7, v5

    div-float v6, v4, v5

    div-float/2addr v4, v5

    mul-float/2addr v6, v4

    sub-float/2addr v7, v6

    iput v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->varAcc:F

    .line 1747
    float-to-double v4, v7

    const-wide v8, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpg-double v4, v4, v8

    const/16 v5, 0x32

    if-gez v4, :cond_4e

    .line 1748
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    if-ge v3, v5, :cond_50

    .line 1749
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    goto :goto_50

    .line 1752
    :cond_4e
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    .line 1755
    :cond_50
    :goto_50
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->nomove_cnt:I

    if-lt v3, v5, :cond_5d

    .line 1756
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6f

    .line 1757
    const/4 v0, 0x3

    .line 1758
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    goto :goto_6f

    .line 1760
    :cond_5d
    float-to-double v3, v7

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v3, v3, v5

    if-lez v3, :cond_6f

    .line 1761
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6f

    .line 1762
    const/4 v0, 0x4

    .line 1763
    iput v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->prvResult_mv:I

    .line 1767
    :cond_6f
    :goto_6f
    return v0
.end method

.method private isSensorHubSupported()Z
    .registers 3

    .line 2371
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sensors/ssp_sensor/mcu_rev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2372
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isSlpiSupported()Z
    .registers 3

    .line 2376
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/boot_slpi/boot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2377
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private registerAccWrongRangeListner()V
    .registers 6

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->acquire(J)V

    .line 1150
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->InitVariableForVectorSum()V

    .line 1151
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1152
    return-void
.end method

.method private sendAssertData(Ljava/lang/String;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/String;

    .line 3158
    const-string v0, ""

    .line 3160
    .local v0, "result":Ljava/lang/String;
    if-nez p1, :cond_5

    .line 3161
    return-void

    .line 3164
    :cond_5
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3165
    return-void

    .line 3168
    :cond_e
    const-string v1, ">|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3170
    .local v1, "address":I
    const/4 v2, 0x0

    if-ltz v1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 3171
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 3173
    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3174
    .local v3, "length":I
    if-gtz v3, :cond_29

    .line 3175
    return-void

    .line 3176
    :cond_29
    const/16 v4, 0x64

    if-le v3, v4, :cond_2f

    .line 3177
    const/16 v3, 0x64

    .line 3179
    :cond_2f
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3182
    .end local v3    # "length":I
    :goto_33
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3183
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "assertMsg"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 3185
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 3186
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3189
    :try_start_47
    const-string v4, "location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_51} :catch_53

    .line 3190
    .local v4, "locationManager":Landroid/location/ILocationManager;
    nop

    .line 3196
    .end local v4    # "locationManager":Landroid/location/ILocationManager;
    goto :goto_57

    .line 3194
    :catch_53
    move-exception v4

    .line 3195
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 3198
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private sendFreeFallEventToBigDataServer()V
    .registers 13

    .line 3364
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_fa

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 3365
    .local v1, "avg_data":[[F
    const-string v2, ""

    .line 3367
    .local v2, "avg":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ge v3, v4, :cond_81

    .line 3368
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_17
    if-ge v4, v5, :cond_7e

    .line 3369
    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_e2

    goto :goto_72

    .line 3380
    :pswitch_1e
    aget-object v8, v1, v3

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubGyroData:[[F

    aget-object v10, v9, v6

    aget v10, v10, v4

    aget-object v7, v9, v7

    aget v7, v7, v4

    add-float/2addr v10, v7

    aget-object v7, v9, v0

    aget v7, v7, v4

    add-float/2addr v10, v7

    aput v10, v8, v4

    .line 3381
    goto :goto_72

    .line 3377
    :pswitch_33
    aget-object v8, v1, v3

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSubAccelData:[[F

    aget-object v10, v9, v6

    aget v10, v10, v4

    aget-object v7, v9, v7

    aget v7, v7, v4

    add-float/2addr v10, v7

    aget-object v7, v9, v0

    aget v7, v7, v4

    add-float/2addr v10, v7

    aput v10, v8, v4

    .line 3378
    goto :goto_72

    .line 3374
    :pswitch_48
    aget-object v8, v1, v3

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallGyroData:[[F

    aget-object v10, v9, v6

    aget v10, v10, v4

    aget-object v7, v9, v7

    aget v7, v7, v4

    add-float/2addr v10, v7

    aget-object v7, v9, v0

    aget v7, v7, v4

    add-float/2addr v10, v7

    aput v10, v8, v4

    .line 3375
    goto :goto_72

    .line 3371
    :pswitch_5d
    aget-object v8, v1, v3

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallAccelData:[[F

    aget-object v10, v9, v6

    aget v10, v10, v4

    aget-object v7, v9, v7

    aget v7, v7, v4

    add-float/2addr v10, v7

    aget-object v7, v9, v0

    aget v7, v7, v4

    add-float/2addr v10, v7

    aput v10, v8, v4

    .line 3372
    nop

    .line 3385
    :goto_72
    aget-object v7, v1, v3

    aget v8, v7, v4

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    aput v8, v7, v4

    .line 3368
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 3367
    .end local v4    # "j":I
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 3389
    .end local v3    # "i":I
    :cond_81
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_82
    if-ge v3, v4, :cond_d0

    .line 3390
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_85
    if-ge v7, v5, :cond_cd

    .line 3391
    const/4 v8, 0x1

    .line 3392
    .local v8, "loggingDataValue":I
    if-ne v3, v5, :cond_8d

    if-ne v7, v0, :cond_8d

    .line 3393
    const/4 v8, 0x2

    .line 3394
    :cond_8d
    const/4 v9, 0x0

    .line 3395
    .local v9, "sensor":Landroid/hardware/Sensor;
    packed-switch v3, :pswitch_data_ee

    goto :goto_9e

    .line 3406
    :pswitch_92
    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    .line 3407
    goto :goto_9e

    .line 3403
    :pswitch_95
    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    .line 3404
    goto :goto_9e

    .line 3400
    :pswitch_98
    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    .line 3401
    goto :goto_9e

    .line 3397
    :pswitch_9b
    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    .line 3398
    nop

    .line 3411
    :goto_9e
    if-nez v9, :cond_a3

    .line 3412
    const-string v2, "PF|N/A"

    goto :goto_ab

    .line 3414
    :cond_a3
    aget-object v10, v1, v3

    aget v10, v10, v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 3416
    :goto_ab
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallSensorID:[[Ljava/lang/String;

    aget-object v11, v11, v3

    aget-object v11, v11, v7

    invoke-direct {p0, v11, v2, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    .line 3390
    .end local v8    # "loggingDataValue":I
    .end local v9    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .line 3389
    .end local v7    # "j":I
    :cond_cd
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 3421
    .end local v3    # "i":I
    :cond_d0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallInfo:Ljava/lang/String;

    const-string v3, "MRSI"

    const-string v4, "ph"

    invoke-direct {p0, v3, v0, v6, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3422
    const-string v0, "MotionRecognitionSensorChecker"

    const-string v3, "Send free fall event to big data server!"

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_48
        :pswitch_33
        :pswitch_1e
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
    .end packed-switch

    :array_fa
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

.method private sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 24
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "hitType"    # Ljava/lang/String;

    .line 2425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    const-string v2, "MotionRecognitionSensorChecker"

    if-nez v1, :cond_e

    .line 2426
    const-string v1, "Context is null!!"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    return-void

    .line 2430
    :cond_e
    const-string v3, "HqmManagerService"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    .line 2432
    .local v1, "semHqmManager":Landroid/os/SemHqmManager;
    const-string v13, "Sensor"

    .line 2433
    .local v13, "compID":Ljava/lang/String;
    const-string v14, "0.0"

    .line 2434
    .local v14, "compVer":Ljava/lang/String;
    const-string v15, "sec"

    .line 2435
    .local v15, "compManufacture":Ljava/lang/String;
    move-object/from16 v3, p2

    .line 2438
    .local v3, "loggingData":Ljava/lang/String;
    const-string v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2439
    const-string v4, "}"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2440
    .end local v3    # "loggingData":Ljava/lang/String;
    .local v12, "loggingData":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const-string v3, "MRSI"

    move-object/from16 v10, p1

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2443
    if-eqz v12, :cond_5c

    .line 2444
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_MRSI_FEATURE_MAX_LENGTH:I

    if-le v3, v4, :cond_5c

    .line 2445
    const-string v3, "MRSI Feature\'s length is wrong!!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    return-void

    .line 2451
    :cond_5c
    const-string v16, ""

    .line 2452
    .local v16, "dev_customDataSet":Ljava/lang/String;
    move-object v11, v12

    .line 2453
    .local v11, "basic_customDataSet":Ljava/lang/String;
    const-string v17, ""

    .line 2455
    .local v17, "pri_customDataSet":Ljava/lang/String;
    if-eqz v1, :cond_77

    .line 2456
    move-object v3, v1

    move/from16 v4, p3

    move-object v5, v13

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v18, v12

    .end local v12    # "loggingData":Ljava/lang/String;
    .local v18, "loggingData":Ljava/lang/String;
    move-object/from16 v12, v17

    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7e

    .line 2459
    .end local v18    # "loggingData":Ljava/lang/String;
    .restart local v12    # "loggingData":Ljava/lang/String;
    :cond_77
    move-object/from16 v18, v12

    .end local v12    # "loggingData":Ljava/lang/String;
    .restart local v18    # "loggingData":Ljava/lang/String;
    const-string v3, "SemHqmManager is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :goto_7e
    return-void
.end method

.method private sendWakeUpCountData()V
    .registers 6

    .line 3123
    const-string v0, ""

    .line 3124
    .local v0, "path":Ljava/lang/String;
    const-string v1, ""

    .line 3125
    .local v1, "info":Ljava/lang/String;
    const-string v2, "/sys/class/sensors/ssp_sensor/wakeup_reason"

    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3126
    const-string v0, "/sys/class/sensors/ssp_sensor/wakeup_reason"

    goto :goto_19

    .line 3127
    :cond_f
    const-string v2, "/sys/class/sensors/ssc_core/wakeup_reason"

    invoke-direct {p0, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3128
    const-string v0, "/sys/class/sensors/ssc_core/wakeup_reason"

    .line 3134
    :goto_19
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getWakeUpCountData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3136
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3137
    return-void

    .line 3140
    :cond_26
    const/4 v2, 0x0

    const-string v3, "MRSI"

    const-string v4, "sm"

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3141
    return-void

    .line 3130
    :cond_2f
    const-string v2, "MotionRecognitionSensorChecker"

    const-string v3, "WakeUpCount path is wrong"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    return-void
.end method

.method private startAlarm(J)V
    .registers 10
    .param p1, "timeout"    # J

    .line 3202
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v1, "MotionRecognitionSensorChecker"

    if-nez v0, :cond_c

    .line 3203
    const-string v0, "AlarmManager is null!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    return-void

    .line 3206
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.SENSOR_CALIBRATION_GET_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3207
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "timeout"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3209
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3210
    .local v2, "operation":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    .line 3211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, p1

    .line 3210
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 3213
    const-string v3, "Start alarm about forcing stop sensor."

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    return-void
.end method

.method private unregisterAccWrongRangeListner()V
    .registers 3

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccWrongRange EN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionSensorChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccWrongRangeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1161
    :cond_29
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->release()V

    .line 1162
    return-void
.end method

.method private writeFreeFallLoggingData(JI)V
    .registers 8
    .param p1, "height"    # J
    .param p3, "dropType"    # I

    .line 3249
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3250
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, ""

    .line 3251
    .local v1, "drop_type":Ljava/lang/String;
    packed-switch p3, :pswitch_data_46

    .line 3262
    const-string v1, "U"

    goto :goto_18

    .line 3259
    :pswitch_f
    const-string v1, "H"

    .line 3260
    goto :goto_18

    .line 3256
    :pswitch_12
    const-string v1, "S"

    .line 3257
    goto :goto_18

    .line 3253
    :pswitch_15
    const-string v1, "N"

    .line 3254
    nop

    .line 3265
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFreeFallTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3266
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3267
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3270
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    .line 3271
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFreeFallLoggingData:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->writeFreeFallData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;)V

    .line 3272
    return-void

    :pswitch_data_46
    .packed-switch -0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method checkDataList([FLjava/lang/String;I)Z
    .registers 16
    .param p1, "datalist"    # [F
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "address"    # I

    .line 1598
    const/4 v0, 0x1

    new-array v1, v0, [F

    .line 1599
    .local v1, "prev":[F
    new-array v2, v0, [F

    .line 1600
    .local v2, "curr":[F
    new-array v3, v0, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 1601
    .local v3, "samples":[I
    const/4 v5, 0x0

    .line 1602
    .local v5, "stuckData":F
    const/4 v6, 0x0

    .line 1603
    .local v6, "res":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d
    const/16 v8, 0x3c

    if-ge v7, v8, :cond_2b

    .line 1604
    aget v8, p1, v7

    aput v8, v1, v4

    .line 1605
    add-int/lit8 v8, v7, 0x1

    aget v8, p1, v8

    aput v8, v2, v4

    .line 1606
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckData([F[F)[I

    move-result-object v8

    .line 1607
    .local v8, "temp":[I
    aget v9, v3, v4

    aget v10, v8, v4

    add-int/2addr v9, v10

    aput v9, v3, v4

    .line 1608
    aget v5, v1, v4

    .line 1603
    .end local v8    # "temp":[I
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 1611
    .end local v7    # "i":I
    :cond_2b
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2c
    array-length v9, v3

    const-string v10, "MotionRecognitionSensorChecker"

    if-ge v7, v9, :cond_56

    .line 1612
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Baro Samples["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v11, v3, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 1615
    .end local v7    # "i":I
    :cond_56
    aget v4, v3, v4

    if-ne v4, v8, :cond_5b

    .line 1616
    const/4 v6, 0x1

    .line 1618
    :cond_5b
    if-eqz v6, :cond_83

    .line 1619
    const-string v4, "Barometer"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "address ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckData:[F

    aput v5, v4, p3

    .line 1622
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroStuckAxis:[Z

    aput-boolean v0, v4, p3

    .line 1625
    :cond_83
    return v6
.end method

.method checkDataList([[FLjava/lang/String;I)Z
    .registers 16
    .param p1, "datalist"    # [[F
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "address"    # I

    .line 1414
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1415
    .local v1, "prev":[F
    new-array v2, v0, [F

    .line 1416
    .local v2, "curr":[F
    new-array v3, v0, [I

    fill-array-data v3, :array_f8

    .line 1417
    .local v3, "samples":[I
    new-array v0, v0, [F

    .line 1418
    .local v0, "stuckData":[F
    const/4 v4, 0x0

    .line 1420
    .local v4, "res":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    const/16 v6, 0x258

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v5, v6, :cond_55

    .line 1422
    aget-object v6, p1, v5

    aget v6, v6, v8

    aput v6, v1, v8

    .line 1423
    aget-object v6, p1, v5

    aget v6, v6, v9

    aput v6, v1, v9

    .line 1424
    aget-object v6, p1, v5

    aget v6, v6, v7

    aput v6, v1, v7

    .line 1426
    add-int/lit8 v6, v5, 0x1

    aget-object v6, p1, v6

    aget v6, v6, v8

    aput v6, v2, v8

    .line 1427
    add-int/lit8 v6, v5, 0x1

    aget-object v6, p1, v6

    aget v6, v6, v9

    aput v6, v2, v9

    .line 1428
    add-int/lit8 v6, v5, 0x1

    aget-object v6, p1, v6

    aget v6, v6, v7

    aput v6, v2, v7

    .line 1430
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckData([F[F)[I

    move-result-object v6

    .line 1431
    .local v6, "temp":[I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_44
    array-length v8, v3

    if-ge v7, v8, :cond_51

    .line 1432
    aget v8, v3, v7

    aget v9, v6, v7

    add-int/2addr v8, v9

    aput v8, v3, v7

    .line 1431
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 1434
    .end local v7    # "j":I
    :cond_51
    move-object v0, v1

    .line 1420
    .end local v6    # "temp":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 1437
    .end local v5    # "i":I
    :cond_55
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_56
    array-length v10, v3

    if-ge v5, v10, :cond_80

    .line 1438
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Acc Gyro Mag samples["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v3, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "MotionRecognitionSensorChecker"

    invoke-static {v11, v10}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 1441
    .end local v5    # "i":I
    :cond_80
    aget v5, v3, v8

    if-eq v5, v6, :cond_8c

    aget v5, v3, v9

    if-eq v5, v6, :cond_8c

    aget v5, v3, v7

    if-ne v5, v6, :cond_8d

    .line 1444
    :cond_8c
    const/4 v4, 0x1

    .line 1447
    :cond_8d
    if-eqz v4, :cond_f7

    .line 1448
    const-string v5, "Accelerometer"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1449
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckAxis:[[Z

    invoke-direct {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckAxis([I)[Z

    move-result-object v6

    aput-object v6, v5, p3

    .line 1450
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccStuckData:[[F

    aput-object v0, v5, p3

    goto :goto_f7

    .line 1451
    :cond_a4
    const-string v5, "Gyroscope"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 1452
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckAxis:[[Z

    invoke-direct {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckAxis([I)[Z

    move-result-object v6

    aput-object v6, v5, p3

    .line 1453
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroStuckData:[[F

    aput-object v0, v5, p3

    goto :goto_f7

    .line 1454
    :cond_b9
    const-string v5, "Magnetometer"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 1455
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagStuckAxis:[[Z

    invoke-direct {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckAxis([I)[Z

    move-result-object v6

    aput-object v6, v5, p3

    .line 1456
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagStuckData:[[F

    aput-object v0, v5, p3

    goto :goto_f7

    .line 1457
    :cond_ce
    const-string v5, "Sub_Accelerometer"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1458
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckAxis:[[Z

    invoke-direct {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckAxis([I)[Z

    move-result-object v6

    aput-object v6, v5, p3

    .line 1459
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccStuckData:[[F

    aput-object v0, v5, p3

    goto :goto_f7

    .line 1460
    :cond_e3
    const-string v5, "Sub_Gyroscope"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 1461
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckAxis:[[Z

    invoke-direct {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getStuckAxis([I)[Z

    move-result-object v6

    aput-object v6, v5, p3

    .line 1462
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroStuckData:[[F

    aput-object v0, v5, p3

    .line 1465
    :cond_f7
    :goto_f7
    return v4

    :array_f8
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method checkDataStuck(FF)Z
    .registers 5
    .param p1, "prev"    # F
    .param p2, "curr"    # F

    .line 1404
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 1406
    .local v0, "retval":I
    if-nez v0, :cond_8

    .line 1407
    const/4 v1, 0x1

    return v1

    .line 1409
    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method public checkProbeMCU()Z
    .registers 13

    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 1217
    .local v1, "buffer_reader":Ljava/io/BufferedReader;
    const-string v2, "MotionRecognitionSensorChecker"

    const-string v3, "File read.... "

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLockSensor:Ljava/lang/Object;

    monitor-enter v2

    .line 1221
    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/sensors/ssp_sensor/sensor_state"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 1222
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v4, ""

    .line 1224
    .local v4, "str":Ljava/lang/String;
    const-string v5, ""

    .line 1226
    .local v5, "tmpstr":Ljava/lang/String;
    :goto_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "s":Ljava/lang/String;
    if-eqz v6, :cond_36

    .line 1227
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 1229
    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1230
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 1231
    .local v6, "len":I
    add-int/lit8 v6, v6, -0xa

    .line 1232
    if-gez v6, :cond_4e

    .line 1234
    const-string v8, "MotionRecognitionSensorChecker"

    const-string v9, "File of sensor_state isn\'t accurate set mcu_state default - 0000000000"

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v8, "0000000000"

    move-object v5, v8

    goto :goto_53

    .line 1237
    :cond_4e
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1240
    :goto_53
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1241
    const-string v8, "0000000000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1242
    .local v8, "eq":Z
    const-string v9, "MotionRecognitionSensorChecker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "str = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", tmpstr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", eq = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    if-nez v8, :cond_91

    const/4 v0, 0x1

    .line 1246
    :cond_91
    if-eqz v0, :cond_96

    .line 1247
    invoke-virtual {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensorProbeStatus(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_96} :catch_b1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_96} :catch_a1
    .catchall {:try_start_c .. :try_end_96} :catchall_9f

    .line 1256
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "tmpstr":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "eq":Z
    :cond_96
    :try_start_96
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a
    .catchall {:try_start_96 .. :try_end_99} :catchall_c9

    .line 1259
    :cond_99
    :goto_99
    goto :goto_c1

    .line 1257
    :catch_9a
    move-exception v3

    .line 1258
    .local v3, "e":Ljava/io/IOException;
    :goto_9b
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_c9

    .line 1260
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_c1

    .line 1255
    :catchall_9f
    move-exception v3

    goto :goto_c3

    .line 1252
    :catch_a1
    move-exception v3

    .line 1253
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_a2
    const-string v4, "MotionRecognitionSensorChecker"

    const-string v5, "File transmission is failed"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_9f

    .line 1256
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_99

    :try_start_ab
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af
    .catchall {:try_start_ab .. :try_end_ae} :catchall_c9

    goto :goto_99

    .line 1257
    :catch_af
    move-exception v3

    goto :goto_9b

    .line 1250
    :catch_b1
    move-exception v3

    .line 1251
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_b2
    const-string v4, "MotionRecognitionSensorChecker"

    const-string v5, "File is not found"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_9f

    .line 1256
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_99

    :try_start_bb
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf
    .catchall {:try_start_bb .. :try_end_be} :catchall_c9

    goto :goto_99

    .line 1257
    :catch_bf
    move-exception v3

    goto :goto_9b

    .line 1261
    :goto_c1
    :try_start_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c9

    .line 1262
    return v0

    .line 1256
    :goto_c3
    if-eqz v1, :cond_d0

    :try_start_c5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_cb
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_d0

    .line 1261
    :catchall_c9
    move-exception v3

    goto :goto_d3

    .line 1257
    :catch_cb
    move-exception v4

    .line 1258
    .local v4, "e":Ljava/io/IOException;
    :try_start_cc
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    .line 1259
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d0
    :goto_d0
    nop

    .line 1260
    :goto_d1
    nop

    .end local v0    # "ret":Z
    .end local v1    # "buffer_reader":Ljava/io/BufferedReader;
    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    throw v3

    .line 1261
    .restart local v0    # "ret":Z
    .restart local v1    # "buffer_reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    :goto_d3
    monitor-exit v2
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_c9

    throw v3
.end method

.method public checkProbeNormalSensor(I)Z
    .registers 9
    .param p1, "sensorlist"    # I

    .line 889
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 890
    return v0

    .line 892
    :cond_4
    const/4 v1, 0x1

    .local v1, "type":I
    :goto_5
    const/16 v2, 0x200

    const-string v3, "MotionRecognitionSensorChecker"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_10f

    .line 893
    shl-int v2, v4, v1

    .line 895
    .local v2, "sensor_type":I
    and-int v5, v2, p1

    if-eqz v5, :cond_10b

    .line 896
    sparse-switch v2, :sswitch_data_12a

    goto/16 :goto_10b

    .line 934
    :sswitch_17
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/16 v6, 0x8

    aput v4, v5, v6

    .line 935
    and-int/lit16 p1, p1, -0x101

    .line 936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUB GYRO , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    goto/16 :goto_10b

    .line 929
    :sswitch_37
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v6, 0x7

    aput v4, v5, v6

    .line 930
    and-int/lit16 p1, p1, -0x81

    .line 931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUB ACC , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    goto/16 :goto_10b

    .line 924
    :sswitch_56
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v6, 0x5

    aput v4, v5, v6

    .line 925
    and-int/lit8 p1, p1, -0x41

    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROXIMITY , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    goto/16 :goto_10b

    .line 918
    :sswitch_75
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v6, 0x4

    aput v4, v5, v6

    .line 919
    const/4 v6, 0x6

    aput v4, v5, v6

    .line 920
    and-int/lit8 p1, p1, -0x21

    .line 921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIGHT , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    goto :goto_10b

    .line 913
    :sswitch_96
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v6, 0x3

    aput v4, v5, v6

    .line 914
    and-int/lit8 p1, p1, -0x11

    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BARO , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    goto :goto_10b

    .line 903
    :sswitch_b4
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v6, 0x2

    aput v4, v5, v6

    .line 904
    and-int/lit8 p1, p1, -0x9

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAG , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    goto :goto_10b

    .line 908
    :sswitch_d2
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aput v4, v5, v4

    .line 909
    and-int/lit8 p1, p1, -0x5

    .line 910
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GYRO , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    goto :goto_10b

    .line 898
    :sswitch_ef
    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aput v4, v5, v0

    .line 899
    and-int/lit8 p1, p1, -0x3

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACC , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .end local v2    # "sensor_type":I
    :cond_10b
    :goto_10b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 943
    .end local v1    # "type":I
    :cond_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkProbeNormalSensor ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    if-lez p1, :cond_128

    goto :goto_129

    :cond_128
    move v0, v4

    :goto_129
    return v0

    :sswitch_data_12a
    .sparse-switch
        0x2 -> :sswitch_ef
        0x4 -> :sswitch_d2
        0x8 -> :sswitch_b4
        0x10 -> :sswitch_96
        0x20 -> :sswitch_75
        0x40 -> :sswitch_56
        0x80 -> :sswitch_37
        0x100 -> :sswitch_17
    .end sparse-switch
.end method

.method public disableTestSensor()I
    .registers 5

    .line 1268
    const-string v0, "MotionRecognitionSensorChecker"

    const-string v1, "# acc,  mag,  gyro, baro, sub_acc, sub_gyro"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_69

    .line 1272
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1273
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccEnabled:Z

    .line 1274
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMoving:Z

    .line 1275
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1282
    :cond_69
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroEnabled:Z

    if-eqz v1, :cond_7c

    .line 1283
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorGyroListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1284
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1285
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroEnabled:Z

    .line 1287
    :cond_7c
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureEnabled:Z

    if-eqz v1, :cond_8f

    .line 1288
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorPressureListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1289
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1290
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureEnabled:Z

    .line 1293
    :cond_8f
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccEnabled:Z

    if-eqz v1, :cond_a9

    .line 1294
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubAccListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1295
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccEnabled:Z

    .line 1296
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsMovingSub:Z

    .line 1297
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1298
    const-string v1, "# sub_acc unregisterListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_a9
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroEnabled:Z

    if-eqz v1, :cond_c1

    .line 1301
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubGyroListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1302
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 1303
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroEnabled:Z

    .line 1304
    const-string v1, "# sub_gyro unregisterListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_c1
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_CNT_MAX:I

    if-ne v1, v3, :cond_107

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregister Sensor List!! UMAX = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " RC = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    if-ne v1, v3, :cond_f7

    .line 1312
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->cancelAlarm()V

    .line 1313
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    goto :goto_fc

    .line 1315
    :cond_f7
    const-string v1, "Forced stop sensor!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :goto_fc
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    .line 1319
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_CNT_MAX:I

    .line 1320
    iput v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 1321
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->release()V

    .line 1324
    :cond_107
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3867
    const-string v0, " \n===== FFD ===== "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3868
    const-string v0, " \n Time\t\t\t     H         S         T "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3869
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 3870
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDumpInfoHistory:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;

    .line 3871
    .local v1, "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->currentTimeStr:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-wide v3, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->height:J

    .line 3873
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->status:I

    .line 3874
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;->freeFallTime:J

    .line 3875
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3871
    const-string v3, "%-25s    %d        %d        %d %n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3869
    .end local v1    # "dumpInfo":Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$DumpInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3877
    .end local v0    # "i":I
    :cond_46
    return-void
.end method

.method public enableTestSensor()I
    .registers 10

    .line 664
    const/4 v0, -0x1

    .line 666
    .local v0, "ret":I
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    const-string v2, "MotionRecognitionSensorChecker"

    if-eqz v1, :cond_d

    .line 667
    const-string v1, "EnableTestsensor() is already running, so skip logic about checking sensor"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v0

    .line 671
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    .line 673
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mWakeLock:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$WakeLock;->acquire(J)V

    .line 674
    iget-wide v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_CHECK_TIMEOUT:J

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->startAlarm(J)V

    .line 676
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkHWParamSensorStatus(I)V

    .line 677
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->initializeSensorProbeStatus()V

    .line 678
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_CNT_MAX:I

    .line 679
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_UNREGISTERED_MAX:I

    .line 680
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 681
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccCnt:I

    .line 682
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroCnt:I

    .line 683
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroCnt:I

    .line 684
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccEnabled:Z

    .line 685
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccWrongRangeEnabled:Z

    .line 686
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroEnabled:Z

    .line 687
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureEnabled:Z

    .line 688
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccCnt:I

    .line 689
    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroCnt:I

    .line 691
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->isFileExists()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 692
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    const-string v5, "0000000000000000"

    invoke-virtual {v4, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->createMRSIFile(Ljava/lang/String;)V

    .line 694
    :cond_4a
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->readData()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    .line 695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sensor Data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    .line 697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getDeviceInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    .line 699
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getSensors()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    .line 700
    iput v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeSensorList:I

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSensors =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProbeSensors =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeSensorList:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isSensorHubSupported()Z

    move-result v5

    const/4 v6, -0x1

    const-string v7, "ProbeTestResult =  "

    if-eqz v5, :cond_175

    const-string v5, "/sys/class/sensors/ssp_sensor/sensor_state"

    invoke-direct {p0, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_175

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getMcuInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    .line 708
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkProbeMCU()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeTestResult:Z

    .line 709
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeTestResult:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeTestResult:Z

    if-nez v2, :cond_16d

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SENSOR_TYPE"

    const-string v5, "MCU"

    invoke-direct {p0, v4, v5, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/sys/class/sensors/ssp_sensor/mcu_name"

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHIP_ID"

    invoke-direct {p0, v5, v4, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    aget-object v2, v2, v3

    const/4 v4, 0x2

    const-string v5, "ERROR_TYPE"

    invoke-direct {p0, v5, v2, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    .line 714
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(ILjava/lang/String;)V

    .line 715
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    .line 716
    return v6

    .line 718
    :cond_16d
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->setSensorProbeStatus([ILjava/lang/String;)V

    goto :goto_1b4

    .line 722
    :cond_175
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeSensorList:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkProbeNormalSensor(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeTestResult:Z

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeTestResult:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeTestResult:Z

    if-nez v1, :cond_1ad

    .line 726
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isSlpiSupported()Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 727
    const-string v1, "/efs/FactoryApp/sensors/sns.reg"

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b4

    .line 728
    const-string v1, "sns.reg file is not exist"

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mIsRunning:Z

    .line 730
    return v6

    .line 734
    :cond_1ad
    sget-object v1, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->setSensorProbeStatus([ILjava/lang/String;)V

    .line 739
    :cond_1b4
    :goto_1b4
    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorList:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->registerListener(II)I

    move-result v0

    .line 742
    const-string v1, "SENSOR_USAGE"

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "data":Ljava/lang/String;
    const-string v2, "MRSI"

    const-string v5, "sm"

    invoke-direct {p0, v2, v1, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 746
    const-string v6, "MOBEAM_USAGE"

    invoke-direct {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-direct {p0, v2, v1, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 750
    const-string v6, "IR_USAGE"

    invoke-direct {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 751
    .local v6, "data2":Ljava/lang/String;
    if-eqz v6, :cond_1e1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e1

    .line 752
    invoke-virtual {p0, v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->insertLog(Ljava/lang/String;)V

    .line 756
    :cond_1e1
    const-string v4, "USAGE_DATA_SENSOR_PACKAGE"

    invoke-direct {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-direct {p0, v2, v1, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 760
    const-string v4, "USAGE_DATA_CALL_GESTURE"

    invoke-direct {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-direct {p0, v2, v1, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 764
    const-string v4, "GRIPSENSOR_USAGE"

    invoke-direct {p0, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->getUsageData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-direct {p0, v2, v1, v3, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendWakeUpCountData()V

    .line 772
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorHubMiniDumpMaxCnt:J

    .line 774
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->registerAccWrongRangeListner()V

    .line 776
    return v0
.end method

.method getDropInfo(I)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # I

    .line 3289
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3290
    .local v0, "s":Ljava/lang/StringBuffer;
    packed-switch p1, :pswitch_data_22

    .line 3298
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c

    .line 3295
    :pswitch_10
    const-string v1, "HARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3296
    goto :goto_1c

    .line 3292
    :pswitch_16
    const-string v1, "SOFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3293
    nop

    .line 3301
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public getSensorProbeStatus(Ljava/lang/String;)V
    .registers 7
    .param p1, "status"    # Ljava/lang/String;

    .line 951
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_69

    .line 952
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 953
    .local v1, "probeStatus":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "probeStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionRecognitionSensorChecker"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/16 v2, 0x31

    if-ne v1, v2, :cond_66

    .line 955
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_6a

    :pswitch_33
    goto :goto_66

    .line 979
    :pswitch_34
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/16 v4, 0x8

    aput v2, v3, v4

    .line 980
    goto :goto_66

    .line 976
    :pswitch_3b
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 977
    goto :goto_66

    .line 973
    :pswitch_41
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 974
    goto :goto_66

    .line 969
    :pswitch_47
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v4, 0x4

    aput v2, v3, v4

    .line 970
    const/4 v4, 0x6

    aput v2, v3, v4

    .line 971
    goto :goto_66

    .line 966
    :pswitch_50
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v4, 0x3

    aput v2, v3, v4

    .line 967
    goto :goto_66

    .line 963
    :pswitch_56
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 964
    goto :goto_66

    .line 960
    :pswitch_5c
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    aput v2, v3, v2

    .line 961
    goto :goto_66

    .line 957
    :pswitch_61
    sget-object v3, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeStatus:[I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 951
    .end local v1    # "probeStatus":C
    :cond_66
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 986
    .end local v0    # "i":I
    :cond_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_47
        :pswitch_41
        :pswitch_33
        :pswitch_3b
        :pswitch_34
    .end packed-switch
.end method

.method public getSensors()I
    .registers 8

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1167
    .local v0, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 1168
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1169
    .local v2, "size":I
    const/4 v3, 0x0

    .line 1170
    .local v3, "sensorType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSensorlist size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotionRecognitionSensorChecker"

    invoke-static {v5, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v2, :cond_51

    .line 1173
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 1174
    sparse-switch v3, :sswitch_data_68

    goto :goto_4e

    .line 1197
    :sswitch_36
    or-int/lit16 v1, v1, 0x100

    .line 1198
    goto :goto_4e

    .line 1194
    :sswitch_39
    or-int/lit16 v1, v1, 0x80

    .line 1195
    goto :goto_4e

    .line 1191
    :sswitch_3c
    or-int/lit8 v1, v1, 0x40

    .line 1192
    goto :goto_4e

    .line 1185
    :sswitch_3f
    or-int/lit8 v1, v1, 0x10

    .line 1186
    goto :goto_4e

    .line 1188
    :sswitch_42
    or-int/lit8 v1, v1, 0x20

    .line 1189
    goto :goto_4e

    .line 1182
    :sswitch_45
    or-int/lit8 v1, v1, 0x4

    .line 1183
    goto :goto_4e

    .line 1179
    :sswitch_48
    or-int/lit8 v1, v1, 0x8

    .line 1180
    goto :goto_4e

    .line 1176
    :sswitch_4b
    or-int/lit8 v1, v1, 0x2

    .line 1177
    nop

    .line 1172
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1203
    .end local v4    # "i":I
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSensors, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return v1

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_48
        0x4 -> :sswitch_45
        0x5 -> :sswitch_42
        0x6 -> :sswitch_3f
        0x8 -> :sswitch_3c
        0x10097 -> :sswitch_39
        0x10099 -> :sswitch_36
    .end sparse-switch
.end method

.method getServiceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;

    .line 2962
    const/4 v0, 0x1

    .line 2964
    .local v0, "res":Z
    const-string v1, "MotionRecognitionSensorChecker"

    const/4 v2, 0x0

    if-eqz p1, :cond_110

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_110

    .line 2969
    :cond_10
    if-eqz p3, :cond_10a

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_10a

    .line 2974
    :cond_1a
    if-eqz p2, :cond_104

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto/16 :goto_104

    .line 2979
    :cond_24
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2980
    .local v3, "SensorService":Landroid/os/IBinder;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2981
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_61

    .line 2983
    :try_start_33
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 2985
    .local v5, "pf":Ljava/io/File;
    if-eqz v5, :cond_4a

    .line 2986
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2987
    const-string v6, "mkdir true"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 2989
    :cond_45
    const-string v6, "mkdir false"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_4a
    :goto_4a
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 2993
    const-string v6, "CreateNewFile true"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 2995
    :cond_56
    const-string v6, "CreateNewFile false"

    invoke-static {v1, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_5b} :catch_5c

    .line 3000
    .end local v5    # "pf":Ljava/io/File;
    :goto_5b
    goto :goto_61

    .line 2997
    :catch_5c
    move-exception v1

    .line 2998
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2999
    return v2

    .line 3003
    .end local v1    # "e":Ljava/io/IOException;
    :cond_61
    :goto_61
    const/4 v5, 0x0

    .line 3004
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 3006
    .local v6, "fd":Ljava/io/FileDescriptor;
    :try_start_63
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_68} :catch_e5
    .catch Ljava/lang/NullPointerException; {:try_start_63 .. :try_end_68} :catch_d3
    .catchall {:try_start_63 .. :try_end_68} :catchall_d1

    move-object v5, v7

    .line 3008
    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v6, v7

    .line 3009
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object p3, v7, v2

    .line 3010
    .local v7, "str":[Ljava/lang/String;
    if-nez v3, :cond_7c

    .line 3011
    const-string v8, "Service is null"

    invoke-static {v1, v8}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/NullPointerException; {:try_start_69 .. :try_end_7a} :catch_c1
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7a} :catch_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_7a} :catch_e5
    .catchall {:try_start_69 .. :try_end_7a} :catchall_d1

    .line 3012
    const/4 v0, 0x0

    goto :goto_80

    .line 3015
    :cond_7c
    :try_start_7c
    invoke-interface {v3, v6, v7}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_8c
    .catch Ljava/lang/NullPointerException; {:try_start_7c .. :try_end_7f} :catch_c1
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_7f} :catch_e5
    .catchall {:try_start_7c .. :try_end_7f} :catchall_d1

    .line 3028
    nop

    .line 3036
    .end local v7    # "str":[Ljava/lang/String;
    :goto_80
    nop

    .line 3045
    nop

    .line 3046
    :try_start_82
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_87

    .line 3051
    nop

    .line 3054
    return v0

    .line 3048
    :catch_87
    move-exception v1

    .line 3049
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3016
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "str":[Ljava/lang/String;
    :catch_8c
    move-exception v1

    .line 3019
    .local v1, "e":Landroid/os/RemoteException;
    nop

    .line 3020
    :try_start_8e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_a1
    .catch Ljava/lang/NullPointerException; {:try_start_8e .. :try_end_91} :catch_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_91} :catch_e5
    .catchall {:try_start_8e .. :try_end_91} :catchall_d1

    .line 3025
    nop

    .line 3026
    :try_start_92
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_95
    .catch Ljava/lang/NullPointerException; {:try_start_92 .. :try_end_95} :catch_c1
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_95} :catch_e5
    .catchall {:try_start_92 .. :try_end_95} :catchall_d1

    .line 3027
    nop

    .line 3045
    nop

    .line 3046
    :try_start_97
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9c

    .line 3051
    nop

    .line 3027
    return v2

    .line 3048
    :catch_9c
    move-exception v8

    .line 3049
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3022
    .end local v8    # "e":Ljava/io/IOException;
    :catch_a1
    move-exception v8

    .line 3023
    .local v8, "e1":Ljava/io/IOException;
    :try_start_a2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_a5
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_a5} :catch_c1
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_a5} :catch_e5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_d1

    .line 3024
    nop

    .line 3045
    nop

    .line 3046
    :try_start_a7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ac

    .line 3051
    nop

    .line 3024
    return v2

    .line 3048
    :catch_ac
    move-exception v9

    .line 3049
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3033
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v7    # "str":[Ljava/lang/String;
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_b1
    move-exception v1

    .line 3034
    .local v1, "e":Ljava/io/IOException;
    :try_start_b2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_b5} :catch_e5
    .catch Ljava/lang/NullPointerException; {:try_start_b2 .. :try_end_b5} :catch_d3
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_d1

    .line 3035
    nop

    .line 3045
    nop

    .line 3046
    :try_start_b7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bc

    .line 3051
    nop

    .line 3035
    return v2

    .line 3048
    :catch_bc
    move-exception v7

    .line 3049
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3030
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_c1
    move-exception v1

    .line 3031
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_c2
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_c5
    .catch Ljava/io/FileNotFoundException; {:try_start_c2 .. :try_end_c5} :catch_e5
    .catch Ljava/lang/NullPointerException; {:try_start_c2 .. :try_end_c5} :catch_d3
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_d1

    .line 3032
    nop

    .line 3045
    nop

    .line 3046
    :try_start_c7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cc

    .line 3051
    nop

    .line 3032
    return v2

    .line 3048
    :catch_cc
    move-exception v7

    .line 3049
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3044
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_d1
    move-exception v1

    goto :goto_f7

    .line 3040
    :catch_d3
    move-exception v1

    .line 3041
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    :try_start_d4
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d1

    .line 3042
    nop

    .line 3045
    if-eqz v5, :cond_e3

    .line 3046
    :try_start_da
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_e3

    .line 3048
    :catch_de
    move-exception v7

    .line 3049
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3051
    .end local v7    # "e":Ljava/io/IOException;
    :cond_e3
    :goto_e3
    nop

    .line 3042
    return v2

    .line 3037
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_e5
    move-exception v1

    .line 3038
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_e6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_d1

    .line 3039
    nop

    .line 3045
    if-eqz v5, :cond_f5

    .line 3046
    :try_start_ec
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_f0

    goto :goto_f5

    .line 3048
    :catch_f0
    move-exception v7

    .line 3049
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3051
    .end local v7    # "e":Ljava/io/IOException;
    :cond_f5
    :goto_f5
    nop

    .line 3039
    return v2

    .line 3045
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_f7
    if-eqz v5, :cond_102

    .line 3046
    :try_start_f9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_102

    .line 3048
    :catch_fd
    move-exception v1

    .line 3049
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3050
    return v2

    .line 3051
    .end local v1    # "e":Ljava/io/IOException;
    :cond_102
    :goto_102
    nop

    .line 3052
    throw v1

    .line 2975
    .end local v3    # "SensorService":Landroid/os/IBinder;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    :cond_104
    :goto_104
    const-string v3, "Service name is incorrect"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    return v2

    .line 2970
    :cond_10a
    :goto_10a
    const-string v3, "Command value is incorrect"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    return v2

    .line 2965
    :cond_110
    :goto_110
    const-string v3, "File path is incorrect"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    return v2
.end method

.method getStuckData([F[F)[I
    .registers 7
    .param p1, "prev"    # [F
    .param p2, "curr"    # [F

    .line 1390
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    .line 1391
    .local v0, "countArr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 1392
    aget v2, p1, v1

    aget v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDataStuck(FF)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1393
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1391
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1396
    .end local v1    # "i":I
    :cond_1d
    return-object v0

    :array_1e
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public insertLog(Ljava/lang/String;)V
    .registers 7
    .param p1, "extra"    # Ljava/lang/String;

    .line 2400
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SURVEY_LOG:Z

    if-eqz v0, :cond_37

    .line 2401
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2403
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "com.samsung.android.motion"

    .line 2404
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "MRSI"

    .line 2406
    .local v2, "feature":Ljava/lang/String;
    const-string v3, "app_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    const-string v3, "feature"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    if-eqz p1, :cond_1e

    .line 2410
    const-string v3, "extra"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    :cond_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2414
    .local v3, "broadcastIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2415
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2417
    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2421
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "feature":Ljava/lang/String;
    .end local v3    # "broadcastIntent":Landroid/content/Intent;
    :cond_37
    return-void
.end method

.method public registerListener(II)I
    .registers 10
    .param p1, "sensors"    # I
    .param p2, "rate"    # I

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener :: sensors =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  rate  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionSensorChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v0, 0x2

    .local v0, "type":I
    :goto_23
    const/16 v2, 0x200

    if-ge v0, v2, :cond_c4

    .line 1067
    move v2, v0

    .line 1069
    .local v2, "sensor_type":I
    and-int v3, v2, p1

    if-eqz v3, :cond_c0

    .line 1070
    sparse-switch v2, :sswitch_data_c6

    goto/16 :goto_c0

    .line 1098
    :sswitch_31
    const-string v3, "SENSOR_TYPE_SUB_GYRO"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubGyroListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1100
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 1101
    goto/16 :goto_c0

    .line 1092
    :sswitch_49
    const-string v3, "SENSOR_TYPE_SUB_ACCEL"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubAccListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1094
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorSubAccListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1095
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 1096
    goto :goto_c0

    .line 1087
    :sswitch_6b
    const-string v3, "SENSOR_TYPE_BAROMETER"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorPressureListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mPressureSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1089
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 1090
    goto :goto_c0

    .line 1078
    :sswitch_82
    const-string v3, "SENSOR_TYPE_MAGNETIC - SKIP(since crown)"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    goto :goto_c0

    .line 1082
    :sswitch_88
    const-string v3, "SENSOR_TYPE_GYRO"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorGyroListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1084
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 1085
    goto :goto_c0

    .line 1072
    :sswitch_9f
    const-string v3, "SENSOR_TYPE_ACCEL"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1074
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sensorAccListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroSensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheckingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, p2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1075
    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->SENSOR_TYPE_REGISTERED_CNT:I

    .line 1066
    .end local v2    # "sensor_type":I
    :cond_c0
    :goto_c0
    shl-int/lit8 v0, v0, 0x1

    goto/16 :goto_23

    .line 1108
    .end local v0    # "type":I
    :cond_c4
    const/4 v0, 0x0

    return v0

    :sswitch_data_c6
    .sparse-switch
        0x2 -> :sswitch_9f
        0x4 -> :sswitch_88
        0x8 -> :sswitch_82
        0x10 -> :sswitch_6b
        0x80 -> :sswitch_49
        0x100 -> :sswitch_31
    .end sparse-switch
.end method

.method sendMRSIData(ILjava/lang/String;)V
    .registers 9
    .param p1, "address"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 1364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_74

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_74

    .line 1365
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1366
    .local v0, "data":C
    const/16 v1, 0x30

    if-ne v0, v1, :cond_74

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRSI File Manager : setData before :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionRecognitionSensorChecker"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    .line 1369
    .local v2, "temp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-ne v0, v1, :cond_44

    .line 1371
    const/16 v1, 0x31

    invoke-virtual {v4, p1, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1372
    :cond_44
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MRSI File Manager : setData after:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mFileManager:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorCheck:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$MRSIFileManager;->writeData(Ljava/lang/String;)V

    .line 1375
    invoke-static {v3, p2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v1, 0x0

    const-string v3, "MRSI"

    const-string v5, "sm"

    invoke-direct {p0, v3, p2, v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendHWParamServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1384
    .end local v0    # "data":C
    .end local v2    # "temp":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_74
    return-void
.end method

.method public setSensorProbeStatus([ILjava/lang/String;)V
    .registers 14
    .param p1, "sensorProbeStatus"    # [I
    .param p2, "deviceInfo"    # Ljava/lang/String;

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensorProbeStatus.length  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionSensorChecker"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    array-length v2, p1

    if-ge v0, v2, :cond_246

    .line 992
    const-string v2, ""

    .line 993
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 994
    .local v3, "address":I
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeStatusData:[[I

    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeFailCnt:[I

    aget v6, v5, v0

    aget-object v4, v4, v6

    aget v6, p1, v0

    aput v6, v4, v0

    .line 995
    aget v4, v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_23d

    .line 996
    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->checkDiagProbeSensor(I)Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 997
    const-string v4, "CHIP_ID"

    const-string v5, "SENSOR_TYPE"

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_2b2

    goto/16 :goto_1fc

    .line 1039
    :pswitch_42
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Sub_Gyroscope"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    const/16 v3, 0xd

    .line 1042
    goto/16 :goto_1fc

    .line 1034
    :pswitch_74
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Sub_Accelerometer"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1036
    const/16 v3, 0xc

    .line 1037
    goto/16 :goto_1fc

    .line 1024
    :pswitch_a6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Light"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    const/16 v3, 0xb

    .line 1027
    goto/16 :goto_1fc

    .line 1029
    :pswitch_d8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Proximity"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1030
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    const/16 v3, 0xa

    .line 1032
    goto/16 :goto_1fc

    .line 1019
    :pswitch_10a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Prox_Light"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityLightName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    const/4 v3, 0x5

    .line 1022
    goto/16 :goto_1fc

    .line 1009
    :pswitch_13b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Barometer"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    const/4 v3, 0x4

    .line 1012
    goto/16 :goto_1fc

    .line 1014
    :pswitch_16c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Magnetometer"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1016
    const/4 v3, 0x3

    .line 1017
    goto :goto_1fc

    .line 1004
    :pswitch_19c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Gyroscope"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1005
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    const/4 v3, 0x2

    .line 1007
    goto :goto_1fc

    .line 999
    :pswitch_1cc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Accelerometer"

    invoke-direct {p0, v5, v10, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    invoke-direct {p0, v4, v9, v8}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    const/4 v3, 0x1

    .line 1002
    nop

    .line 1046
    :goto_1fc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sErrorType:[Ljava/lang/String;

    aget-object v5, v5, v8

    const-string v8, "ERROR_TYPE"

    invoke-direct {p0, v8, v5, v7}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->addSensorCheckLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->sendMRSIData(ILjava/lang/String;)V

    .line 1049
    :cond_22b
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22c
    const/4 v5, 0x0

    if-ge v4, v6, :cond_238

    .line 1050
    iget-object v7, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProbeStatusData:[[I

    aget-object v7, v7, v4

    aput v5, v7, v0

    .line 1049
    add-int/lit8 v4, v4, 0x1

    goto :goto_22c

    .line 1052
    .end local v4    # "j":I
    :cond_238
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSensorProbeFailCnt:[I

    aput v5, v4, v0

    goto :goto_242

    .line 1054
    :cond_23d
    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v4, v6

    aput v4, v5, v0

    .line 991
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "address":I
    :goto_242
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1a

    .line 1058
    .end local v0    # "i":I
    :cond_246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vendor : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mAccName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mMagName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mGyroName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mBaroName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityLightName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mProximityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mLightName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubAccName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->mSubGyroName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void

    nop

    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_1cc
        :pswitch_19c
        :pswitch_16c
        :pswitch_13b
        :pswitch_10a
        :pswitch_d8
        :pswitch_a6
        :pswitch_74
        :pswitch_42
    .end packed-switch
.end method
