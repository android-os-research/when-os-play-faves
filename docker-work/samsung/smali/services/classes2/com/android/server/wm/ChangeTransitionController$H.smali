.class public final Lcom/android/server/wm/ChangeTransitionController$H;
.super Landroid/os/Handler;
.source "ChangeTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ChangeTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final CHANGE_TRANSIT_TIMEOUT:I = 0x1

.field public static final FREEZE_DISPLAY_TIMEOUT:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ChangeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ChangeTransitionController;Landroid/os/Looper;)V
    .registers 3

    .line 1043
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    .line 1044
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1049
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_44

    .line 1058
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-static {p1}, Lcom/android/server/wm/ChangeTransitionController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/ChangeTransitionController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    monitor-enter p1

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v0, "ChangeTransitionController"

    const-string v1, "FREEZE_DISPLAY_TIMEOUT!!"

    .line 1059
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->unfreezeDisplay()V

    .line 1061
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_44

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1051
    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-static {p1}, Lcom/android/server/wm/ChangeTransitionController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/ChangeTransitionController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    monitor-enter p1

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v0, "ChangeTransitionController"

    const-string v1, "CHANGE_TRANSIT_TIMEOUT!!"

    .line 1052
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController$H;->this$0:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/ChangeTransitionController;->clear()V

    .line 1054
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_44
    return-void

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
