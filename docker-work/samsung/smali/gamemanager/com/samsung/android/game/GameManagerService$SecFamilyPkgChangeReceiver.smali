.class Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecFamilyPkgChangeReceiver"
.end annotation


# static fields
.field private static final MSG_PREFIX:Ljava/lang/String; = "SecFamilyPkgChangeReceiver, "


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .registers 10

    .line 1197
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1198
    const-string v0, "com.samsung.android.game."

    .line 1199
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1200
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1202
    const-string v2, "com.samsung.android.game."

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 1204
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->mCallbackHandler:Landroid/os/Handler;

    .line 1205
    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1206
    const-string p1, "GameManager"

    const-string v2, "SecFamilyPkgChangeReceiver, : ctor"

    invoke-static {p1, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1210
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1211
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    .line 1212
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 1213
    :cond_b
    const/4 v1, 0x0

    .line 1211
    :goto_c
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1220
    return-void

    .line 1223
    :cond_d
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_14

    .line 1225
    return-void

    .line 1228
    :cond_14
    const-string v2, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GameManager"

    if-eqz v2, :cond_5f

    .line 1229
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v4, "PKG_GAMELAUNCHER changed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecFamilyPkgChangeReceiver, com.samsung.android.game.gamehome is changed. enabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z
    invoke-static {v4}, Lcom/samsung/android/game/GameManagerService;->access$800(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$800(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 1232
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "pref_setting_gamelauncher_need_fresh_start"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1233
    const-string v2, "SecFamilyPkgChangeReceiver, set URI_GAMELAUNCHER_PREF to 1"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 1235
    :cond_5f
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1236
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v4, "PKG_GOS changed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecFamilyPkgChangeReceiver, com.samsung.android.game.gos is changed. enabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z
    invoke-static {v4}, Lcom/samsung/android/game/GameManagerService;->access$300(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$300(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    if-nez v2, :cond_a8

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # invokes: Lcom/samsung/android/game/GameManagerService;->isMlPidModel()Z
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$1000(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1241
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$1100(Lcom/samsung/android/game/GameManagerService;)I

    move-result v4

    # invokes: Lcom/samsung/android/game/GameManagerService;->deleteAllGamePolicies(I)V
    invoke-static {v2, v4}, Lcom/samsung/android/game/GameManagerService;->access$1200(Lcom/samsung/android/game/GameManagerService;I)V

    .line 1242
    const-string v2, "SecFamilyPkgChangeReceiver,  the user\'s data was reset by disabling GOS"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_a8
    :goto_a8
    return-void
.end method
