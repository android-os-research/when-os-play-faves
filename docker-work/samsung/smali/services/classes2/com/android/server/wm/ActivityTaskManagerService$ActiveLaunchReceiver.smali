.class public Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActiveLaunchReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 1256
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ", isAutoRunBlocked : "

    const-string v3, ", isPkgStopped : "

    const-string v4, "Checking for the Active launch isPkgEverLaunched :"

    const-string v5, "ActivityTaskManager"

    if-nez p2, :cond_f

    return-void

    .line 1263
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.DO_ACTIVE_LAUNCH"

    .line 1264
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

    .line 1265
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_2e

    const-string v8, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

    .line 1266
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_2e

    :cond_2c
    move v6, v10

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v6, v9

    :goto_2f
    if-nez v7, :cond_34

    if-nez v6, :cond_34

    return-void

    .line 1271
    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_3b

    return-void

    .line 1276
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v11, "package_name"

    .line 1277
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_4d

    .line 1279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    goto :goto_54

    :cond_4d
    const-string/jumbo v12, "userid"

    invoke-virtual {v6, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_54
    xor-int/lit8 v12, v7, 0x1

    if-eqz v7, :cond_5b

    .line 1288
    invoke-static {v11}, Lcom/android/server/am/Pageboost;->startActiveLaunch(Ljava/lang/String;)V

    .line 1293
    :cond_5b
    :try_start_5b
    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v13

    if-eqz v13, :cond_9d

    .line 1295
    invoke-virtual {v13, v11, v6}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v14
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_67} :catch_e8

    .line 1296
    :try_start_67
    invoke-virtual {v13, v11, v6}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(Ljava/lang/String;I)Z

    move-result v15
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_6b} :catch_9a

    .line 1297
    :try_start_6b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v13, v11, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v14, :cond_79

    if-nez v15, :cond_79

    if-eqz v10, :cond_9f

    .line 1299
    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isPkgSuspended : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_9a
    move-exception v0

    move v15, v9

    goto :goto_e6

    :cond_9d
    move v15, v9

    const/4 v14, 0x0

    .line 1306
    :cond_9f
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v10, v11, v6}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    move-result v12

    .line 1307
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v11, v6}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v10
    :try_end_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_af} :catch_e5

    if-nez v12, :cond_c5

    if-eqz v10, :cond_b4

    goto :goto_c5

    :cond_b4
    if-eqz v8, :cond_bb

    .line 1315
    :try_start_b6
    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    goto :goto_bc

    :cond_bb
    const/4 v0, 0x0

    :goto_bc
    const/4 v13, 0x4

    if-ne v0, v13, :cond_10c

    const-string v0, "Checking for the Active launch getApplicationEnabledSetting"

    .line 1318
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1309
    :cond_c5
    :goto_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Checking for the Active launch isDataCleared :"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_df} :catch_e0

    return-void

    :catch_e0
    move-exception v0

    move/from16 v16, v10

    move v10, v14

    goto :goto_ed

    :catch_e5
    move-exception v0

    :goto_e6
    move v10, v14

    goto :goto_eb

    :catch_e8
    move-exception v0

    move v15, v9

    const/4 v10, 0x0

    :goto_eb
    const/16 v16, 0x0

    .line 1323
    :goto_ed
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed active Launch package : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v10

    move/from16 v10, v16

    .line 1327
    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDataCleared :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_175

    if-eqz v11, :cond_175

    if-eqz v14, :cond_175

    if-nez v15, :cond_175

    if-nez v12, :cond_175

    if-nez v10, :cond_175

    .line 1331
    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 1334
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    if-eqz v2, :cond_175

    .line 1336
    invoke-virtual {v2, v9}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    if-eqz v7, :cond_157

    .line 1339
    :try_start_14f
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_169

    .line 1341
    :cond_157
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_162} :catch_163

    goto :goto_169

    :catch_163
    move-exception v0

    const-string v1, "No activity to handle assist action."

    .line 1344
    invoke-static {v5, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_169
    const-string/jumbo v0, "starting Active launch"

    .line 1346
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_175

    :cond_170
    const-string v0, "Received intent is null"

    .line 1349
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_175
    :goto_175
    return-void
.end method
