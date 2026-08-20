.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFpProtectiveFilmGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->registerBroadcastForNotificationAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_63

    const/4 p1, -0x2

    const-string/jumbo v0, "user"

    .line 233
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "protective_film_notification_action"

    .line 234
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 235
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_40

    .line 236
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    return-void

    :cond_47
    const-string v0, "close"

    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 242
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->-$$Nest$mcancelNotification(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;I)V

    goto :goto_63

    :cond_55
    const-string/jumbo v0, "settings"

    .line 243
    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 244
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->-$$Nest$mhandleGoToSettingAction(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;I)V

    :cond_63
    :goto_63
    return-void
.end method
