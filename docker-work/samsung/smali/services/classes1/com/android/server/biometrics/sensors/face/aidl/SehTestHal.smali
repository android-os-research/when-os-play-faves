.class public Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;
.super Landroid/hardware/biometrics/face/IFace$Stub;
.source "SehTestHal.java"


# static fields
.field public static final DEVICE_ID:I = 0x0

.field public static final MSG_NEXT_ACTION:I = 0x64

.field public static final TAG:Ljava/lang/String; = "face.aidl.SehTestHal"

.field public static mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;


# instance fields
.field public currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

.field public currentActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;",
            ">;"
        }
    .end annotation
.end field

.field public currentActionListPos:I

.field public isEnrollSessionOpen:Z

.field public mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

.field public final mContext:Landroid/content/Context;

.field public mFaceId:I

.field public mGlassesOn:Z

.field public mH:Landroid/os/Handler;

.field public final mSensorId:I

.field public mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

.field public mThread:Lcom/android/server/ServiceThread;

.field public mUserId:I


# direct methods
.method public static synthetic $r8$lambda$6bdP-Bfut1u8FhaHNpzXpTGCqpo(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->initActions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->isEnrollSessionOpen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mFaceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSensorId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->isEnrollSessionOpen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mFaceId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGlassesOn(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mGlassesOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoAction(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->doAction()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 89
    invoke-direct {p0}, Landroid/hardware/biometrics/face/IFace$Stub;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mGlassesOn:Z

    .line 90
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 91
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSensorId:I

    .line 93
    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "face.aidl.SehTestHal"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 95
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Landroid/os/Handler;

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->InitTPA(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;
    .registers 4

    const-class v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    if-nez v1, :cond_e

    .line 84
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 86
    :cond_e
    sget-object p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final InitTPA(I)V
    .registers 5

    .line 359
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V

    .line 411
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 412
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_32

    .line 415
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "constructed, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "face.aidl.SehTestHal"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method public createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
    .registers 6

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "face.aidl.SehTestHal"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 133
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    invoke-direct {p1, p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V

    return-object p1
.end method

.method public final doAction()V
    .registers 5

    .line 421
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    if-nez v0, :cond_c

    const-string p0, "face.aidl.SehTestHal"

    const-string v0, "doAction : currentAction is null"

    .line 422
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 428
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 429
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 430
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getVendorCode()I

    move-result v0

    const/16 v1, 0x3f8

    if-ne v0, v1, :cond_31

    .line 431
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mGlassesOn:Z

    goto :goto_59

    .line 432
    :cond_31
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mGlassesOn:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 433
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 434
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_59

    .line 435
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    return-void

    .line 439
    :cond_59
    :goto_59
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7e

    .line 440
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 441
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7e
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "74b0b7cb149ee205b12cd2254d216725c6e5429c"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;
    .registers 2

    const-string p0, "face.aidl.SehTestHal"

    const-string/jumbo v0, "getSensorProps"

    .line 124
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/face/SensorProps;

    return-object p0
.end method

.method public final initActions()V
    .registers 1

    .line 353
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    if-eqz p0, :cond_7

    .line 354
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    :cond_7
    return-void
.end method

.method public postUpdateAction()V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
