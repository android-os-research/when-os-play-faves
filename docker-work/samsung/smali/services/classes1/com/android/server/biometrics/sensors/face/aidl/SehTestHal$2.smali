.class public Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "SehTestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

.field public final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6

    const-string p1, "face.aidl.SehTestHal"

    const-string p2, "authenticate"

    .line 221
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->isEnrolledFace()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_31

    .line 225
    :try_start_e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    const/16 p2, 0x8

    invoke-interface {p0, p2, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_2f

    :catch_1a
    move-exception p0

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enroll no enrolled : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    const/4 p0, 0x0

    return-object p0

    .line 231
    :cond_31
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getAuthActionList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 232
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iput v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    .line 233
    iget-object v1, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object v0, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 234
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start authenticate: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", action size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$2;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;)V

    return-object p1
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

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

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "close"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "detectInteraction"

    .line 255
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;)V

    return-object v0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7

    const-string p1, "face.aidl.SehTestHal"

    const-string p2, "enroll"

    .line 188
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Z

    move-result p2

    if-eqz p2, :cond_79

    .line 190
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->getEmptyFaceIdForEnroll()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;I)V

    .line 191
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getEnrollActionList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 192
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    const/4 p3, 0x0

    iput p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    .line 193
    invoke-static {p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputmGlassesOn(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V

    .line 194
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget p4, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object p3, p2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 196
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/os/Handler;

    move-result-object p2

    const/16 p3, 0x64

    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object p4, p4, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-virtual {p4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "start enroll: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", action size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object p3, p3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :cond_79
    const-string p2, "enroll : generateChallenge not done"

    .line 200
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_7e
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;)V

    return-object p1
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6

    .line 331
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

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

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "enumerateEnrollments"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public generateChallenge()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "generateChallenge"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V

    .line 148
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    return-void
.end method

.method public getAuthenticatorId()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "getAuthenticatorId"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public final getEmptyFaceIdForEnroll()I
    .registers 6

    .line 169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_1e
    if-nez v2, :cond_3c

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 175
    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v4

    if-ne v3, v4, :cond_24

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_1e

    :cond_3a
    move v2, v1

    goto :goto_1e

    :cond_3c
    return v3
.end method

.method public getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .registers 2

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    return-object p0
.end method

.method public getFeatures()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "getFeatures"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

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

.method public invalidateAuthenticatorId()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.aidl.SehTestHal"

    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public final isEnrolledFace()Z
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_24

    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2

    const-string p0, "face.aidl.SehTestHal"

    const-string/jumbo p1, "onContextChanged"

    .line 341
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeEnrollments([I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "face.aidl.SehTestHal"

    const-string/jumbo v1, "removeEnrollments"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "face.aidl.SehTestHal"

    const-string/jumbo v0, "resetLockout"

    .line 311
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    return-void
.end method

.method public revokeChallenge(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face.aidl.SehTestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V

    .line 155
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    return-void
.end method

.method public setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "face.aidl.SehTestHal"

    const-string/jumbo p3, "setFeature"

    .line 293
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    return-void
.end method
