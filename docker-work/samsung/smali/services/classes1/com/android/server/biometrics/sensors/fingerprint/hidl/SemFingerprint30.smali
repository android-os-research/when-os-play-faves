.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;
.super Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.source "SemFingerprint30.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SemFingerprint30"


# instance fields
.field public mDaemonSdkVersion:Ljava/lang/String;

.field public mSecurityLevel:I

.field public mSensorInfo:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3KZOGNX6Lmn79Cclnau63R4LAWk(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->getSehDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6kgVy4YtY0UVy2whuZ5cpQpidhA(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->lambda$semScheduleUpdateTrustApp$1(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HkqGsGBZHOQ0Y3-X5W4iEyCNWEc(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->lambda$semOpenTzSession$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gSxF1BNnUdJlNeI__lnSf_JzyRc(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->lambda$semScheduleSensorTest$0(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDaemonSdkVersion(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mDaemonSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;II[B[B)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 9

    .line 59
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSecurityLevel:I

    .line 62
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V

    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$semOpenTzSession$2()V
    .registers 6

    .line 169
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getSensorId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    const/4 v1, 0x2

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setUseScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$semScheduleSensorTest$0(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 11

    .line 110
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getLazyDaemon()Ljava/util/function/Supplier;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getSensorId()I

    move-result v6

    move-object v0, v7

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$semScheduleUpdateTrustApp$1(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 122
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$1;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetSensorId()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$2;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V

    invoke-virtual {p1, v10, p2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;
    .registers 15

    .line 71
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    const-string v0, "SemFingerprint30"

    invoke-direct {v4, v0, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    .line 74
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    iget p5, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v7, p5, p0, p3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 76
    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    .line 77
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v8

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object p5
.end method


# virtual methods
.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 4

    .line 206
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dumpInternal(ILjava/io/PrintWriter;)V

    .line 207
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mDaemonSdkVersion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " daemon version : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mDaemonSdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    :cond_21
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSensorInfo:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sensor info : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSensorInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    :cond_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " SL : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSecurityLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getSehDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;
    .registers 1

    .line 302
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    return-object p0
.end method

.method public final handleRequestCommandWithoutScheduler(II[B[B)I
    .registers 9

    .line 241
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getSensorId()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    .line 244
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setParam(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 246
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setInputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setOutputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    move-result p0

    return p0
.end method

.method public onPointerDown(JIIIFF)V
    .registers 19

    const/16 v0, 0x16

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v3, p0

    .line 219
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    .line 222
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetSensorId()I

    move-result v6

    move-wide v4, p1

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-super/range {v3 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->onPointerDown(JIIIFF)V

    return-void
.end method

.method public onPointerUp(JI)V
    .registers 6

    const/16 p3, 0x16

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, p3, v0, v1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    .line 229
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetSensorId()I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->onPointerUp(JI)V

    return-void
.end method

.method public semGetDaemonSdkVersion()Ljava/lang/String;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mDaemonSdkVersion:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semGetOpticalBrightnessConfigs()[Ljava/lang/String;
    .registers 6

    .line 182
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v2, 0x20

    const/4 v3, 0x0

    .line 184
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    move-result p0

    if-lez p0, :cond_40

    .line 188
    :try_start_12
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, p0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetOpticalBrightnessConfigs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFingerprint30"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-object v1
.end method

.method public semGetSecurityLevel()I
    .registers 1

    .line 201
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSecurityLevel:I

    return p0
.end method

.method public semGetSensorInfo(IZ)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_9

    .line 99
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSensorInfo:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelInterruptableOperation()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->updateSensorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semOpenTzSession()V
    .registers 8

    .line 166
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semGetSensorId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "SemFingerprint30"

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semProcessFidoCommand(II[B[B)I
    .registers 5

    .line 158
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelInterruptableOperation()V

    const/16 p1, 0x9

    const/4 p2, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    move-result p0

    return p0
.end method

.method public semRequest(II[B[B)I
    .registers 6

    .line 83
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    move-result p0

    return p0
.end method

.method public semScheduleSensorTest(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 6

    .line 109
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2, p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 6

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCacheForHAL()V
    .registers 1

    .line 234
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->updateDaemonSdkVersion()V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->updateSensorInfo()Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->updateSecurityLevel()V

    return-void
.end method

.method public final updateDaemonSdkVersion()V
    .registers 5

    const/16 v0, 0x100

    :try_start_2
    new-array v0, v0, [B

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 255
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    move-result v1

    if-lez v1, :cond_37

    .line 259
    new-instance v2, Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mDaemonSdkVersion:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_37

    :catch_1b
    move-exception p0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDaemonSdkVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFingerprint30"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return-void
.end method

.method public final updateSecurityLevel()V
    .registers 5

    const-string v0, "SemFingerprint30"

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 284
    :try_start_6
    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSecurityLevel:I

    if-gtz v1, :cond_11

    const/4 v1, 0x1

    .line 287
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSecurityLevel:I

    .line 289
    :cond_11
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSecurityLevel:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->oemStrengthToPropertyStrength(I)I

    move-result v1

    .line 290
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    .line 291
    iget v2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    if-eq v2, v1, :cond_5a

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor strength mismatch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iput v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3f} :catch_40

    goto :goto_5a

    :catch_40
    move-exception p0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSecurityLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final updateSensorInfo()Ljava/lang/String;
    .registers 5

    const/16 v0, 0x800

    const/4 v1, 0x0

    :try_start_3
    new-array v0, v0, [B

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 270
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->handleRequestCommandWithoutScheduler(II[B[B)I

    move-result v2

    if-lez v2, :cond_43

    .line 273
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_27

    :try_start_18
    const-string v0, "\n"

    const-string v1, ", "

    .line 274
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;->mSensorInfo:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_24

    move-object v1, v3

    goto :goto_43

    :catch_24
    move-exception p0

    move-object v1, v3

    goto :goto_28

    :catch_27
    move-exception p0

    .line 277
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFingerprint30"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    :goto_43
    return-object v1
.end method
