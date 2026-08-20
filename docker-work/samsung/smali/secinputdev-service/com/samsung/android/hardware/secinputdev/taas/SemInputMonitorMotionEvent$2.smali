.class Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$2;
.super Ljava/lang/Object;
.source "SemInputMonitorMotionEvent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;)V
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

    .line 89
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$2;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$2;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$mgetSurfaceTimerStates(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
