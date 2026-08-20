.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
.super Ljava/lang/Object;
.source "FaceProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/face/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;
    }
.end annotation


# static fields
.field public static final ENROLL_TIMEOUT_SEC:I = 0x4b


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mContext:Landroid/content/Context;

.field public mDaemon:Landroid/hardware/biometrics/face/IFace;

.field public final mHalInstanceName:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mSensors:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/face/aidl/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskStackListener:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;

.field public mTestHalEnabled:Z

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method public static synthetic $r8$lambda$-dmI0V-rgwF806ReZbZHpe7cR60()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$semResumeAuth$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$-eylz1OjHV6m7gYJu81jWukLVvU(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[IILjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleRemoveSpecifiedIds$11(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$206G5-EQ7Up49DiIxGlkwk1lhik(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$cancelEnrollment$6(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$23wDSzH2FaxXzffkVZxDZdRcD44()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$semSessionClose$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$2MOVovaOUZMGCrfMHKaGbsez_3w()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$semSessionOpen$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$8-IOJhYBl7vZ-X9Y2IsUHX4sZhQ()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$semPauseEnroll$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$8murs8JiDfCQvX3kxIONQSmcJUk(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$cancelFaceDetect$8(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$A_X_ehoil194FzSOQiAK9c2pECI()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$semResumeEnroll$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$BHgpE8h9cCqnUGlCFFfYwG9_5N4(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;I[BLjava/lang/String;J[ILandroid/view/Surface;Z)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleEnroll$5(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;I[BLjava/lang/String;J[ILandroid/view/Surface;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bj-r0Bmcl4JJpELORKph8Ni7qKM(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$cancelAuthentication$10(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$DrTEbLsdPU_kVK1q6lBCZwoHERQ(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleRevokeChallenge$4(ILandroid/os/IBinder;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$GqCHKkGwrwAGoNVsy2h1jueaeW8(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleInternalCleanup$16(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JW9lZ5nyboc0NcaJQGQKR3rkI5k(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleGetFeature$14(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O7nkr8EIrpUsSyzIhMIlkDNcKMA(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleGenerateChallenge$3(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SA9CJy00QUcljW_dkwH04fhTdH4(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$startPreparedClient$15(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$WmBR0uQAIFY6RkY6Zxz6cKp4dp4(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleFaceDetect$7(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvcNbwuLBZ3qI2h_fwT_Lfkq8oQ(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ZILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V
    .registers 15

    invoke-direct/range {p0 .. p14}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleAuthenticate$9(ZILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$XMpg4Gzta1Lw0EAFhmxV_QLXstA(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IZ[B)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleSetFeature$13(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IZ[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y659s5yd8k3yAg8ERDjbu1OVo8U(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$onBootPhase$18(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$atQoWRAd5vCKPCe5uTTNp8xva0Q(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleInvalidateAuthenticatorId$2(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gg1nFa2GwefiYD_FG1ZYKap9pzA(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$binderDied$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$ncR4O-TyOSaSOce1Q2GUogGMlrE(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleLoadAuthenticatorIdsForUser$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptJ7KSXnU7dzTOhjNgqRxm-AK5k(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleResetLockout$12(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$sSlm2xIv1hW2zM8OSZ-Vg_o-WIc()V
    .registers 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$semPauseAuth$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$tNS_GAG9a02_oMU_M-U6Ga4n4iY(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleInvalidationRequest$1(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTag(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleLoadAuthenticatorIdsForUser(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 146
    iput-object v9, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    .line 147
    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/face/UsageStats;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v11, p4

    .line 155
    iput-object v11, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 156
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 157
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener-IA;)V

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;

    move-object/from16 v0, p5

    .line 158
    iput-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 160
    array-length v12, v10

    const/4 v0, 0x0

    move v13, v0

    :goto_4e
    if-ge v13, v12, :cond_d1

    aget-object v0, v10, v13

    .line 161
    iget-object v1, v0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v14, v1, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 163
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v7, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-object v1, v0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v2, v1, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    iget-byte v3, v1, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    iget v1, v1, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    iget-byte v4, v0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    iget-boolean v5, v0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    iget-boolean v0, v0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    const/16 v23, 0x0

    move-object v15, v7

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v1

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v0

    invoke-direct/range {v15 .. v23}, Landroid/hardware/face/FaceSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZZ)V

    .line 179
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    iget-object v6, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v15

    move-object/from16 v2, p0

    move-object v5, v7

    move-object/from16 v16, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 182
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {v9, v14, v15, v8}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->createInstance(Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, p2

    goto/16 :goto_4e

    :cond_d1
    return-void
.end method

.method private synthetic lambda$binderDied$17()V
    .registers 4

    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    const/4 v0, 0x0

    .line 699
    :goto_4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 700
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 701
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 702
    invoke-static {v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    .line 703
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->onBinderDied()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_27
    return-void
.end method

.method private synthetic lambda$cancelAuthentication$10(ILandroid/os/IBinder;J)V
    .registers 5

    .line 502
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    .line 503
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$cancelEnrollment$6(ILandroid/os/IBinder;J)V
    .registers 5

    .line 436
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$cancelFaceDetect$8(ILandroid/os/IBinder;J)V
    .registers 5

    .line 460
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    .line 461
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic lambda$onBootPhase$18(I)V
    .registers 2

    .line 716
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onBootPhase(I)V

    return-void
.end method

.method private synthetic lambda$scheduleAuthenticate$9(ZILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V
    .registers 39

    move-object/from16 v0, p0

    move/from16 v14, p2

    move/from16 v15, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v22, p14

    .line 471
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->hasPrivilegedAttr(Landroid/os/Bundle;I)Z

    move-result v1

    or-int v21, p1, v1

    .line 473
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v18

    .line 474
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    move-object v1, v3

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    move-object/from16 p1, v3

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 475
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    move-object/from16 v23, p1

    move-object/from16 p1, v1

    const/4 v1, 0x2

    move-object/from16 p3, v2

    move/from16 v2, p13

    .line 478
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 480
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v20

    const/4 v1, 0x0

    move v2, v14

    move v14, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v22}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZ)V

    move/from16 v1, p2

    move-object/from16 v2, v23

    .line 482
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleEnroll$5(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;I[BLjava/lang/String;J[ILandroid/view/Surface;Z)V
    .registers 33

    move-object/from16 v0, p0

    move/from16 v13, p1

    move/from16 v15, p1

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v12, p9

    move-object/from16 v14, p10

    move/from16 v19, p11

    .line 403
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 404
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v1

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    move/from16 v18, v1

    .line 405
    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    move-object v1, v11

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 406
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 p2, v5

    move-object/from16 v13, p2

    move-object/from16 p5, v11

    move-object/from16 v11, p3

    invoke-direct {v13, v11}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 408
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v11

    move-object/from16 v13, p5

    const/4 v13, 0x1

    move-object/from16 p2, v1

    const/4 v1, 0x0

    .line 410
    invoke-virtual {v0, v13, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    const/16 v13, 0x4b

    move/from16 v1, p1

    move-object/from16 v20, p5

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v19}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ)V

    .line 413
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;

    move/from16 v2, p1

    move/from16 v3, p4

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleFaceDetect$7(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v14, p1

    .line 446
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v13

    .line 447
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 448
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    const/4 v1, 0x2

    move/from16 v4, p8

    .line 450
    invoke-virtual {v0, v1, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v15

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 452
    invoke-virtual {v0, v14, v15}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleGenerateChallenge$3(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 19

    move-object v0, p0

    move v11, p1

    .line 373
    new-instance v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 374
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v12

    move-object v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 379
    invoke-virtual {p0, p1, v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleGetFeature$14(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 16

    .line 581
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 582
    invoke-virtual {v0, v1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 583
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 584
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring getFeature, no templates enrolled for user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 587
    :cond_29
    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 588
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 589
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v10

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 591
    invoke-virtual {p0, p1, v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleInternalCleanup$16(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 16

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v8

    .line 607
    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalCleanupClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 609
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 611
    invoke-virtual {p0, v0, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 614
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 615
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v10

    move-object v0, v11

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 616
    invoke-virtual {p0, p1, v11, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleInvalidateAuthenticatorId$2(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 14

    .line 344
    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 345
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 349
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v7

    move-object v0, v9

    move v3, p2

    move v4, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;Landroid/hardware/biometrics/IInvalidationCallback;)V

    .line 350
    invoke-virtual {p0, p1, v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleInvalidationRequest$1(II)V
    .registers 11

    .line 304
    new-instance v7, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 306
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 308
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v6

    move-object v0, v7

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;-><init>(Landroid/content/Context;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;)V

    .line 309
    invoke-virtual {p0, p2, v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleLoadAuthenticatorIdsForUser$0(II)V
    .registers 13

    .line 290
    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 291
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 296
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v8

    move-object v0, v9

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 298
    invoke-virtual {p0, p1, v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleRemoveSpecifiedIds$11(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[IILjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v14, p1

    .line 529
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 530
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 532
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 533
    invoke-virtual {v0, v1, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 536
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v13

    move-object v1, v15

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 537
    invoke-virtual {v0, v14, v15}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleResetLockout$12(II[B)V
    .registers 16

    .line 544
    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 545
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 546
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 550
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-object v0, v11

    move v3, p2

    move v5, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[BLcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    .line 552
    invoke-virtual {p0, p1, v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleRevokeChallenge$4(ILandroid/os/IBinder;ILjava/lang/String;J)V
    .registers 21

    move-object v0, p0

    move v12, p1

    .line 387
    new-instance v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 388
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move v7, p1

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V

    .line 392
    invoke-virtual {p0, p1, v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleSetFeature$13(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IZ[B)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v14, p1

    move/from16 v6, p2

    .line 561
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 562
    invoke-virtual {v1, v2, v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 563
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring setFeature, no templates enrolled for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 567
    :cond_2f
    new-instance v15, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    .line 568
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p4

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 570
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 571
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v15

    move-object/from16 v4, p3

    move/from16 v6, p2

    move/from16 v8, p1

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[B)V

    .line 573
    invoke-virtual {v0, v14, v15}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic lambda$semPauseAuth$21()V
    .registers 1

    .line 737
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonPauseAuth()V

    return-void
.end method

.method public static synthetic lambda$semPauseEnroll$19()V
    .registers 1

    .line 722
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonPauseEnroll()V

    return-void
.end method

.method public static synthetic lambda$semResumeAuth$22()V
    .registers 1

    .line 744
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonResumeAuth()V

    return-void
.end method

.method public static synthetic lambda$semResumeEnroll$20()V
    .registers 3

    .line 729
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mEnrollStartTime:J

    .line 730
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonResumeEnroll()V

    return-void
.end method

.method public static synthetic lambda$semSessionClose$24()V
    .registers 1

    .line 765
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonSessionClose()V

    return-void
.end method

.method public static synthetic lambda$semSessionOpen$23()V
    .registers 1

    .line 758
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonSessionOpen()V

    return-void
.end method

.method private synthetic lambda$startPreparedClient$15(II)V
    .registers 3

    .line 598
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 696
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 13

    .line 502
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 13

    .line 435
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda19;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelFaceDetect(ILandroid/os/IBinder;J)V
    .registers 13

    .line 460
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda17;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public containsSensor(I)Z
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 5

    .line 621
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 4

    .line 687
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 11

    .line 641
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 643
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string/jumbo v2, "service"

    .line 645
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 648
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 649
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 650
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 651
    invoke-virtual {v5, v6, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 652
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "id"

    .line 653
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "count"

    .line 654
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "accept"

    .line 655
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "reject"

    .line 656
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquire"

    .line 657
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "lockout"

    .line 658
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "permanentLockout"

    .line 659
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acceptCrypto"

    .line 662
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "rejectCrypto"

    .line 663
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquireCrypto"

    .line 664
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 665
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_26

    :cond_a9
    const-string/jumbo v3, "prints"

    .line 668
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_af} :catch_b0

    goto :goto_ba

    :catch_b0
    move-exception v2

    .line 670
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dump formatting failure"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    :goto_ba
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL deaths since last reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 676
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/UsageStats;->print(Ljava/io/PrintWriter;)V

    .line 679
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 3

    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 5

    .line 628
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 629
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    :cond_13
    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 5

    .line 361
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object p0

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

    .line 337
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getHalInstance()Landroid/hardware/biometrics/face/IFace;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isTpaSehTestHalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getSensorId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->getInstance(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_e2

    monitor-exit p0

    return-object v0

    .line 216
    :cond_1b
    :try_start_1b
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    if-eqz v0, :cond_26

    .line 217
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal;-><init>()V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_e2

    monitor-exit p0

    return-object v0

    .line 220
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    if-eqz v0, :cond_54

    .line 222
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 223
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isDaemonConnectionClosed()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 224
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAL connection closed, reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->semConnectSession(Landroid/hardware/biometrics/face/IFace;)V

    .line 227
    :cond_50
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;
    :try_end_52
    .catchall {:try_start_26 .. :try_end_52} :catchall_e2

    monitor-exit p0

    return-object v0

    .line 230
    :cond_54
    :try_start_54
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Daemon was null, reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/hardware/biometrics/face/IFace$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/IFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    const/4 v1, 0x0

    if-nez v0, :cond_91

    .line 237
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to get daemon"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_54 .. :try_end_8f} :catchall_e2

    .line 238
    monitor-exit p0

    return-object v1

    :cond_91
    const/4 v2, 0x0

    .line 242
    :try_start_92
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_99} :catch_9a
    .catchall {:try_start_92 .. :try_end_99} :catchall_e2

    goto :goto_a4

    :catch_9a
    move-exception v0

    .line 244
    :try_start_9b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to linkToDeath"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :goto_a4
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 249
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->semConnectSession(Landroid/hardware/biometrics/face/IFace;)V

    .line 250
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    if-eqz v0, :cond_c3

    .line 251
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;
    :try_end_c1
    .catchall {:try_start_9b .. :try_end_c1} :catchall_e2

    monitor-exit p0

    return-object v0

    .line 255
    :cond_c3
    :goto_c3
    :try_start_c3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_de

    .line 256
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIds(I)V

    .line 258
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    .line 262
    :cond_de
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;
    :try_end_e0
    .catchall {:try_start_c3 .. :try_end_e0} :catchall_e2

    monitor-exit p0

    return-object v0

    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLockoutModeForUser(II)I
    .registers 3

    .line 356
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/LockoutCache;->getLockoutModeForUser(I)I

    move-result p0

    return p0
.end method

.method public getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 2

    .line 331
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 322
    :goto_6
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 323
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasHalInstance()Z
    .registers 4

    .line 198
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isTpaSehTestHalEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 201
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    if-eqz v0, :cond_11

    return v1

    .line 204
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method public isHardwareDetected(I)Z
    .registers 2

    .line 366
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->hasHalInstance()Z

    move-result p0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 716
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZZ)J
    .registers 30

    move-object/from16 v0, p0

    .line 491
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

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

    .line 493
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V

    return-wide v15
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V
    .registers 33

    move-object/from16 v1, p0

    .line 469
    iget-object v15, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;

    move-object v0, v14

    move/from16 v2, p13

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p9

    move-object/from16 v7, p7

    move/from16 v8, p5

    move-wide/from16 v9, p3

    move/from16 v11, p11

    move-object/from16 v12, p8

    move/from16 v13, p6

    move-object/from16 v16, v14

    move/from16 v14, p12

    move-object/from16 v17, v15

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ZILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .registers 28

    move-object/from16 v1, p0

    .line 401
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v13

    .line 402
    iget-object v15, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;

    move-object v0, v12

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-wide v8, v13

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v16, v13

    move-object v13, v12

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;I[BLjava/lang/String;J[ILandroid/view/Surface;Z)V

    invoke-virtual {v15, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v16
.end method

.method public scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .registers 21

    move-object v1, p0

    .line 443
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    .line 445
    iget-object v12, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;

    move-object v0, v13

    move v2, p1

    move-object/from16 v3, p2

    move-wide v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v10
.end method

.method public final scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 270
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void

    .line 267
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to schedule client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 279
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 276
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to schedule client: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 15

    .line 372
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda20;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 13

    .line 580
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance p6, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    invoke-virtual {p4, p6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    .line 605
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/hardware/biometrics/IInvalidationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInvalidationRequest(II)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleLoadAuthenticatorIds(I)V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 284
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    goto :goto_e

    :cond_26
    return-void
.end method

.method public final scheduleLoadAuthenticatorIdsForUser(II)V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 15

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p3, v4, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 509
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleRemoveSpecifiedIds(ILandroid/os/IBinder;[IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 15

    .line 516
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 517
    invoke-virtual {v0, v1, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    const/4 v1, 0x0

    .line 519
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 523
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleRemoveSpecifiedIds(ILandroid/os/IBinder;[IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleRemoveSpecifiedIds(ILandroid/os/IBinder;[IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 17

    move-object v1, p0

    .line 528
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 6

    .line 543
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 17

    move-object v1, p0

    .line 386
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;

    move-object v0, v9

    move v2, p1

    move-object v3, p3

    move v4, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 20

    move-object v1, p0

    .line 560
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;

    move-object v0, v10

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object/from16 v5, p7

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IZ[B)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 2

    .line 786
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public semGetSecurityLevel(Z)I
    .registers 2

    .line 776
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getSecurityLevel(Z)I

    move-result p0

    return p0
.end method

.method public semIsFrameworkHandleLockout()Z
    .registers 1

    .line 781
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    const/4 p0, 0x1

    return p0
.end method

.method public semIsSessionClose()Z
    .registers 1

    .line 771
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonIsSessionClose()Z

    move-result p0

    return p0
.end method

.method public semPauseAuth()V
    .registers 2

    .line 736
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semPauseEnroll()V
    .registers 2

    .line 721
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semResetAuthenticationTimeout()Z
    .registers 2

    .line 750
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->isNeededSetBrightness()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    const/16 p0, 0x1388

    goto :goto_17

    .line 751
    :cond_12
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    const/16 p0, 0xfa0

    .line 752
    :goto_17
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->resetAuthenticationTimeout(I)Z

    move-result p0

    return p0
.end method

.method public semResumeAuth()V
    .registers 2

    .line 743
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semResumeEnroll()V
    .registers 2

    .line 728
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSessionClose()V
    .registers 2

    .line 764
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSessionOpen()V
    .registers 2

    .line 757
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSetTpaHalEnabled(Z)V
    .registers 4

    .line 798
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mTpaHalModeEnabled:Z

    if-eqz v0, :cond_17

    if-nez p1, :cond_17

    .line 799
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getSensorId()I

    move-result v0

    const/16 v1, 0x45

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 801
    :cond_17
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->setTpaHalEnabled(Z)V

    .line 803
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getSensorId()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 804
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getSensorId()I

    move-result p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public semShouldRemoveTemplate()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public semUpdateTpaAction()V
    .registers 1

    .line 810
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getHalInstance()Landroid/hardware/biometrics/face/IFace;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->postUpdateAction()V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 2

    .line 709
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    return-void
.end method

.method public startPreparedClient(II)V
    .registers 5

    .line 597
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
