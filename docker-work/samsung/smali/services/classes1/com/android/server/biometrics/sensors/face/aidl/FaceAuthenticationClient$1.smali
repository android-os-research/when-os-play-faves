.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;
.super Landroid/content/BroadcastReceiver;
.source "FaceAuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->showBackgroundAuthenticationNotificationIfNeeded()V
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

    .line 477
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 480
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 481
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, "authenticator"

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_46

    .line 483
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    if-eqz p1, :cond_46

    const-string p1, "FaceAuthenticationClient"

    const-string p2, "Cancel authentication by Notification action"

    .line 484
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V

    :cond_46
    return-void
.end method
