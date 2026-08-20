.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/face/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;,
        Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
    }
.end annotation


# static fields
.field public static final ENROLL_TIMEOUT_SEC:I = 0x4b

.field public static final GENERATE_CHALLENGE_COUNTER_TTL_MILLIS:I = 0x927c0

.field public static final GENERATE_CHALLENGE_REUSE_INTERVAL_MILLIS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Face10"

.field public static mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

.field public static sSystemClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field public mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

.field public final mGeneratedChallengeCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field public final mHandler:Landroid/os/Handler;

.field public final mLazyDaemon:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I

.field public final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field public mTestHalEnabled:Z

.field public mTpaHalModeEnabled:Z

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

.field public final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$3zfy8OQhj8ZgUvePlPCVdgdtZhI(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$serviceDied$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$4KHzgpOw22OXUGrCmeZ8hgeIWMI()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semPauseEnroll$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$5ciYGPMSIhAvd5iS7zEIfIPCoWk(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$cancelAuthentication$9(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$5mo5ftDkT71ZgKWNyHn7uh8mhAM()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semPauseAuth$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$6IlC9mxPKZt6NLsk49GXiIqqQBk(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleGetFeature$14(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9erg_yJbFsRq76t7nLDBII0SUEU(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleInternalCleanup$15(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bmxaswyoypha8iNPlIBSxIXk5AY(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CBpnUw31LgMAtkpBQHO7ZzxX6gM(Lcom/android/server/biometrics/sensors/face/hidl/Face10;II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleResetLockout$12(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$JOPPr_WavDkztN6Dq0b9OgMD9QM(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$onBootPhase$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JofJl3RUJwCu6ADDtBEx9eqdNPs(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleLoadAuthenticatorIds$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ll_lVIP6o3gKpPKW8vgMCa-pG3I(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$cancelEnrollment$7(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$UnSTiPPXjlKb30Sr8P6fPP0HN-I(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
    .registers 14

    invoke-direct/range {p0 .. p13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleAuthenticate$8(IZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wz-Go0ZBp61l2GgCfMu-LMkWLOU(II)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$getDaemon$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ato9dcejMs4FaVhxyspQ-NBh_1M()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semResumeAuth$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$dd6mDiKgI7HN9fb5FftelKDh5NU()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semResumeEnroll$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$em19PpPWo2zNwEKOiHSIpd8AKaM(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleRemoveAll$11(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$goiM6xRS1CvwE2i7GMc5_BeMxEg(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleSetFeature$13(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$hHQVJZFh_uCA9OSkCzKpzVHcAIQ(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleRemove$10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iYOnsm0RYuUV4b1hmhzRzkEmffQ(JLjava/lang/Long;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$decrementChallengeCount$3(JLjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$imYblmh9YHBOz6-UHmtfi-IGXQw(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jECb0c5ChQbL1V_irlH_7V46W74(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$startPreparedClient$16(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jpI_4nn0BOv8lA47QwMwts9gdsI(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleEnroll$6(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lVfjGS9Zr62tb-SDdl53eM5SMHU()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semSessionClose$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$rtzNGLACpe7QM9Au0j_pnwJ9P54(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleGenerateChallenge$4(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wUjGy3i4zWb3ueRGn03AyKtR7xg(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleRevokeChallenge$5(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xOAz37LYlBYYknSGVoN6MfL6T8Q(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semScheduleUpdateTrustApp$22(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsmx69uEc8DwO1PQvKH1pgBOy7U()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$semSessionOpen$23()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/log/BiometricContext;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalResultController(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutTracker(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;
    .registers 1

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 159
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v3, p1

    move-object v1, p2

    const-string v8, "Face10"

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 178
    iput-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTpaHalModeEnabled:Z

    .line 184
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v2, -0x2710

    .line 185
    iput v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v2, 0x0

    .line 188
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 191
    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    .line 201
    new-instance v9, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;

    invoke-direct {v9, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v9, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 578
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 579
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 580
    iget v4, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iput v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object/from16 v5, p5

    .line 581
    iput-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-object v4, p4

    .line 582
    iput-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    .line 584
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-direct {v6, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;)V

    sput-object v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-object/from16 v6, p6

    .line 586
    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 587
    new-instance v6, Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-direct {v6, p1}, Lcom/android/server/biometrics/sensors/face/UsageStats;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 588
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    .line 589
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 593
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    invoke-direct {v6, p1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl$LockoutResetCallback;)V

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    .line 596
    new-instance v10, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iget v2, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const/4 v6, 0x0

    move-object v1, v10

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    iput-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 598
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v10, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V

    .line 604
    :try_start_7a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_81} :catch_82

    goto :goto_87

    :catch_82
    const-string v0, "Unable to register user switch observer"

    .line 606
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    return-void
.end method

.method public static getProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;
    .registers 1

    .line 1490
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    return-object v0
.end method

.method private synthetic lambda$cancelAuthentication$9(Landroid/os/IBinder;J)V
    .registers 4

    .line 1009
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$cancelEnrollment$7(Landroid/os/IBinder;J)V
    .registers 4

    .line 931
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic lambda$decrementChallengeCount$3(JLjava/lang/Long;)Z
    .registers 5

    .line 804
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p0, v0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$getDaemon$2(II)V
    .registers 4

    const-string v0, "Face10"

    if-nez p0, :cond_2a

    .line 714
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    .line 715
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityLevel : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_1d

    const-string p1, " (Strong=1,2,3)"

    goto :goto_1f

    :cond_1d
    const-string p1, ""

    :goto_1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_2a
    const-string p0, "SecurityLevel fail"

    .line 717
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 599
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v0, -0x2710

    .line 600
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return-void
.end method

.method public static synthetic lambda$onBootPhase$25(I)V
    .registers 2

    .line 1462
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->onBootPhase(I)V

    return-void
.end method

.method private synthetic lambda$scheduleAuthenticate$8(IZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
    .registers 40

    move-object/from16 v14, p0

    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v23, p10

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v22, p13

    .line 955
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 957
    iget v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v18

    .line 960
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->hasPrivilegedAttr(Landroid/os/Bundle;I)Z

    move-result v0

    or-int v21, p2, v0

    .line 963
    new-instance v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;

    move-object v0, v15

    iget-object v2, v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    move-object/from16 p1, v15

    iget v15, v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object/from16 v24, p1

    move-object/from16 p1, v0

    const/4 v0, 0x2

    move-object/from16 v25, v1

    move/from16 v1, p12

    .line 966
    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v20, v0

    const/4 v0, 0x0

    move-object v1, v14

    move v14, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-direct/range {v0 .. v23}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$7;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZLjava/lang/String;)V

    .line 986
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-wide/from16 v1, p4

    move-object/from16 v3, v24

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msetCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V

    move-object/from16 v0, p0

    .line 989
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleEnroll$6(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 31

    move-object/from16 v13, p0

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v18, p5

    move-wide/from16 v9, p6

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    .line 887
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 889
    iget-object v0, v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelReEnrollNotification(Landroid/content/Context;)V

    .line 891
    new-instance v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;

    move-object v0, v15

    iget-object v2, v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object v5, v11

    move-object/from16 p1, v15

    move-object/from16 v15, p3

    invoke-direct {v11, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v11, v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 893
    invoke-static {v11}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v11

    iget v15, v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object/from16 v19, p1

    move-object/from16 p1, v0

    const/4 v0, 0x1

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .line 895
    invoke-virtual {v13, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v0, v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v0

    const/16 v0, 0x4b

    move-object v1, v13

    move v13, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct/range {v0 .. v18}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 915
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;

    move-object/from16 v3, v19

    invoke-direct {v2, v0, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleGenerateChallenge$4(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 819
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->incrementChallengeCount()V

    .line 821
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isGeneratedChallengeCacheValid()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "Face10"

    const-string v3, "Current challenge is cached and will be reused"

    .line 822
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V

    return-void

    :cond_18
    move/from16 v6, p2

    .line 827
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 829
    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v5, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x0

    .line 832
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    .line 834
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    move-object v1, v13

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V

    .line 835
    iput-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 836
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;

    invoke-direct {v2, p0, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;)V

    invoke-virtual {v1, v13, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleGetFeature$14(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 22

    move-object v0, p0

    move/from16 v13, p2

    .line 1105
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v1

    .line 1106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring getFeature, no templates enrolled for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1111
    :cond_24
    invoke-virtual {p0, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    const/4 v2, 0x0

    .line 1113
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v12

    .line 1114
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1116
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;II)V

    .line 1118
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$9;

    move/from16 v3, p6

    invoke-direct {v2, p0, v3, v14, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$9;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;I)V

    invoke-virtual {v1, v14, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleInternalCleanup$15(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 15

    .line 1139
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSetActiveUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I

    .line 1141
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1143
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v9

    .line 1144
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 1145
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 1146
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1149
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 1150
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleLoadAuthenticatorIds$17()V
    .registers 5

    .line 1255
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1256
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1257
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1258
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    goto :goto_e

    :cond_2c
    return-void
.end method

.method private synthetic lambda$scheduleRemove$10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 21

    move-object v0, p0

    .line 1016
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1018
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1020
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 1021
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 1024
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, v14}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 1026
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v14}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getHashID()I

    move-result v1

    const-string v2, "R"

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$scheduleRemoveAll$11(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 1035
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1038
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1041
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 1042
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 1045
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, v14}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleResetLockout$12(II[B)V
    .registers 14

    .line 1052
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1053
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring lockout reset, no templates enrolled for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1057
    :cond_21
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1059
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$8;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 1060
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v0, 0x0

    .line 1061
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, p1

    move-object v1, p0

    move v4, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$8;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[B)V

    .line 1074
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleRevokeChallenge$5(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 15

    .line 852
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->decrementChallengeCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    const-string v2, "Face10"

    if-nez v0, :cond_26

    .line 854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "scheduleRevokeChallenge skipped - challenge still in use: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string/jumbo v0, "scheduleRevokeChallenge executing - no active clients"

    .line 859
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 862
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 864
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v2, v0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 867
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;

    invoke-direct {p2, p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleSetFeature$13(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v6, p2

    .line 1083
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v1

    .line 1084
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring setFeature, no templates enrolled for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1089
    :cond_25
    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    const/4 v2, 0x0

    .line 1091
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v14

    .line 1092
    new-instance v15, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p4

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 1094
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v15

    move-object/from16 v4, p3

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v1 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[BI)V

    .line 1097
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, v15}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic lambda$semPauseAuth$20()V
    .registers 1

    .line 1391
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonPauseAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semPauseEnroll$18()V
    .registers 1

    .line 1376
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonPauseEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semResumeAuth$21()V
    .registers 1

    .line 1398
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonResumeAuth(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semResumeEnroll$19()V
    .registers 3

    .line 1383
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmEnrollStartTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;J)V

    .line 1384
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonResumeEnroll(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semScheduleUpdateTrustApp$22(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 4

    .line 1420
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$semSessionClose$24()V
    .registers 1

    .line 1435
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method public static synthetic lambda$semSessionOpen$23()V
    .registers 1

    .line 1428
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSessionOpen(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method private synthetic lambda$serviceDied$1()V
    .registers 5

    .line 631
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v0, -0x2710

    .line 634
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    .line 636
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 637
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_3e

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 640
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/16 v0, 0x94

    const/4 v1, 0x4

    const/4 v3, -0x1

    .line 643
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 649
    :cond_3e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 650
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    return-void
.end method

.method private synthetic lambda$startPreparedClient$16(I)V
    .registers 2

    .line 1163
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    .registers 11

    .line 615
    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 616
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/biometrics/sensors/face/SemFaceScheduler;

    const-string v0, "Face10"

    invoke-direct {v5, v0}, Lcom/android/server/biometrics/sensors/face/SemFaceScheduler;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object v7
.end method


# virtual methods
.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 6

    .line 1009
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 6

    .line 931
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelFaceDetect(ILandroid/os/IBinder;J)V
    .registers 5

    .line 944
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsSensor(I)Z
    .registers 2

    .line 748
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 5

    .line 1302
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 10

    .line 1366
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V

    return-object p1
.end method

.method public final decrementChallengeCount()I
    .registers 5

    .line 801
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 804
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda19;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 805
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 806
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 808
    :cond_1e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 8

    .line 1319
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-nez p1, :cond_9

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string/jumbo p1, "ro.face.disable_debug_data"

    const/4 v0, 0x0

    .line 1325
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6a

    const-string/jumbo p1, "persist.face.disable_debug_data"

    .line 1326
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_6a

    .line 1333
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    if-eqz p0, :cond_6a

    const/4 p1, 0x0

    .line 1337
    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/dev/null"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_56
    .catchall {:try_start_24 .. :try_end_2b} :catchall_54

    .line 1338
    :try_start_2b
    new-instance p1, Landroid/os/NativeHandle;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/FileDescriptor;

    .line 1339
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    new-array p2, v0, [I

    invoke-direct {p1, v2, p2, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    .line 1341
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4a} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_51
    .catchall {:try_start_2b .. :try_end_4a} :catchall_4e

    .line 1347
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_6a

    goto :goto_6a

    :catchall_4e
    move-exception p0

    move-object p1, v1

    goto :goto_64

    :catch_51
    move-exception p0

    move-object p1, v1

    goto :goto_57

    :catchall_54
    move-exception p0

    goto :goto_64

    :catch_56
    move-exception p0

    :goto_57
    :try_start_57
    const-string p2, "Face10"

    const-string p3, "error while reading face debugging data"

    .line 1343
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_54

    if-eqz p1, :cond_6a

    .line 1347
    :try_start_60
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6a

    goto :goto_6a

    :goto_64
    if-eqz p1, :cond_69

    :try_start_66
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    .line 1351
    :catch_69
    :cond_69
    throw p0

    :catch_6a
    :cond_6a
    :goto_6a
    return-void
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 11

    const-string p1, "Face10"

    .line 1202
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 1203
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 1205
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string/jumbo v2, "service"

    .line 1207
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1209
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1210
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1211
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1212
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 1213
    invoke-virtual {v5, v6, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1214
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "id"

    .line 1215
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "count"

    .line 1216
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "accept"

    .line 1217
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "reject"

    .line 1218
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquire"

    .line 1219
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "lockout"

    .line 1220
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "permanentLockout"

    .line 1221
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acceptCrypto"

    .line 1224
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "rejectCrypto"

    .line 1225
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquireCrypto"

    .line 1226
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1227
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_26

    :cond_ab
    const-string/jumbo v3, "prints"

    .line 1230
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_b1} :catch_b2

    goto :goto_b8

    :catch_b2
    move-exception v2

    const-string v3, "dump formatting failure"

    .line 1232
    invoke-static {p1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1234
    :goto_b8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL deaths since last reboot: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 1238
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/UsageStats;->print(Ljava/io/PrintWriter;)V

    .line 1241
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdump(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 3

    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 14

    const-wide v0, 0x20b00000001L

    .line 1170
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1172
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000002L

    const/4 p1, 0x2

    .line 1173
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1174
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 1175
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    const-wide v4, 0x10500000003L

    .line 1174
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1176
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object p1

    const-wide v4, 0x10b00000004L

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1178
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 1179
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-wide v4, 0x20b00000005L

    .line 1181
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1182
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 1183
    iget v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v8}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 1184
    invoke-virtual {v8, v9, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 1183
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1185
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4a

    :cond_86
    const-wide v2, 0x10800000006L

    .line 1188
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000007L

    .line 1190
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1193
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 5

    .line 779
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final declared-synchronized getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 12

    monitor-enter p0

    .line 665
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isTpaSehTestHalEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 666
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->getInstance(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_13c

    .line 668
    monitor-exit p0

    return-object v0

    .line 670
    :cond_16
    :try_start_16
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    if-eqz v0, :cond_2a

    .line 671
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 672
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_13c

    .line 673
    monitor-exit p0

    return-object v0

    .line 676
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_13c

    if-eqz v0, :cond_30

    .line 677
    monitor-exit p0

    return-object v0

    :cond_30
    :try_start_30
    const-string v0, "Face10"

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon was null, reconnecting, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 681
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_13c

    .line 685
    :try_start_4c
    invoke-static {}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->getService()Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_52
    .catch Ljava/util/NoSuchElementException; {:try_start_4c .. :try_end_52} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_52} :catch_53
    .catchall {:try_start_4c .. :try_end_52} :catchall_13c

    goto :goto_64

    :catch_53
    move-exception v0

    :try_start_54
    const-string v1, "Face10"

    const-string v2, "Failed to get face HAL"

    .line 693
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :catch_5c
    move-exception v0

    const-string v1, "Face10"

    const-string v2, "NoSuchElementException"

    .line 691
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    :goto_64
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_72

    const-string v0, "Face10"

    const-string v2, "Face HAL not available"

    .line 697
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_13c

    .line 698
    monitor-exit p0

    return-object v1

    .line 701
    :cond_72
    :try_start_72
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_13c

    .line 708
    :try_start_7b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 709
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-interface {v0, v6}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v6, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8b} :catch_e8
    .catchall {:try_start_7b .. :try_end_8b} :catchall_13c

    :try_start_8b
    const-string v0, "Face10"

    .line 710
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetCallback FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) RESULT(HAL id): "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 712
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;

    invoke-direct {v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v0, v8}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    const-string v0, "Face10"

    .line 720
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecurityLevel FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setHalDeviceId(J)V
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_e5} :catch_e6
    .catchall {:try_start_8b .. :try_end_e5} :catchall_13c

    goto :goto_f3

    :catch_e6
    move-exception v0

    goto :goto_ea

    :catch_e8
    move-exception v0

    move-wide v6, v2

    :goto_ea
    :try_start_ea
    const-string v4, "Face10"

    const-string v5, "Failed to set callback for face HAL"

    .line 726
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    :goto_f3
    const-string v0, "Face10"

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face HAL ready, HAL ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v6, v2

    if-eqz v0, :cond_12f

    .line 732
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleLoadAuthenticatorIds()V

    .line 733
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 734
    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 735
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 737
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    .line 734
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    goto :goto_138

    :cond_12f
    const-string v0, "Face10"

    const-string v2, "Unable to set callback"

    .line 739
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 743
    :goto_138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_13a
    .catchall {:try_start_ea .. :try_end_13a} :catchall_13c

    monitor-exit p0

    return-object v0

    :catchall_13c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnrolledFaces(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 768
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenerateChallengeReuseInterval()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getLockoutModeForUser(II)I
    .registers 3

    .line 774
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/SemLockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 2

    .line 762
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final incrementChallengeCount()V
    .registers 3

    .line 797
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final isGeneratedChallengeCacheValid()Z
    .registers 5

    .line 791
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    .line 792
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getCreatedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public isHardwareDetected(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public final isTpaSehTestHalEnabled()Z
    .registers 2

    .line 656
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_e

    :cond_8
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTpaHalModeEnabled:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 1462
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda20;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZZ)J
    .registers 30

    move-object/from16 v0, p0

    .line 998
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v15

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide v9, v15

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    .line 1000
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V

    return-wide v15
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V
    .registers 32

    move-object/from16 v1, p0

    .line 954
    iget-object v15, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;

    move-object v0, v14

    move/from16 v2, p5

    move/from16 v3, p13

    move-object/from16 v4, p2

    move-wide/from16 v5, p9

    move-object/from16 v7, p7

    move-wide/from16 v8, p3

    move/from16 v10, p11

    move-object/from16 v11, p8

    move/from16 v12, p6

    move/from16 v13, p12

    move-object/from16 v16, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .registers 25

    move-object v1, p0

    .line 885
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    .line 886
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;

    move-object v0, v14

    move/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-wide v7, v11

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v11
.end method

.method public scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .registers 7

    .line 938
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 818
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 17

    move-object v1, p0

    .line 1104
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;

    move-object v0, v9

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object/from16 v6, p6

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    .line 1157
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 1137
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleLoadAuthenticatorIds()V
    .registers 3

    .line 1254
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 15

    .line 1015
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda26;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 1034
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda24;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 6

    .line 1051
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7

    .line 851
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;

    invoke-direct {p5, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 21

    move-object v1, p0

    .line 1082
    iget-object v10, v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda18;

    move-object v0, v11

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateActiveUserWithoutHandler(I)V
    .registers 14

    .line 1272
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 1273
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$10;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 1274
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/4 v1, 0x0

    .line 1275
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$10;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V

    .line 1288
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$11;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$11;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 2

    .line 1457
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mgetRemainingLockoutTime(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I

    move-result p0

    return p0
.end method

.method public semGetSecurityLevel(Z)I
    .registers 2

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1447
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mgetSecurityLevel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)I

    move-result p0

    return p0
.end method

.method public semGetTrustAppVersion()Ljava/lang/String;
    .registers 1

    .line 1412
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->daemonGetTrustAppVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semIsFrameworkHandleLockout()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public semIsSessionClose()Z
    .registers 1

    .line 1441
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonIsSessionClose(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result p0

    return p0
.end method

.method public semPauseAuth()V
    .registers 2

    .line 1390
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semPauseEnroll()V
    .registers 2

    .line 1375
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semResetAuthenticationTimeout()Z
    .registers 2

    .line 1404
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isNeededSetBrightness()Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x1388

    goto :goto_11

    :cond_f
    const/16 p0, 0xfa0

    .line 1406
    :goto_11
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mProviderExtImpl:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mresetOperationTimeout(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)Z

    move-result p0

    return p0
.end method

.method public semResumeAuth()V
    .registers 2

    .line 1397
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semResumeEnroll()V
    .registers 2

    .line 1382
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 5

    .line 1419
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSessionClose()V
    .registers 2

    .line 1434
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSessionOpen()V
    .registers 2

    .line 1427
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSetTpaHalEnabled(Z)V
    .registers 6

    .line 1467
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTpaHalModeEnabled:Z

    .line 1468
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    const-string v1, "biometric_tpa_mode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    if-eqz p1, :cond_11

    or-int/lit8 p1, v0, 0x8

    goto :goto_13

    :cond_11
    and-int/lit8 p1, v0, -0x9

    .line 1474
    :goto_13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v2, p1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public semUpdateTpaAction()V
    .registers 2

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isTpaSehTestHalEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->postUpdateAction()V

    :cond_f
    return-void
.end method

.method public serviceDied(J)V
    .registers 3

    const-string p1, "Face10"

    const-string p2, "HAL died"

    .line 629
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 2

    .line 1356
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    .line 1357
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    if-eqz p0, :cond_9

    .line 1358
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->-$$Nest$fputmHalResultTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Z)V

    :cond_9
    return-void
.end method

.method public startPreparedClient(II)V
    .registers 4

    .line 1162
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
