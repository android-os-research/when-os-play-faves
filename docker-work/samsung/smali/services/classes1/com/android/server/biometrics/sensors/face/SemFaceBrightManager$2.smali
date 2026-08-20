.class public Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SemFaceBrightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->registerBroadcastForNotificationAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    const/4 p1, -0x2

    const-string/jumbo v0, "user"

    .line 310
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "screen_flash_notification_action"

    .line 311
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 312
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFaceBrightManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    return-void

    :cond_45
    const-string v0, "close"

    .line 318
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 319
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$mcancelNotification(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V

    goto :goto_61

    :cond_53
    const-string/jumbo v0, "settings"

    .line 320
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 321
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$mhandleGoToSettingAction(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V

    :cond_61
    :goto_61
    return-void
.end method
