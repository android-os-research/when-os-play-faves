.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;
    }
.end annotation


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

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

.field public final mHandler:Landroid/os/Handler;

.field public final mLazySession:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

.field public final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field public final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field public final mTag:Ljava/lang/String;

.field public mTestHalEnabled:Z

.field public final mToken:Landroid/os/IBinder;

.field public final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$0SD2XYhKZnHDlcZsqucTXrCGpvo(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->lambda$new$0()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ckV_sfQXrvOBRD7rLXDNui_jmm0(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->lambda$new$1()Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentSession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutCache(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentSession(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 20

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    move-object v8, p3

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    invoke-direct {v9, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    iput-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 792
    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$3;

    invoke-direct {v10, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    iput-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;

    .line 607
    iput-object v7, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    .line 608
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 609
    iput-object v8, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 610
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    move-object/from16 v2, p4

    .line 611
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    move-object/from16 v2, p5

    .line 612
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 614
    new-instance v11, Lcom/android/server/biometrics/sensors/face/SemFaceUserAwareScheduler;

    new-instance v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct {v6, p0, v3, v2, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/SemFaceUserAwareScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V

    iput-object v11, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    .line 667
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;

    invoke-direct {v1, p3, v10}, Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/aidl/SemLockoutFrameworkImpl$LockoutResetCallback;)V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 671
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 672
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 675
    :try_start_58
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v9, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_60

    goto :goto_67

    .line 677
    :catch_60
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v1, "Unable to register user switch observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return-void
.end method

.method private synthetic lambda$new$0()I
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getUserId()I

    move-result p0

    goto :goto_b

    :cond_9
    const/16 p0, -0x2710

    :goto_b
    return p0
.end method

.method private synthetic lambda$new$1()Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .registers 1

    .line 672
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method


# virtual methods
.method public createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .registers 9

    .line 699
    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-object v0, v6

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    return-object v6
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 14

    const-wide v0, 0x20b00000001L

    .line 737
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 739
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000002L

    const/4 p1, 0x2

    .line 740
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 741
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 742
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    const-wide v4, 0x10500000003L

    .line 741
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 743
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object p1

    const-wide v4, 0x10b00000004L

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 745
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 746
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-wide v4, 0x20b00000005L

    .line 748
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 749
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 750
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v8, v8, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 751
    invoke-static {v8}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 752
    invoke-virtual {v8, v9, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 750
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 753
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4a

    :cond_88
    const-wide v2, 0x10800000006L

    .line 756
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000007L

    .line 758
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 761
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorIds()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 714
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    return-object p0
.end method

.method public getLazySession()Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;
    .registers 1

    .line 710
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object p0
.end method

.method public getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .registers 1

    .line 705
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    return-object p0
.end method

.method public getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 1

    .line 687
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_d

    .line 692
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTestHalEnabled()Z
    .registers 1

    .line 785
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    return p0
.end method

.method public onBinderDied()V
    .registers 5

    .line 765
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 766
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v1, :cond_2e

    .line 767
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 769
    invoke-interface {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/16 v0, 0x94

    const/4 v1, 0x4

    const/4 v3, -0x1

    .line 772
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 778
    :cond_2e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 779
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->reset()V

    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    return-void
.end method

.method public setSecurityLevel(I)V
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iput p1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 5

    .line 718
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestHalEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    if-eq p1, v0, :cond_3b

    .line 722
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    if-eqz v0, :cond_38

    .line 724
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v1, "Closing old session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception v0

    .line 728
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 732
    :cond_3b
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    return-void
.end method
