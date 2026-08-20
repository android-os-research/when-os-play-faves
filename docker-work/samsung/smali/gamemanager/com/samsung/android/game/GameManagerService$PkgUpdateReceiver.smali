.class final Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PkgUpdateReceiver"
.end annotation


# static fields
.field private static final MSG_PREFIX:Ljava/lang/String; = "PkgUpdateReceiver, "


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .registers 10

    .line 1292
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1293
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1294
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1295
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1297
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1299
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 1300
    .local v7, "callbackHandler":Landroid/os/Handler;
    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1301
    const-string p1, "GameManager"

    const-string v1, "PkgUpdateReceiver, : ctor"

    invoke-static {p1, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method private isServiceRunning(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1800(Lcom/samsung/android/game/GameManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1431
    return v1

    .line 1434
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1800(Lcom/samsung/android/game/GameManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1435
    .local v2, "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    if-eqz p1, :cond_37

    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1436
    const/4 v0, 0x1

    return v0

    .line 1437
    .end local v2    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_37
    goto :goto_1b

    .line 1438
    :cond_38
    return v1
.end method

.method private removeFromDB(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v1

    # setter for: Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;
    invoke-static {v0, v1}, Lcom/samsung/android/game/GameManagerService;->access$1402(Lcom/samsung/android/game/GameManagerService;Lcom/samsung/android/game/PkgDataHelper;)Lcom/samsung/android/game/PkgDataHelper;

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1400(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v0

    .line 1365
    .local v0, "pkgData":Lcom/samsung/android/game/PkgData;
    if-eqz v0, :cond_3a

    .line 1366
    const-string v1, "GameManager"

    const-string v2, "PkgUpdateReceiver,  exists in the game list. removing."

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;
    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->access$1500(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/data/DatabaseHelper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/game/data/DatabaseHelper;->removeGame(Ljava/lang/String;I)V

    .line 1368
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;
    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->access$1400(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/game/PkgDataHelper;->removePkgData(Ljava/lang/String;I)V

    .line 1370
    :cond_3a
    return-void
.end method

.method private removeFromVrrGroup(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1376
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1600(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1600(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1600(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1700(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1700(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1380
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1700(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1382
    :cond_3c
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1385
    if-eqz p1, :cond_9b

    if-nez p2, :cond_6

    goto/16 :goto_9b

    .line 1388
    :cond_6
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1389
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PkgUpdateReceiver, onPackageAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userHandle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;
    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->access$1300(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v0}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PkgUpdateReceiver, com.samsung.android.game.gos is enabled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z
    invoke-static {v3}, Lcom/samsung/android/game/GameManagerService;->access$300(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const-string v1, "com.samsung.android.game.gamehome"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1403
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gamehome is installed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMELAUNCHER installed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_9a

    .line 1405
    :cond_71
    const-string v1, "com.samsung.android.game.gametools"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1406
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gametools is installed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMEBOOSTER installed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_9a

    .line 1408
    :cond_86
    const-string v1, "com.samsung.android.game.gos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1409
    const-string v1, "PkgUpdateReceiver, com.samsung.android.game.gos is installed"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GOS installed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1412
    :cond_9a
    :goto_9a
    return-void

    .line 1386
    .end local v0    # "userId":I
    :cond_9b
    :goto_9b
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PkgUpdateReceiver, onPackageRemoved : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    if-nez p1, :cond_33

    .line 1331
    return-void

    .line 1335
    :cond_33
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1300(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1337
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->removeFromDB(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1339
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->removeFromVrrGroup(Ljava/lang/String;)V

    .line 1341
    const-string v0, "com.samsung.android.game.gos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "PkgUpdateReceiver, com.samsung.android.game.gos is removed"

    if-eqz v2, :cond_84

    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->isServiceRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 1342
    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :try_start_5a
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_68} :catch_69

    goto :goto_83

    .line 1345
    :catch_69
    move-exception v0

    .line 1346
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " installation is failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1348
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_83
    goto :goto_be

    .line 1349
    :cond_84
    const-string v2, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1350
    const-string v0, "PkgUpdateReceiver, com.samsung.android.game.gamehome is removed"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v1, "PKG_GAMELAUNCHER removed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_be

    .line 1352
    :cond_99
    const-string v2, "com.samsung.android.game.gametools"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1353
    const-string v0, "PkgUpdateReceiver, com.samsung.android.game.gametools is removed"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v1, "PKG_GAMEBOOSTER removed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    goto :goto_be

    .line 1355
    :cond_ae
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1356
    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v1, "PKG_GOS removed"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1359
    :cond_be
    :goto_be
    return-void
.end method

.method public onPackageReplaced(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PkgUpdateReceiver, onPackageReplaced : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    if-nez p1, :cond_25

    .line 1417
    return-void

    .line 1421
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1300(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1423
    const-string v0, "com.samsung.android.game.gamehome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1424
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    const-string v2, "PKG_GAMELAUNCHER replaced"

    # invokes: Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/samsung/android/game/GameManagerService;->access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PkgUpdateReceiver, com.samsung.android.game.gamehome is replaced, enabled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$800(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_5f
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1305
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1306
    .local v0, "changingUserId":I
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1308
    .local v1, "user":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PkgUpdateReceiver, onReceive action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changingUserId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameManager"

    invoke-static {v4, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    .line 1311
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1312
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_46

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1314
    .local v4, "pkgName":Ljava/lang/String;
    :cond_46
    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->onPackageReplaced(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1315
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "pkgName":Ljava/lang/String;
    goto :goto_75

    .line 1316
    :cond_4a
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1317
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1318
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1319
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_5c
    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1320
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "pkgName":Ljava/lang/String;
    goto :goto_75

    .line 1321
    :cond_60
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1322
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1323
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_72

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1324
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_72
    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1326
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_75
    :goto_75
    return-void
.end method
