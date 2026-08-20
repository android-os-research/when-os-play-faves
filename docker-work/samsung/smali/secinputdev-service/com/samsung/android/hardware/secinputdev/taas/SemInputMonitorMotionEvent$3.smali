.class Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;
.super Landroid/os/UEventObserver;
.source "SemInputMonitorMotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    .line 110
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUEvent(TAAS): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputMonitorMotionEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "RESULT"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "result":Ljava/lang/String;
    const-string v2, "RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_33

    const-string v2, "I2C"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 117
    :cond_33
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 118
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 119
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$fputhwDefectTime(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;J)V

    .line 120
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$fgethwDefectCnt(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$fputhwDefectCnt(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;J)V

    .line 123
    .end local v2    # "time":Landroid/text/format/Time;
    :cond_50
    const-string v2, "TAAS"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "taasResult":Ljava/lang/String;
    const-string v4, "CASB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-static {v5}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$fgetdetectedUeventTaas(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)Z

    move-result v5

    if-nez v5, :cond_bf

    .line 125
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-static {v4, v3}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$fputdetectedUeventTaas(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Z)V

    .line 126
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfgetdetectedUeventTaasCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfputdetectedUeventTaasCount(I)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfgetdetectedUeventTaasCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "case2Str":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-static {v4, v3}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$mtrackCase2(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Ljava/lang/String;)V

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTaasObserver thread casb start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfputdetectedUeventTaasCount(I)V

    .line 131
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3$1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .end local v1    # "t":Ljava/lang/Thread;
    .end local v3    # "case2Str":Ljava/lang/String;
    goto :goto_ec

    .line 145
    :cond_bf
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 146
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfgetdetectedUeventTaasCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfputdetectedUeventTaasCount(I)V

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detectedUeventcnt(TAAS): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfgetdetectedUeventTaasCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 145
    :cond_ec
    :goto_ec
    nop

    .line 149
    :goto_ed
    return-void
.end method
