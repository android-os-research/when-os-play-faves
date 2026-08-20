.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;
.super Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.source "TestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;->createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;

.field public final synthetic val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    const-string p1, "fingerprint.aidl.TestHal"

    const-string p2, "authenticate"

    .line 101
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$2;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;)V

    return-object p1
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

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

    const-string v0, "fingerprint.aidl.TestHal"

    const-string v1, "close"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    const-string v0, "fingerprint.aidl.TestHal"

    const-string v1, "detectInteraction"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;)V

    return-object v0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    const-string p1, "fingerprint.aidl.TestHal"

    const-string v0, "enroll"

    .line 82
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;)V

    return-object p1
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

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

    const-string v0, "fingerprint.aidl.TestHal"

    const-string v1, "enumerateEnrollments"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public generateChallenge()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.TestHal"

    const-string v1, "generateChallenge"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeGenerated(J)V

    return-void
.end method

.method public getAuthenticatorId()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.TestHal"

    const-string v1, "getAuthenticatorId"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "invalidateAuthenticatorId"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 2

    const-string p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "onContextChanged"

    .line 218
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPointerDown(IIIFF)V
    .registers 6

    const-string p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "onPointerDown"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 8

    .line 207
    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    float-to-int v2, v0

    iget v0, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    float-to-int v3, v0

    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->onPointerDown(IIIFF)V

    return-void
.end method

.method public onPointerUp(I)V
    .registers 2

    const-string p0, "fingerprint.aidl.TestHal"

    const-string/jumbo p1, "onPointerUp"

    .line 180
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .registers 2

    .line 213
    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->onPointerUp(I)V

    return-void
.end method

.method public onUiReady()V
    .registers 2

    const-string p0, "fingerprint.aidl.TestHal"

    const-string/jumbo v0, "onUiReady"

    .line 185
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeEnrollments([I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "fingerprint.aidl.TestHal"

    const-string/jumbo v1, "removeEnrollments"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

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

    const-string p1, "fingerprint.aidl.TestHal"

    const-string/jumbo v0, "resetLockout"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutCleared()V

    return-void
.end method

.method public revokeChallenge(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerprint.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeRevoked(J)V

    return-void
.end method
