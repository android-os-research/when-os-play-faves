.class Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;
.super Ljava/lang/Thread;
.source "FrameCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadGetFlip"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;->this$0:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;Lcom/samsung/android/gamesdk/subsystem/FrameCounter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    .param p2, "x1"    # Lcom/samsung/android/gamesdk/subsystem/FrameCounter$1;

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;-><init>(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;->this$0:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z
    invoke-static {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->access$100(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)Z

    move-result v0

    const-string v1, "GameSDK@FrameCounter"

    if-nez v0, :cond_48

    .line 174
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;->this$0:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    # getter for: Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mSkipUpdate:Z
    invoke-static {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->access$200(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;->this$0:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    # invokes: Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->updateFlipCountRecord()V
    invoke-static {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->access$300(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)V

    .line 180
    const-wide/16 v2, 0x12c

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 186
    :goto_1c
    goto :goto_0

    .line 184
    :catch_1d
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] ThreadGetFlip::run(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 181
    :catch_3d
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "[FINISH] ThreadGetFlip is interrupted"

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 188
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_48
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "ThreadGetFlip::run(): Finalize ThreadGetFlip"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 189
    return-void
.end method
