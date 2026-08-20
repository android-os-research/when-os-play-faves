.class public Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "TestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/TestHal;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

.field public final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    const-string p1, "face.aidl.TestHal"

    const-string p2, "authenticate"

    .line 108
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$2;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object p1
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

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

    const-string v0, "face.aidl.TestHal"

    const-string v1, "close"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    const-string v0, "face.aidl.TestHal"

    const-string v1, "detectInteraction"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object v0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 2

    .line 208
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5

    const-string p1, "face.aidl.TestHal"

    const-string p2, "enroll"

    .line 89
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object p1
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6

    .line 203
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

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

    const-string v0, "face.aidl.TestHal"

    const-string v1, "enumerateEnrollments"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

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

    const-string v0, "face.aidl.TestHal"

    const-string v1, "generateChallenge"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

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

    const-string v0, "face.aidl.TestHal"

    const-string v1, "getAuthenticatorId"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    return-void
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

    const-string v0, "face.aidl.TestHal"

    const-string v1, "getFeatures"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

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

    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2

    const-string p0, "face.aidl.TestHal"

    const-string/jumbo p1, "onContextChanged"

    .line 213
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

    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "removeEnrollments"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

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

    const-string p1, "face.aidl.TestHal"

    const-string/jumbo v0, "resetLockout"

    .line 183
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

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

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

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

    const-string p1, "face.aidl.TestHal"

    const-string/jumbo p3, "setFeature"

    .line 165
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    return-void
.end method
