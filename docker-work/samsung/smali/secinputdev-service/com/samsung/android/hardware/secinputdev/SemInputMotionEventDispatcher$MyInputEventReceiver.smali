.class final Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SemInputMotionEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "channel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 148
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 149
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 150
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 154
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_29

    .line 155
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    monitor-enter v0

    .line 156
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->-$$Nest$fgetlisteners(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 157
    .local v2, "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 158
    .end local v2    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    goto :goto_11

    .line 159
    :cond_24
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v1

    .line 161
    :cond_29
    :goto_29
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 162
    return-void
.end method
