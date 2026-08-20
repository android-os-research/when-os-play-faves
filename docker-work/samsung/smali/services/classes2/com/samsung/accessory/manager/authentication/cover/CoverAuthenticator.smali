.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "CoverAuthenticator.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
.implements Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
.implements Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;,
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;,
        Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    }
.end annotation


# static fields
.field public static final ACCESSORY_MANAGER_PERMISSION:Ljava/lang/String; = "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

.field public static final ACTION_AUTHENTICATION_RESULT:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_RESULT"

.field public static final ACTION_AUTHENTICATION_START:Ljava/lang/String; = "com.samsung.accessory.manager.action.START_AUTHENTICATION"

.field public static final ACTION_AUTHENTICATION_STATE_REPLY:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REPLY"

.field public static final ACTION_AUTHENTICATION_STATE_REQUEST:Ljava/lang/String; = "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

.field public static final ACTION_COVER_AUTH:Ljava/lang/String; = "com.samsung.android.isag.issmanager.ACTION_COVER_AUTH"

.field public static final ACTION_COVER_AUTH_READY:Ljava/lang/String; = "com.samsung.android.nfc.action.COVER_AUTH_READY"

.field public static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field public static final ACTION_SEND_FRIENDS_ATTACH:Ljava/lang/String; = "com.samsung.accessory.manager.action.SEND_ATTACH_INFORMATION"

.field public static final AUTH_PREPARE_TIMEOUT:J = 0x6978L

.field public static final AUTH_SCHEDULE_INTERVAL:J = 0x44aa200L

.field public static final AUTH_TIMEOUT:J = 0x2710L

.field public static final BRAND_NAME:Ljava/lang/String;

.field public static final CHARGING_AUTH_INTERVAL:J = 0x5265c00L

.field public static final COMPONENT_NAME_KES:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field public static final COMPONENT_NAME_KES_RECEIVER:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.core.AccessoryStateChangeReceiver"

.field public static final COVER_ATTACH:I = 0x1

.field public static final COVER_CLOSE:I = 0x1

.field public static final COVER_DETACH:I = 0x0

.field public static final COVER_NOT_SUPPORT:I = -0x1

.field public static final COVER_OPEN:I = 0x0

.field public static final COVER_TYPE_SECURITY:B = 0x0t

.field public static final DBG:Z

.field public static final ERROR_RESTART_TIME_MS:I = 0xc8

.field public static final ERROR_RESTART_TIME_MS_TIMEOUT:I = 0x12c

.field public static final FEATURE_COVER_CLEAR_SIDE_VIEW_COVER:Ljava/lang/String; = "com.sec.feature.cover.clearsideviewcover"

.field public static final FRONT_ACCESSORY:B = 0x11t

.field public static final FRONT_HALL_IC:I = 0x1

.field public static final FUZZ_TIMES:I = 0xdbba00

.field public static final KEY_WHEN:Ljava/lang/String; = "when"

.field public static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x1

.field public static final MAX_RETRIES_WHEN_CONNECTIVITY_BUSY:I = 0x2

.field public static final NFC_COVER_STATUS:Ljava/lang/String; = "/sys/class/sensors/flip_cover_detector_sensor/nfc_cover_status"

.field public static final PACKAGE_ISS_MANAGER:Ljava/lang/String; = "com.samsung.android.isag.issmanager"

.field public static final PERMISSION_COVER_AUTH:Ljava/lang/String; = "com.samsung.android.isag.issmanager.permission.COVER_AUTH"

.field public static final PowerConnected:I = 0x1

.field public static final PowerDisconnected:I = 0x0

.field public static final REAR_HALL_IC:I = 0x0

.field public static final REASON_DETACH_IGNORE:I = -0x2

.field public static final REASON_WIRELESS_CHARGING:I = -0x1

.field public static final RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_COVER_ATTACHED:I = 0x1

.field public static final TYPE_ON_FIRST_BOOT:I = 0x2

.field public static final TYPE_RESTRICTION_CHANGED:I = 0x4

.field public static final TYPE_SCHEDULED_WHEN_CHARGING:I = 0x3

.field public static USE_SCHEDULED_AUTHENTICATION:Z = false

.field public static USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z = false

.field public static final YEAR_2015:I = 0x10


# instance fields
.field public currentHall:I

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAuthAlarmSet:Z

.field public mAuthType:I

.field public final mAuthenticationHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field public mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

.field public mBootCompleted:Z

.field public mContext:Landroid/content/Context;

.field public mCoverAttachProcessHanlder:Landroid/os/Handler;

.field public mCoverAttachedWhenNanos:J

.field public mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field public mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field public mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverStateByNfc:I

.field public mCoverStateBySensor:I

.field public mCoverType:I

.field public mCurrentPowerSouce:I

.field public mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field public mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

.field public mFactoryIntent:Landroid/content/Intent;

.field public mFactoryReceiver:Landroid/content/BroadcastReceiver;

.field public mFactoryTestRequested:Z

.field public mFailuresCount:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public mIsFactoryBinary:Z

.field public volatile mIsShutingdown:Z

.field public mLastAttachTime:J

.field public volatile mLastAuthenticationTime:J

.field public mLastCoverState:Lcom/samsung/android/cover/CoverState;

.field public mLastDetachTime:J

.field public mNfcServiceReady:Z

.field public mPowerManager:Landroid/os/PowerManager;

.field public volatile mPreparing:Z

.field public mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

.field public final mResult:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field public mRetryCounterFactoryTest:I

.field public mRetryCounterWhenBusy:I

.field public mRunAuthIntent:Landroid/app/PendingIntent;

.field public mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

.field public mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public mSensor:Landroid/hardware/Sensor;

.field public mSensorEventListener:Landroid/hardware/SensorEventListener;

.field public final mSensorHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemReady:Z

.field public mUriData:[B

.field public modelName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAuthenticationTask(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverAuthHandler(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverBroadcaster(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverStateByNfc(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 1

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 1

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDetachCheck(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Lcom/samsung/accessory/manager/DetachCheck;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFailuresCount(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 1

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSafetyDetachTimeoutWakeLock(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAuthType(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverStateBySensor(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFailuresCount(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastAttachTime(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastDetachTime(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryCounterFactoryTest(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryCounterWhenBusy(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addSensorRecord(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCoverSwitchState(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->handleAuthStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->initialize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAuthenticationBlocked(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationBlocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monCoverAttached(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;JZIZ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNfcReady(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onNfcReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleAuthenticationTimeOuts(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCoverStateToSensorhub(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;C)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendFactoryResult(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCoverVerified(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetFriendsVerified(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopAuthAlarm(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopAuthentication(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetRUN_SCHEDULED_AUTH_ACTION()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 71
    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAccessoryManager_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    .line 72
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".action.AUTHENTICATION_INTERVAL_ELAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 125
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    const/4 v0, 0x1

    .line 126
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    .line 212
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->BRAND_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V
    .registers 10

    .line 760
    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    .line 143
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 144
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBootCompleted:Z

    .line 145
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    .line 146
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    const-string v2, "Samsung Mobile"

    .line 147
    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 148
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 150
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 151
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    const/4 v2, -0x1

    .line 153
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 162
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const-wide/16 v3, 0x0

    .line 166
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 167
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    .line 168
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    .line 169
    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    .line 173
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 174
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    .line 175
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    .line 178
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    .line 180
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    .line 181
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 187
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    .line 192
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    .line 194
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    .line 196
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 v1, 0x2

    .line 203
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 215
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 216
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    .line 910
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 964
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    .line 1406
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$12;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    .line 761
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    .line 762
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 763
    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .line 765
    new-instance p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-direct {p2, p0, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 766
    new-instance p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;

    invoke-direct {p2, p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAttachProcessHandler-IA;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Landroid/os/Handler;

    .line 767
    new-instance p2, Lcom/samsung/android/cover/CoverManager;

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 769
    new-instance p2, Lcom/samsung/accessory/manager/DetachCheck;

    invoke-direct {p2, p1}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    return-void
.end method


# virtual methods
.method public addRecord(II)V
    .registers 6

    .line 278
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 279
    :cond_f
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addSensorRecord(I)V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 290
    :cond_f
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z
    .registers 5

    .line 1037
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    .line 1038
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 1040
    :cond_e
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz p0, :cond_19

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public byteArrayToString([B)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_28

    .line 1490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1491
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_23

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1492
    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1494
    :cond_23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    const-string p0, "null"

    return-object p0
.end method

.method public final checkCurrentHall()V
    .registers 5

    .line 954
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x15

    .line 955
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 956
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    :cond_1a
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " Current CoverAuthenticator state:"

    .line 1528
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz p1, :cond_57

    .line 1532
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  auth reason = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  auth uri = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  auth extra data = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringExtraData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_57
    const-string p1, "  Historical authentication: "

    .line 1537
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    .line 1538
    :goto_5e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string v1, "    "

    if-ge p3, v0, :cond_85

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5e

    .line 1542
    :cond_85
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz p3, :cond_b3

    const-string p3, "  Magnetic sensor: "

    .line 1543
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    :goto_8e
    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-ge p1, p3, :cond_b3

    .line 1545
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8e

    .line 1549
    :cond_b3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mNfcServiceReady = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFactoryTestRequested = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastAuthenticationTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isAuthenticatonAllowed? = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  getBlockedType? = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isAuthenticationBlocked? = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isAuthenticationBlocked()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastAttachTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastDetachTime = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mFailuresCount = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mIsFactoryBinary = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSensor = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    if-eqz p1, :cond_1d3

    .line 1561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mRealCoverType = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->getRealCoverType()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d3
    return-void
.end method

.method public final getCoverSwitchState()I
    .registers 4

    .line 1084
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/16 v1, -0x100

    const/4 v2, -0x1

    if-nez v0, :cond_17

    .line 1085
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_14

    .line 1086
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v0, 0x1b

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    return p0

    .line 1088
    :cond_14
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    return p0

    .line 1091
    :cond_17
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v0, 0x15

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public getDateFromUTC(J)Ljava/lang/String;
    .registers 5

    .line 1480
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2c

    .line 1482
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const/4 p2, 0x1

    aput-object p0, p1, p2

    const/4 p2, 0x2

    aput-object p0, p1, p2

    const/4 p2, 0x3

    aput-object p0, p1, p2

    const/4 p2, 0x4

    aput-object p0, p1, p2

    const/4 p2, 0x5

    aput-object p0, p1, p2

    const/4 p2, 0x6

    aput-object p0, p1, p2

    const-string p0, "%ty-%tm-%td %tH:%tM:%tS.%tL"

    .line 1483
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const-string p0, ""

    return-object p0
.end method

.method public final handleAuthResponse(Landroid/os/Message;)V
    .registers 15

    .line 294
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 303
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    if-nez v1, :cond_1b

    const-string v1, "handleAuthResponse, mCurrentSession is null"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 308
    :cond_1b
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setCurrentHall(I)V

    .line 310
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const/4 v2, 0x1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v1

    if-ge v1, v2, :cond_36

    const-string v1, "This is unlikely indicates that cover is detached while authenticating"

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 317
    :cond_36
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 318
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "reason"

    .line 321
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 323
    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const-wide/16 v4, 0x12c

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v3, :cond_8c

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    if-eqz v3, :cond_8c

    .line 326
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    if-nez v1, :cond_6a

    .line 327
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v2

    goto :goto_6b

    :cond_6a
    move v0, v8

    :goto_6b
    if-nez v0, :cond_75

    .line 331
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    if-ge v0, v7, :cond_75

    .line 332
    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_81

    .line 334
    :cond_75
    iput-boolean v8, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    .line 335
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    .line 339
    :goto_81
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    .line 341
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 345
    :cond_8c
    new-instance v9, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    const-wide/16 v10, 0x0

    const-string v3, "auth reason = "

    if-nez v1, :cond_170

    .line 347
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result v4

    .line 348
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result v5

    .line 349
    invoke-virtual {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v7

    if-eqz v7, :cond_bb

    if-nez v4, :cond_bb

    if-nez v5, :cond_bb

    move v4, v2

    goto :goto_e4

    .line 352
    :cond_bb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Is ID valid ? "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isKeyBlocked ? "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPackageBlocked? "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 357
    :goto_e4
    invoke-virtual {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getReserved()B

    move-result v5

    const/16 v7, 0x11

    if-ne v5, v7, :cond_ef

    .line 359
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    goto :goto_f1

    .line 361
    :cond_ef
    iput v8, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 363
    :goto_f1
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v5

    if-ne v5, v2, :cond_13b

    .line 364
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v7, 0x7

    invoke-virtual {v5, v7, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 365
    invoke-virtual {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getYear()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isVerifiedCoverYear(I)Z

    move-result v5

    if-eqz v5, :cond_125

    .line 366
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Accessory = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    :cond_125
    const-string v1, "This cover is not available"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x5d

    .line 371
    invoke-virtual {v6, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 372
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v1

    .line 373
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    goto :goto_152

    :cond_13b
    const/16 v1, 0x5c

    .line 377
    invoke-virtual {v6, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 378
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v1

    .line 379
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 380
    iput v8, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const-string v4, "Authentication is success, but Accessory is detached."

    .line 381
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_152
    move v4, v8

    .line 383
    :goto_153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_24d

    const/16 v0, 0x31

    .line 386
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    goto/16 :goto_24d

    .line 389
    :cond_170
    invoke-virtual {v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v12

    invoke-virtual {p0, v1, v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    .line 390
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_18e

    :goto_18b
    move v4, v8

    goto/16 :goto_24d

    :cond_18e
    const/16 v3, 0xb

    if-eq v1, v3, :cond_246

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_198

    goto/16 :goto_246

    :cond_198
    const/16 v0, 0x1f

    if-ne v1, v0, :cond_1a6

    .line 399
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 400
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_24b

    :cond_1a6
    const/16 v0, 0xc

    if-ne v1, v0, :cond_1b3

    .line 403
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 404
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_18b

    :cond_1b3
    const/16 v0, 0xd

    const/4 v3, 0x5

    if-ne v1, v0, :cond_1df

    .line 407
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    if-ge v0, v7, :cond_1d4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    .line 408
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 409
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    move-object v0, p0

    .line 411
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJJ)V

    goto/16 :goto_24b

    .line 413
    :cond_1d4
    iput v8, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    .line 414
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 415
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_18b

    :cond_1df
    const/16 v0, 0x14

    const/16 v2, 0xa

    const/16 v7, 0x16

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x15

    if-eq v1, v0, :cond_22f

    if-eq v1, v7, :cond_22f

    const/16 v0, 0x17

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x18

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x20

    if-eq v1, v0, :cond_22f

    if-eq v1, v2, :cond_22f

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x19

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x28

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x29

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x2a

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x2e

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x5e

    if-eq v1, v0, :cond_22f

    const/16 v0, 0x5f

    if-ne v1, v0, :cond_24b

    :cond_22f
    if-eq v1, v7, :cond_23a

    if-eq v1, v2, :cond_23a

    const/16 v0, 0xe

    if-ne v1, v0, :cond_238

    goto :goto_23a

    :cond_238
    const-wide/16 v4, 0xc8

    .line 443
    :cond_23a
    :goto_23a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 444
    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_24b

    :cond_246
    :goto_246
    const-string v1, "do nothing.."

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24b
    :goto_24b
    move v2, v8

    move v4, v2

    :cond_24d
    :goto_24d
    if-eqz v2, :cond_25d

    .line 449
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    if-nez v0, :cond_257

    .line 450
    invoke-virtual {p0, v4, v8, v9, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_25a

    .line 452
    :cond_257
    invoke-virtual {p0, v4, v9, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 453
    :goto_25a
    invoke-virtual {p0, v10, v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    .line 456
    :cond_25d
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final handleAuthStart()V
    .registers 6

    .line 773
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "handleAuthStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 777
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const/4 v2, 0x1

    if-nez v1, :cond_22

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v1

    if-ge v1, v2, :cond_22

    const-string v1, "This is unlikely indicates that cover is detached while starting auth"

    .line 778
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 783
    :cond_22
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v1, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3b

    if-eq v1, v2, :cond_3b

    const-string/jumbo v1, "session is busy"

    .line 786
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 791
    :cond_3b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 793
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v1, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v1

    if-ne v1, v3, :cond_5f

    .line 794
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "connectivity_type"

    .line 795
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 797
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 798
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v1, v0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    goto :goto_68

    .line 801
    :cond_5f
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 802
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-interface {v1, v0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->start(Landroid/os/Message;Z)V

    .line 805
    :goto_68
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final initialize()V
    .registers 16

    .line 809
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Initialize cover authenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    .line 813
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile-IA;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    .line 814
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->readFile()V

    .line 816
    new-instance v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    .line 817
    invoke-virtual {v1, p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->setCertBlocklistListener(Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;)V

    .line 818
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->readFile()V

    .line 819
    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .line 820
    invoke-virtual {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfc restriction policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 824
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    .line 825
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 826
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DetachTimeoutWakeLock"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 828
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 830
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 832
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_93

    .line 833
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    .line 835
    :cond_93
    sput-boolean v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    .line 836
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_c7

    .line 837
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x40000000    # 2.0f

    .line 839
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 840
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    .line 842
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 843
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const-string v7, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 846
    :cond_c7
    new-instance v12, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    .line 847
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const-string v13, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 850
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 859
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$6;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.nfc.action.COVER_AUTH_READY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 868
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$7;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "ro.product.vendor.device"

    const-string v1, "NONE"

    .line 886
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "q2q"

    .line 887
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    const-string/jumbo v1, "v2q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 888
    :cond_132
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    .line 891
    :cond_13b
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    return-void
.end method

.method public final isAuthenticationBlocked()Z
    .registers 7

    .line 671
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_d

    const/4 v0, -0x1

    .line 673
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    :goto_b
    move v1, v2

    goto :goto_4d

    .line 674
    :cond_d
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isAuthenticationBlocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 676
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v0, "Authentication is blocked"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 677
    :cond_1d
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 678
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 681
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;

    invoke-direct {v3, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$4;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    :cond_36
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication is blocked.. type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_4d
    :goto_4d
    return v1
.end method

.method public final isAuthenticationReady()Z
    .registers 5

    .line 960
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    if-eqz v0, :cond_33

    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    if-nez p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return p0
.end method

.method public final isLedCover()Z
    .registers 2

    .line 977
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final isNeedConvertClearCoverType()Z
    .registers 2

    .line 487
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageExist(Ljava/lang/String;)Z
    .registers 4

    .line 658
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 661
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 662
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_25
    return v0
.end method

.method public final isVerifiedCoverYear(I)Z
    .registers 5

    .line 460
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 461
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string p1, "factory binary"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 466
    :cond_d
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->BRAND_NAME:Ljava/lang/String;

    if-eqz v0, :cond_1a

    const-string v2, "Note10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 470
    :cond_1a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v2, "SM-N935"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v2, "SM-N960"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v2, "SM-G97"

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v2, "SM-G960"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string v0, "SM-G965"

    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 473
    :cond_4c
    sget-boolean p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    if-eqz p0, :cond_51

    return v1

    :cond_51
    const/16 p0, 0x10

    if-ge p1, p0, :cond_57

    const/4 p0, 0x0

    return p0

    :cond_57
    return v1
.end method

.method public final notifyFriendsStateChanged(Z[B[B)Z
    .registers 6

    .line 1048
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    .line 1049
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    .line 1051
    :cond_e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_5e

    .line 1053
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1b

    .line 1054
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFriendsCoverAttachInformation(Z)V

    .line 1056
    :cond_1b
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->accessoryStateChanged(Z[B[B)V

    .line 1058
    :try_start_20
    new-instance p3, Landroid/content/ComponentName;

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.core.AccessoryStateChangeReceiver"

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "accessoryType"

    .line 1060
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "accessoryState"

    if-eqz p1, :cond_40

    const/16 p1, 0x3e9

    goto :goto_42

    :cond_40
    const/16 p1, 0x3ea

    .line 1061
    :goto_42
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "accessoryUid"

    .line 1062
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "from"

    const-string p2, "com.samsung.accessory.manager.authentication"

    .line 1063
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_57

    goto :goto_5e

    .line 1066
    :catch_57
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string p1, "error during starting KES service"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    const/4 p0, 0x1

    return p0
.end method

.method public onAuthenticationBlocked(Z)V
    .registers 4

    if-eqz p1, :cond_9

    .line 1283
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    :cond_9
    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    .line 1285
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    :goto_f
    return-void
.end method

.method public onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAuthenticationStarted()V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 3

    .line 254
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$3;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBatteryChanged(I)V
    .registers 13

    .line 981
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 982
    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    move-wide v2, v4

    goto :goto_12

    .line 983
    :cond_e
    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    sub-long v2, v0, v2

    :goto_12
    const/4 v6, 0x0

    .line 987
    sget-boolean v7, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_48

    .line 988
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isLedCover()Z

    move-result v7

    if-nez v7, :cond_48

    iget v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    if-nez v7, :cond_48

    and-int/lit8 v7, p1, 0x1

    if-nez v7, :cond_2a

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_48

    .line 992
    :cond_2a
    sget-object v7, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Power connected, source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v9, 0x5265c00

    cmp-long v2, v2, v9

    if-lez v2, :cond_66

    goto :goto_65

    .line 996
    :cond_48
    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_66

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_66

    .line 998
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v3, "A wireless power source is disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_65

    if-eqz v2, :cond_66

    .line 1000
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v2

    if-nez v2, :cond_66

    :cond_65
    :goto_65
    move v6, v8

    .line 1006
    :cond_66
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "plugType = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    if-eqz v6, :cond_9a

    .line 1009
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 1010
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result p1

    if-lt p1, v8, :cond_9a

    const-string p1, "It will be verified soon"

    .line 1011
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iput-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    const/4 p1, 0x3

    .line 1013
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 1014
    invoke-virtual {p0, v8, v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    :cond_9a
    return-void
.end method

.method public onCertBlocklistChanged()V
    .registers 3

    .line 1264
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;

    invoke-direct {v1, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$11;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCoverAttached(JZI)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 1155
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZIZ)V

    return-void
.end method

.method public final onCoverAttached(JZIZ)V
    .registers 8

    .line 1159
    iput p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    .line 1160
    sget-object p4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCoverAttached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-boolean p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez p4, :cond_86

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result p4

    if-nez p4, :cond_2e

    goto :goto_86

    .line 1163
    :cond_2e
    iget-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz p4, :cond_35

    if-nez p5, :cond_35

    return-void

    .line 1165
    :cond_35
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p4

    .line 1166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "when"

    .line 1167
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1168
    invoke-virtual {p4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    if-nez p3, :cond_5a

    .line 1171
    iput p1, p4, Landroid/os/Message;->what:I

    .line 1172
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1173
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, p4, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_86

    .line 1180
    :cond_5a
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_7f

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1181
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p2

    if-eqz p2, :cond_7f

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1182
    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p2

    iget-boolean p2, p2, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz p2, :cond_7f

    .line 1183
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, -0x2

    .line 1184
    invoke-virtual {p0, p1, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    goto :goto_86

    .line 1186
    :cond_7f
    iput p3, p4, Landroid/os/Message;->what:I

    .line 1187
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Landroid/os/Handler;

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_86
    :goto_86
    return-void
.end method

.method public final onNfcReady()V
    .registers 4

    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    .line 896
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->readyToStartAuthentication()V

    .line 898
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_32

    .line 899
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_32

    const v1, 0x10067

    .line 901
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_32

    .line 903
    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListener sensor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_32
    return-void
.end method

.method public onNfcRestrictionPolicyChanged(Z)V
    .registers 5

    .line 1240
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNfcRestrictionPolicyChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final readyToStartAuthentication()V
    .registers 5

    .line 935
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    .line 940
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    if-lt v0, v1, :cond_40

    .line 944
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ready to authenticate the cover "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 945
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    const-wide/16 v2, 0x0

    .line 947
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V

    goto :goto_57

    .line 949
    :cond_40
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ready to authenticate the cover but a cover attach state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    return-void
.end method

.method public removeAuthenticationTimeOuts()V
    .registers 2

    const/4 v0, 0x0

    .line 1216
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 1217
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final scheduleAuthenticationTimeOuts(J)V
    .registers 4

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 1222
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final sendCoverStateToSensorhub(C)V
    .registers 5

    .line 1500
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCoverStateToSensorhub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x30

    if-ne p1, v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    .line 1502
    :goto_1e
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    const/4 p0, 0x0

    .line 1506
    :try_start_21
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/sys/class/sensors/flip_cover_detector_sensor/nfc_cover_status"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_38
    .catchall {:try_start_21 .. :try_end_28} :catchall_34

    .line 1510
    :try_start_28
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 1511
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_32
    .catchall {:try_start_28 .. :try_end_2e} :catchall_55

    .line 1518
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_54

    goto :goto_54

    :catch_32
    move-exception p0

    goto :goto_3b

    :catchall_34
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_56

    :catch_38
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 1514
    :goto_3b
    :try_start_3b
    sget-object p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File write fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_55

    if-eqz v0, :cond_54

    goto :goto_2e

    :catch_54
    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception p0

    :goto_56
    if-eqz v0, :cond_5b

    .line 1518
    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5b

    .line 1522
    :catch_5b
    :cond_5b
    throw p0
.end method

.method public final sendFactoryResult()V
    .registers 7

    .line 1439
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    if-nez v0, :cond_c

    .line 1440
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v0, "factory intent is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1444
    :cond_c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 1447
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const-string v2, ""

    if-eqz v1, :cond_42

    array-length v3, v1

    const/16 v4, 0x17

    if-lt v3, v4, :cond_42

    .line 1448
    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1449
    sget-object v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_42
    move-object v1, v2

    :goto_43
    const-string v3, "NG_NFC"

    if-eqz v0, :cond_8d

    .line 1452
    new-instance v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    .line 1453
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v5

    if-nez v5, :cond_6a

    .line 1454
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1455
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getCoverId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 1456
    :cond_6a
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v1

    if-nez v1, :cond_7c

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v0, "NG_ID"

    .line 1457
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 1458
    :cond_7c
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_89

    const-string v0, "NG_KEY"

    .line 1459
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 1461
    :cond_89
    invoke-virtual {p0, v3, v2, v2, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 1463
    :cond_8d
    invoke-virtual {p0, v3, v2, v2, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :goto_90
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendFriendsCoverAttachInformation(Z)V
    .registers 4

    .line 1073
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 1077
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.manager.action.SEND_ATTACH_INFORMATION"

    .line 1078
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isAttached"

    .line 1079
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1080
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendToIssManager()V
    .registers 4

    const-string v0, "com.samsung.android.isag.issmanager"

    .line 646
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 647
    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send to iss manager"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.isag.issmanager.ACTION_COVER_AUTH"

    .line 649
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.isag.issmanager.permission.COVER_AUTH"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public final setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1469
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "result_factory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v0, "serial_factory"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1471
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string p2, "id_factory"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo p2, "serviceid_factory"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_29

    const-string p1, "OK"

    goto :goto_2b

    :cond_29
    const-string p1, "NG"

    .line 1475
    :goto_2b
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "attachInfo"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iget-wide p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-virtual {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getDateFromUTC(J)Ljava/lang/String;

    move-result-object p0

    const-string p2, "detachInfo"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public final setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 491
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v3, :cond_1c

    if-eqz v1, :cond_1c

    .line 492
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v3

    .line 493
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    invoke-virtual {v6, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->setRealCoverType(I)V

    if-ne v3, v4, :cond_1c

    .line 495
    invoke-virtual {v2, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->setType(I)V

    .line 499
    :cond_1c
    new-instance v3, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v3}, Lcom/samsung/android/cover/CoverState;-><init>()V

    move/from16 v6, p2

    .line 500
    invoke-virtual {v3, v6}, Lcom/samsung/android/cover/CoverState;->setFakeCover(Z)V

    const/16 v6, 0x11

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v1, :cond_207

    .line 505
    invoke-virtual {v3, v10}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 506
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getColor()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/samsung/android/cover/CoverState;->setColor(I)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getModel()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/samsung/android/cover/CoverState;->setModel(I)V

    .line 508
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getStringManagerURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverAppUri(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverCookie([B)V

    .line 511
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/16 v12, 0x17

    if-eqz v11, :cond_61

    .line 512
    array-length v13, v11

    if-ne v13, v12, :cond_61

    .line 513
    aget-byte v13, v11, v4

    const/4 v14, 0x5

    .line 514
    aget-byte v11, v11, v14

    goto :goto_63

    :cond_61
    move v11, v9

    move v13, v11

    .line 516
    :goto_63
    invoke-virtual {v3, v5}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isNeedConvertClearCoverType()Z

    move-result v14

    if-eqz v14, :cond_79

    const/16 v14, 0xf

    .line 519
    invoke-virtual {v2, v14}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->setType(I)V

    .line 522
    :cond_79
    iget-object v14, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v14, :cond_ac

    .line 523
    iget v14, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v15

    if-eq v14, v15, :cond_ac

    .line 524
    sget-object v14, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force detach event, "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v0, v5, v5, v8, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 529
    :cond_ac
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v4

    iput v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    .line 531
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v4

    const/4 v8, 0x3

    const/4 v14, 0x2

    if-nez v4, :cond_c9

    .line 532
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/cover/CoverState;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_f2

    .line 534
    :cond_c9
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getSmapp()I

    move-result v4

    if-ne v4, v10, :cond_d5

    const/16 v4, 0xff

    .line 535
    invoke-virtual {v3, v4}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto :goto_f2

    .line 536
    :cond_d5
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v4, :cond_ef

    if-ne v13, v10, :cond_ef

    if-eq v11, v9, :cond_ef

    .line 537
    invoke-virtual {v3, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    if-ne v11, v10, :cond_e6

    .line 539
    invoke-virtual {v3, v10}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    goto :goto_f2

    :cond_e6
    if-ne v11, v8, :cond_f2

    .line 542
    invoke-virtual {v3, v5}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 543
    invoke-virtual {v3, v14}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    goto :goto_f2

    .line 546
    :cond_ef
    invoke-virtual {v3, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    .line 549
    :cond_f2
    :goto_f2
    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 550
    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    if-nez v4, :cond_116

    .line 551
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 552
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 553
    invoke-virtual {v0, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    .line 555
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getType()I

    move-result v1

    if-nez v1, :cond_116

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendToIssManager()V

    .line 559
    :cond_116
    iget v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-eq v1, v10, :cond_11e

    if-eq v1, v14, :cond_11e

    if-ne v1, v8, :cond_1e9

    .line 560
    :cond_11e
    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coverInfo.getUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.applinker.REQUEST_LINK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_COMPLETE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 565
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result v8

    const-string v9, "EXTRA"

    const-string v11, "ID"

    const-string v13, "URI"

    const-string v15, "cover"

    const-string v5, "DEVICE_TYPE"

    if-eqz v8, :cond_1b7

    .line 566
    invoke-virtual {v3, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v8

    invoke-virtual {v3, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 568
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v8

    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 569
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v8, "com.sec.android.app.applinker"

    .line 570
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v8, :cond_1a9

    array-length v9, v8

    if-lt v9, v12, :cond_1a9

    .line 572
    aget-byte v1, v8, v10

    if-lt v1, v6, :cond_19b

    if-ge v1, v7, :cond_19b

    const/4 v1, 0x4

    .line 573
    aget-byte v1, v8, v1

    if-ne v1, v14, :cond_18c

    .line 574
    invoke-virtual {v4, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_191

    :cond_18c
    const-string v1, "friends"

    .line 576
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    :goto_191
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v3

    invoke-virtual {v0, v10, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    goto :goto_1dd

    :cond_19b
    const-string/jumbo v1, "smapp"

    .line 579
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1dd

    :cond_1a9
    const-string/jumbo v5, "uri data is null"

    .line 583
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1dd

    .line 587
    :cond_1b7
    invoke-virtual {v4, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "s_cover"

    .line 588
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array v1, v14, [B

    .line 589
    fill-array-data v1, :array_244

    invoke-virtual {v3, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 590
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getExtraId()[B

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 591
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v1

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 592
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 594
    :goto_1dd
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 595
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    if-eqz v1, :cond_1e9

    .line 596
    invoke-virtual {v1, v10}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->broadcastCoverAttachStatus(Z)V

    .line 600
    :cond_1e9
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object v2

    .line 601
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object v3

    .line 602
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayExtraData()[B

    move-result-object v4

    .line 600
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$mwriteFile(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthAlarm()V

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    const/4 v2, 0x0

    .line 608
    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    goto :goto_243

    :cond_207
    move v2, v5

    .line 610
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v9}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    .line 611
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v9}, Landroid/os/PowerManager;->setCoverType(I)V

    .line 612
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v3, :cond_219

    .line 613
    invoke-virtual {v3, v2}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 614
    :cond_219
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->applyCoverVerifiedState(ZLcom/samsung/android/cover/CoverState;)Z

    .line 615
    iput-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 618
    iget v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_243

    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    if-eqz v2, :cond_243

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    if-ne v2, v10, :cond_243

    .line 619
    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    if-eqz v1, :cond_243

    aget-byte v1, v1, v10

    if-lt v1, v6, :cond_243

    if-ge v1, v7, :cond_243

    .line 620
    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    .line 621
    iput-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    :cond_243
    :goto_243
    return-void

    :array_244
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public final setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 6

    .line 628
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAccessoryVerified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3a

    .line 630
    invoke-virtual {p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    .line 631
    iget p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    const/4 p3, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    if-eq p1, p3, :cond_1b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_43

    .line 632
    :cond_1b
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getUrl()I

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz p1, :cond_43

    array-length v1, p1

    if-lt v1, p3, :cond_43

    .line 633
    aget-byte p3, p1, v0

    const/16 v1, 0x11

    if-lt p3, v1, :cond_43

    const/16 v1, 0x20

    if-ge p3, v1, :cond_43

    .line 634
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->getId()[B

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    goto :goto_43

    :cond_3a
    const/4 p1, 0x0

    .line 639
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)Z

    .line 640
    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    :cond_43
    :goto_43
    return-void
.end method

.method public final startAuthAlarm()V
    .registers 6

    .line 1019
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_30

    .line 1020
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string v1, "Schedule an authentication alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1021
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    .line 1022
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x44aa200

    add-long/2addr v1, v3

    const v3, 0xdbba00

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 1024
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_30
    return-void
.end method

.method public final startAuthentication(ZJ)V
    .registers 6

    .line 1193
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1195
    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_17

    const-wide/16 v0, 0x6978

    .line 1197
    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    const/4 p1, 0x1

    .line 1198
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    .line 1201
    :cond_17
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final startAuthentication(ZJJ)V
    .registers 8

    .line 1205
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1207
    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_12

    .line 1209
    invoke-virtual {p0, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->scheduleAuthenticationTimeOuts(J)V

    .line 1212
    :cond_12
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final stopAuthAlarm()V
    .registers 3

    .line 1029
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION:Z

    if-eqz v0, :cond_16

    .line 1030
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAuthAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1031
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthAlarmSet:Z

    .line 1032
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRunAuthIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_16
    return-void
.end method

.method public final stopAuthentication(J)V
    .registers 5

    .line 1226
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    .line 1227
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1230
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 1235
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
