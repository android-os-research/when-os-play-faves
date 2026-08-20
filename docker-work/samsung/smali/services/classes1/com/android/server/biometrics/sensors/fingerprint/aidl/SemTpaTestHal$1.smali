.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;
.super Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.source "SemTpaTestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$3P85IUH2poeLUw0Rs3ZrqLGVMVw(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$enroll$3(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H3DOr-olaG8PxMSDdPNs99Haz-U(Landroid/hardware/biometrics/fingerprint/ISessionCallback;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$revokeChallenge$1(Landroid/hardware/biometrics/fingerprint/ISessionCallback;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rk9KiYnUvuFeNHFNi9h67y-zWSQ(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$authenticate$6(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eisR3VIEWOVERuV_aSOHMonUvl4(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$enroll$2(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ficVdoF6Q7jBYV4cl-ZFDvapTSk(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$authenticate$5(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kQd8VAIm388vP6c7ATi6cNBdL1o(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/CancellationSignal;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$enroll$4(Landroid/os/CancellationSignal;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mgIfGLAMJF4WVPRyfw1GSvzSmDY(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$detectInteraction$9(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qUSzaGd3vJYJRbfNwS2M5NnWqLc(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$detectInteraction$8(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXwNFCIlN3Sv-R-wSNxyb9qvR6c(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;JLandroid/os/CancellationSignal;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$authenticate$7(JLandroid/os/CancellationSignal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wmff_ii0bafSUQUJTPc5v4OH0Gk(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$generateChallenge$0(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y0r6MAtTw8JYmWW9UCRe53GuZ-k(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->lambda$detectInteraction$10(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V
    .registers 5

    .line 156
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$authenticate$5(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 255
    :try_start_2
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 257
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method private synthetic lambda$authenticate$6(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 248
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 250
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 251
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 253
    :cond_22
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda10;

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda10;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$authenticate$7(JLandroid/os/CancellationSignal;)V
    .registers 9

    .line 262
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 263
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    const/16 p1, 0x8

    const/16 p2, 0x3ec

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->deliverErrorEvent(II)V

    return-void

    .line 267
    :cond_14
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getAuthActionList()Ljava/util/List;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start authenticateTPA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", action size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fingerprint.aidl.SemTpaTestHal"

    .line 268
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_45
    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 271
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_aa

    .line 274
    :cond_58
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fputmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Ljava/util/concurrent/CountDownLatch;)V

    .line 276
    :try_start_63
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 280
    :goto_77
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 281
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_45

    .line 282
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v0, v1, :cond_45

    .line 283
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_45

    .line 284
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fputmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Ljava/util/concurrent/CountDownLatch;)V

    .line 287
    :try_start_97
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p2

    const-wide/16 v0, 0x2710

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_a4
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_a4} :catch_a5

    goto :goto_45

    :catch_a5
    move-exception p2

    .line 289
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_45

    :cond_aa
    :goto_aa
    return-void
.end method

.method private synthetic lambda$detectInteraction$10(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 313
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    const/16 p1, 0xb

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->deliverErrorEvent(II)V

    return-void

    .line 318
    :cond_13
    :try_start_13
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onInteractionDetected()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public static synthetic lambda$detectInteraction$8(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 305
    :try_start_2
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 307
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public static synthetic lambda$detectInteraction$9(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    .line 303
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$enroll$2(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 205
    :try_start_2
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method private synthetic lambda$enroll$3(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 200
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 201
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmTspDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    :cond_22
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$enroll$4(Landroid/os/CancellationSignal;I)V
    .registers 10

    .line 212
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 213
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 214
    :goto_9
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 215
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    goto :goto_9

    .line 217
    :cond_1c
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fputmCurrentEnrollmentId(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;I)V

    .line 218
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getEnrollActionList()Ljava/util/List;

    move-result-object v1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start enrollTPA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmCurrentEnrollmentId(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", action size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fingerprint.aidl.SemTpaTestHal"

    .line 219
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 222
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_6b

    goto :goto_b6

    .line 225
    :cond_6b
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fputmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Ljava/util/concurrent/CountDownLatch;)V

    .line 227
    :try_start_76
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmActionDelayLatch(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception v3

    .line 229
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 231
    :goto_8a
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 232
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->isFinishEnroll()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 233
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object v3, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmCurrentEnrollmentId(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fputmCurrentEnrollmentId(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;I)V

    .line 235
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmAuthenticatorID(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseLongArray;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-virtual {v2, p2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_58

    :cond_b6
    :goto_b6
    return-void
.end method

.method private synthetic lambda$generateChallenge$0(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 4

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmChallenge(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeGenerated(J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 175
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public static synthetic lambda$revokeChallenge$1(Landroid/hardware/biometrics/fingerprint/ISessionCallback;J)V
    .registers 3

    .line 185
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeRevoked(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 187
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_8
    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerprint.aidl.SemTpaTestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;JLandroid/os/CancellationSignal;)V

    const-wide/16 p1, 0x258

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$mcreateICancellationSignal(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/CancellationSignal;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4

    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    const-string v1, "close"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    const-string v1, "detectInteraction"

    .line 300
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$mcreateICancellationSignal(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/CancellationSignal;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 2

    .line 398
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enroll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/Handler;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    invoke-virtual {p1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/os/CancellationSignal;I)V

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$mcreateICancellationSignal(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/CancellationSignal;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enumerateEnrollments()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enumerateEnrollments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerprint.aidl.SemTpaTestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>()V

    .line 330
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 329
    invoke-interface {v0, p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public generateChallenge()V
    .registers 4

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    const-string v1, "generateChallenge"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fputmChallenge(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;J)V

    .line 171
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAuthenticatorId()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    const-string v1, "getAuthenticatorId"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmAuthenticatorID(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseLongArray;

    move-result-object v1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    const-wide/16 v2, 0x0

    .line 346
    invoke-virtual {v1, p0, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 345
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "c2f3b863b6dff925bc4451473ee6caa1aa304b8f"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public invalidateAuthenticatorId()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmAuthenticatorID(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseLongArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 353
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmAuthenticatorID(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseLongArray;

    move-result-object v1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$userId:I

    const-wide/16 v2, 0x0

    .line 354
    invoke-virtual {v1, p0, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 353
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2

    const-string p0, "fingerprint.aidl.SemTpaTestHal"

    const-string/jumbo p1, "onContextChanged"

    .line 414
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPointerDown(IIIFF)V
    .registers 6

    const-string p0, "fingerprint.aidl.SemTpaTestHal"

    const-string/jumbo p1, "onPointerDown"

    .line 371
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 8

    .line 403
    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    float-to-int v2, v0

    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    float-to-int v3, v0

    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->onPointerDown(IIIFF)V

    return-void
.end method

.method public onPointerUp(I)V
    .registers 2

    const-string p0, "fingerprint.aidl.SemTpaTestHal"

    const-string/jumbo p1, "onPointerUp"

    .line 376
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 2

    .line 409
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->onPointerUp(I)V

    return-void
.end method

.method public onUiReady()V
    .registers 2

    const-string p0, "fingerprint.aidl.SemTpaTestHal"

    const-string/jumbo v0, "onUiReady"

    .line 381
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeEnrollments([I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.SemTpaTestHal"

    const-string/jumbo v1, "removeEnrollments"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    aget v2, p1, v1

    .line 337
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mEnrolledIds:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 339
    :cond_1c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "fingerprint.aidl.SemTpaTestHal"

    const-string/jumbo v0, "resetLockout"

    .line 359
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutCleared()V

    return-void
.end method

.method public revokeChallenge(J)V
    .registers 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerprint.aidl.SemTpaTestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->val$sessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
