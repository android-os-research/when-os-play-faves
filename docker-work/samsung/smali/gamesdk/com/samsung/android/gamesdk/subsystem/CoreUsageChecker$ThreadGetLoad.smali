.class Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;
.super Ljava/lang/Thread;
.source "CoreUsageChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadGetLoad"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;->this$0:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;
    .param p2, "x1"    # Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$1;

    .line 340
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;-><init>(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;->this$0:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mStopThread:Z
    invoke-static {v0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->access$600(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)Z

    move-result v0

    const-string v1, "GameSDK@CoreUsageChecker"

    if-nez v0, :cond_36

    .line 344
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;->this$0:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->mSkipUpdate:Z
    invoke-static {v0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->access$700(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 345
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker$ThreadGetLoad;->this$0:Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    # invokes: Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->updateCpuUsage()V
    invoke-static {v0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->access$800(Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;)V

    .line 348
    :cond_17
    const-wide/16 v2, 0x3e8

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 355
    :goto_1c
    goto :goto_0

    .line 352
    :catch_1d
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "[FAIL] ThreadGetLoad::run(): Failed to get cpu load"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 349
    :catch_2b
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "[FINISH] ThreadGetLoad is interrupted"

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 357
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_36
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "[FINISH] ThreadGetLoad is finished"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 358
    return-void
.end method
