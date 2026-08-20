.class Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService$DisplayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayNotifyRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;)V
    .registers 2

    .line 1146
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;Lcom/samsung/android/game/GameManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/game/GameManagerService$DisplayListener;
    .param p2, "x1"    # Lcom/samsung/android/game/GameManagerService$1;

    .line 1146
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;-><init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;)V

    return-void
.end method

.method private sendResolutionChangedToGameLauncher()V
    .registers 5

    .line 1173
    const-string v0, "GameManager"

    const-string v1, "before send intent to GameLauncher"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gamehome.GAME_PACKAGE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v1, "gameLauncherIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gamehome"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string v2, "type"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1178
    :try_start_19
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    iget-object v2, v2, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1179
    const-string v2, "after send intent to GameLauncher"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_2b} :catch_2c

    .line 1183
    goto :goto_35

    .line 1180
    :catch_2c
    move-exception v2

    .line 1181
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "failed to send intent to GameLauncher"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1184
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_35
    return-void
.end method

.method private sendResolutionChangedToGos()V
    .registers 5

    .line 1159
    const-string v0, "GameManager"

    const-string v1, "before send intent to GameIntentService"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const-string v2, "type"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    :try_start_19
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    iget-object v2, v2, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1165
    const-string v2, "after send intent to GameIntentService"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_2b} :catch_2c

    .line 1169
    goto :goto_35

    .line 1166
    :catch_2c
    move-exception v2

    .line 1167
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "failed to send intent to GameIntentService"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1170
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_35
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1149
    const-string v0, "GameManager"

    const-string v1, "DisplayNotifyRunnable()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->sendResolutionChangedToGos()V

    .line 1153
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->this$1:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    iget-object v0, v0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$800(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1154
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;->sendResolutionChangedToGameLauncher()V

    .line 1156
    :cond_17
    return-void
.end method
