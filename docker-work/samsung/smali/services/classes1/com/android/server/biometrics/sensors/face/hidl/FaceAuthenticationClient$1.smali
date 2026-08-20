.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;
.super Landroid/content/BroadcastReceiver;
.source "FaceAuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->showBackgroundAuthenticationNotificationIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    .line 379
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const/4 p1, 0x0

    const-string v0, "authenticator"

    .line 380
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4d

    .line 381
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)Landroid/os/CancellationSignal;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)Landroid/os/CancellationSignal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_4d

    const-string p1, "FaceAuthenticationClient"

    const-string p2, "Cancel authentication by Notification action"

    .line 382
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)Landroid/os/CancellationSignal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_4d
    return-void
.end method
