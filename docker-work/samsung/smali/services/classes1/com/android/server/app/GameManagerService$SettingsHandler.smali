.class public Lcom/android/server/app/GameManagerService$SettingsHandler;
.super Landroid/os/Handler;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 207
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 208
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 217
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_142

    const/4 v5, 0x2

    if-eq v2, v5, :cond_c5

    const/4 v6, 0x3

    if-eq v2, v6, :cond_ab

    const/4 v6, 0x4

    const/16 v7, 0x10

    if-eq v2, v6, :cond_25

    const/4 v1, 0x5

    if-eq v2, v1, :cond_1a

    goto/16 :goto_1ab

    .line 306
    :cond_1a
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto/16 :goto_1ab

    .line 275
    :cond_25
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/GameState;

    .line 276
    invoke-virtual {v2}, Landroid/app/GameState;->isLoading()Z

    move-result v6

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v8, "packageName"

    .line 278
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v8, "userId"

    .line 279
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 282
    iget-object v8, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 283
    invoke-virtual {v8, v15, v1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_48

    move v3, v4

    .line 286
    :cond_48
    :try_start_48
    iget-object v4, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v15, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    const-string v4, "GameManagerService"

    const-string v5, "Failed to get package metadata"

    .line 288
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    :goto_5b
    move v10, v4

    const/16 v8, 0x1ad

    .line 292
    invoke-virtual {v2}, Landroid/app/GameState;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->-$$Nest$smgameStateModeToStatsdGameState(I)I

    move-result v12

    .line 293
    invoke-virtual {v2}, Landroid/app/GameState;->getLabel()I

    move-result v14

    invoke-virtual {v2}, Landroid/app/GameState;->getQuality()I

    move-result v2

    move-object v9, v15

    move v11, v3

    move v13, v6

    move-object v4, v15

    move v15, v2

    .line 291
    invoke-static/range {v8 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZIZII)V

    if-eqz v3, :cond_1ab

    .line 296
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    if-nez v2, :cond_a0

    const-string v0, "GameManagerService"

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting loading mode for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ab

    .line 301
    :cond_a0
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto/16 :goto_1ab

    .line 268
    :cond_ab
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v6, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 269
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 270
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2, v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;

    move-result-object v2

    .line 271
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(I[Ljava/lang/String;)V

    goto/16 :goto_1ab

    .line 240
    :cond_c5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_fc

    const-string v3, "GameManagerService"

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to write settings for invalid user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 244
    :try_start_ec
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 245
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 246
    monitor-exit v3

    goto/16 :goto_1ab

    :catchall_f9
    move-exception v0

    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_ec .. :try_end_fb} :catchall_f9

    throw v0

    .line 250
    :cond_fc
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 253
    :try_start_103
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 254
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 255
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 256
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    .line 257
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v1}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    .line 260
    :cond_13d
    monitor-exit v6

    goto :goto_1ab

    :catchall_13f
    move-exception v0

    monitor-exit v6
    :try_end_141
    .catchall {:try_start_103 .. :try_end_141} :catchall_13f

    throw v0

    .line 219
    :cond_142
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_173

    const-string v3, "GameManagerService"

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to write settings for invalid user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 223
    :try_start_169
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 224
    monitor-exit v5

    goto :goto_1ab

    :catchall_170
    move-exception v0

    monitor-exit v5
    :try_end_172
    .catchall {:try_start_169 .. :try_end_172} :catchall_170

    throw v0

    .line 228
    :cond_173
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 229
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 230
    :try_start_17d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 231
    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 232
    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 233
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    .line 235
    :cond_1a5
    monitor-exit v3
    :try_end_1a6
    .catchall {:try_start_17d .. :try_end_1a6} :catchall_1ac

    const/16 v0, 0xa

    .line 236
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_1ab
    :goto_1ab
    return-void

    :catchall_1ac
    move-exception v0

    .line 235
    :try_start_1ad
    monitor-exit v3
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->doHandleMessage(Landroid/os/Message;)V

    return-void
.end method
