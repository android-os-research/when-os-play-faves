.class public Lcom/android/server/appprelauncher/AppPrelaunchService$1;
.super Ljava/lang/Object;
.source "AppPrelaunchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appprelauncher/AppPrelaunchService;->startGlobalWatchDog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const-string v0, "PRELService"

    const-string v1, "Global watchDog started"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$sfgetAPP_MAX_IDLE_TIME_MIN()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 290
    iget-object v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v3}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetHISTORY_TIME_MIN(Lcom/android/server/appprelauncher/AppPrelaunchService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 294
    :goto_1b
    :try_start_1b
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$sfgetGLOBAL_WATCHDOG_SLEEP_TIME_MIN()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v0

    const-string v5, "PRELService"

    const-string v6, "Global watchDog interrupted"

    .line 296
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    :goto_31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 299
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 300
    iget-object v7, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v7}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmLock(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 303
    :try_start_41
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedApps(Lcom/android/server/appprelauncher/AppPrelaunchService;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4f
    :goto_4f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 304
    invoke-virtual {v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunchedTimeNs()J

    move-result-wide v10

    sub-long v10, v5, v10

    cmp-long v10, v10, v1

    if-lez v10, :cond_4f

    .line 305
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 309
    :cond_69
    :goto_69
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_95

    .line 310
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    .line 311
    invoke-virtual {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunchedTimeNs()J

    move-result-wide v8

    sub-long v8, v5, v8

    cmp-long v8, v8, v3

    if-lez v8, :cond_95

    .line 312
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_69

    .line 317
    :cond_95
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    const-string v6, "PRELService"

    .line 318
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " unused, kill"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v6

    monitor-enter v6
    :try_end_c9
    .catchall {:try_start_41 .. :try_end_c9} :catchall_e7

    .line 322
    :try_start_c9
    invoke-virtual {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result v8

    if-eqz v8, :cond_df

    .line 323
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    const-string v9, "Global watchDog"

    invoke-static {v8, v5, v9}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mkillAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    const/4 v8, 0x6

    .line 324
    invoke-virtual {v5, v8}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    .line 325
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mremovePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    .line 327
    :cond_df
    monitor-exit v6

    goto :goto_99

    :catchall_e1
    move-exception p0

    monitor-exit v6
    :try_end_e3
    .catchall {:try_start_c9 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw p0

    .line 329
    :cond_e4
    monitor-exit v7

    goto/16 :goto_1b

    :catchall_e7
    move-exception p0

    monitor-exit v7
    :try_end_e9
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_e7

    throw p0
.end method
