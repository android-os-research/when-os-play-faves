.class Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;
.super Ljava/lang/Object;
.source "SemInputMonitorMotionEvent.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;


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

    .line 41
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->-$$Nest$mmonitorMotionEvent(Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;Landroid/view/MotionEvent;)V

    .line 45
    return-void
.end method
