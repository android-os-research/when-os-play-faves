.class Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;
.super Ljava/lang/Thread;
.source "ThermalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/thermal/ThermalManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .param p2, "x1"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    # getter for: Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mStopThread:Z
    invoke-static {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->access$300(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)Z

    move-result v0

    const-string v1, "GameSDK@ThermalManager"

    if-nez v0, :cond_4c

    .line 165
    :try_start_a
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getCurrentRealLRP()I

    move-result v0

    .line 168
    .local v0, "lrp":I
    iget-object v2, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    # getter for: Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mWarningLevelManager:Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;
    invoke-static {v2}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->access$400(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->checkWarningLevel(I)V

    .line 169
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_20} :catch_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_21

    .end local v0    # "lrp":I
    goto :goto_40

    .line 173
    :catch_21
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] ThreadGetThermal::run(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_40
    goto :goto_0

    .line 170
    :catch_41
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "[FINISH] ThreadGetThermal is interrupted"

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 177
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4c
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v2, "Finalize ThermalGatherer thread"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method
