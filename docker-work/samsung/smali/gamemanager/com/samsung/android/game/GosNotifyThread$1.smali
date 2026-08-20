.class Lcom/samsung/android/game/GosNotifyThread$1;
.super Landroid/database/ContentObserver;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GosNotifyThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GosNotifyThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/game/GosNotifyThread;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private sendVrrSettingChangedToGos()V
    .registers 5

    .line 67
    const-string v0, "GosNotifyThread"

    const-string v1, "mVrrSecureSettingObserver before send intent to GameIntentService"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "type"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    :try_start_1a
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # getter for: Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/game/GosNotifyThread;->access$000(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 73
    const-string v2, "mVrrSecureSettingObserver after send intent to GameIntentService"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_2a} :catch_2b

    .line 77
    goto :goto_34

    .line 74
    :catch_2b
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "mVrrSecureSettingObserver failed to send intent to GameIntentService"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 78
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_34
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .line 57
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # getter for: Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->access$000(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "refresh_rate_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, "refreshRateMode":I
    iget-object v1, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # getter for: Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/game/GosNotifyThread;->access$000(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "game_display_hz_48"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, "allowed48ByUser":I
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread$1;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # getter for: Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/game/GosNotifyThread;->access$000(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "game_refresh_rate_max_hz"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 60
    .local v3, "refreshRateMaxHzByUser":I
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 60
    const-string v2, "mVrrSecureSettingObserver onChange: %s, refresh_rate_mode: %s, game_display_hz_48: %s, game_refresh_rate_max_hz: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "GosNotifyThread"

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread$1;->sendVrrSettingChangedToGos()V

    .line 64
    return-void
.end method
