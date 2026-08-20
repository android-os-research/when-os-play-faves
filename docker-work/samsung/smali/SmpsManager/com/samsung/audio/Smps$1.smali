.class Lcom/samsung/audio/Smps$1;
.super Ljava/util/TimerTask;
.source "Smps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/audio/Smps;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/audio/Smps;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/audio/Smps;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/audio/Smps;

    .line 538
    iput-object p1, p0, Lcom/samsung/audio/Smps$1;->this$0:Lcom/samsung/audio/Smps;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 541
    iget-object v0, p0, Lcom/samsung/audio/Smps$1;->this$0:Lcom/samsung/audio/Smps;

    invoke-static {v0}, Lcom/samsung/audio/Smps;->-$$Nest$fgetmPenWrited(Lcom/samsung/audio/Smps;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 542
    iget-object v0, p0, Lcom/samsung/audio/Smps$1;->this$0:Lcom/samsung/audio/Smps;

    invoke-static {v0}, Lcom/samsung/audio/Smps;->-$$Nest$fgetmSleepTimer(Lcom/samsung/audio/Smps;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 543
    iget-object v0, p0, Lcom/samsung/audio/Smps$1;->this$0:Lcom/samsung/audio/Smps;

    invoke-virtual {v0}, Lcom/samsung/audio/Smps;->stop_fasttrack()V

    .line 544
    iget-object v0, p0, Lcom/samsung/audio/Smps$1;->this$0:Lcom/samsung/audio/Smps;

    invoke-static {v0}, Lcom/samsung/audio/Smps;->-$$Nest$mstopTimer(Lcom/samsung/audio/Smps;)V

    goto :goto_21

    .line 547
    :cond_1b
    iget-object v0, p0, Lcom/samsung/audio/Smps$1;->this$0:Lcom/samsung/audio/Smps;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/audio/Smps;->-$$Nest$fputmPenWrited(Lcom/samsung/audio/Smps;Z)V

    .line 549
    :cond_21
    :goto_21
    return-void
.end method
