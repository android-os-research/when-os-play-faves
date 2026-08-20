.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;
.super Ljava/lang/Object;
.source "FaceAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    const-string p1, "FaceAuthenticationClient"

    const-string/jumbo p2, "mSemCancelDaemonCallback.onClientFinished"

    .line 517
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$mdismissNotification(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    .line 519
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 520
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V

    :cond_23
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2

    return-void
.end method
