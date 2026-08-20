.class public Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PolicyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .registers 3

    .line 508
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 509
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 514
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_44

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3e

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2c

    const/16 v3, 0x8

    if-eq v0, v3, :cond_15

    goto :goto_6a

    .line 539
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->disableTouchListener()V

    .line 540
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_24

    .line 541
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mstartEnableTouchEvent(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_6a

    :cond_24
    if-ne p1, v1, :cond_6a

    .line 543
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v4}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mstartEnableTouchEvent(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_6a

    .line 532
    :cond_2c
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_36

    .line 533
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v4}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menableTouchListener(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_6a

    :cond_36
    if-ne p1, v1, :cond_6a

    .line 535
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, v4}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menableTouchListener(Lcom/android/server/wm/DisplayPolicy;Z)V

    goto :goto_6a

    .line 528
    :cond_3e
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    goto :goto_6a

    .line 525
    :cond_44
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    goto :goto_6a

    .line 516
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$fgetmLock(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 517
    :try_start_51
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_5c

    .line 518
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object p1

    goto :goto_62

    :cond_5c
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object p1

    :goto_62
    if-eqz p1, :cond_69

    .line 520
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0, p1, v2}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mrequestTransientBars(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;Z)V

    .line 522
    :cond_69
    monitor-exit v0

    :cond_6a
    :goto_6a
    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_6b

    throw p0
.end method
