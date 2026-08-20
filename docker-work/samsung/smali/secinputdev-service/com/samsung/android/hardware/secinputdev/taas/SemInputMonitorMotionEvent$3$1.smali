.class Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3$1;
.super Ljava/lang/Object;
.source "SemInputMonitorMotionEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;

    .line 131
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3$1;->this$1:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 135
    const-string v0, "SemInputMonitorMotionEvent"

    :try_start_2
    const-string v1, "mTaasObserver thread casb start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTaasObserver thread casb end,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$sfgetdetectedUeventTaasCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3$1;->this$1:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$3;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$fputdetectedUeventTaas(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Z)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_34} :catch_35

    .line 141
    goto :goto_50

    .line 139
    :catch_35
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTaasObserver thread: InterruptedException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_50
    return-void
.end method
