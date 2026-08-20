.class public Lcom/android/server/appprelauncher/AppPrelaunchService$2;
.super Ljava/lang/Object;
.source "AppPrelaunchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appprelauncher/AppPrelaunchService;->runWatchDogForApp(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

.field public final synthetic val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V
    .registers 3

    .line 595
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "PRELService"

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run watchDog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :try_start_18
    invoke-static {}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$sfgetPREL_APP_START_WATCHDOG_TIMEOUT_MS()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v0

    const-string v1, "PRELService"

    const-string v2, "WatchDog interrupted"

    .line 602
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    :goto_29
    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v0

    monitor-enter v0

    .line 606
    :try_start_30
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v1}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getStage()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_5e

    const-string v1, "PRELService"

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WatchDog timed out for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v3}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    const-string v3, "WatchDog timed out"

    invoke-static {v1, v2, v3}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mkillAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    .line 610
    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_78

    const-string v0, "PRELService"

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchDog finished for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$2;->val$app:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_78
    move-exception p0

    .line 610
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method
