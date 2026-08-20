.class public final Lcom/android/server/wm/MultiWindowBlockListRepository$H;
.super Landroid/os/Handler;
.source "MultiWindowBlockListRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowBlockListRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final MSG_MULTI_WINDOW_BLOCK_LIST_CHANGED:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowBlockListRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowBlockListRepository;Landroid/os/Looper;)V
    .registers 3

    .line 185
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository$H;->this$0:Lcom/android/server/wm/MultiWindowBlockListRepository;

    .line 186
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 191
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_21

    .line 193
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository$H;->this$0:Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-static {p1}, Lcom/android/server/wm/MultiWindowBlockListRepository;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/MultiWindowBlockListRepository;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    monitor-enter p1

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository$H;->this$0:Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-static {v0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->-$$Nest$fgetmLock(Lcom/android/server/wm/MultiWindowBlockListRepository;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_25

    .line 195
    :try_start_17
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository$H;->this$0:Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-static {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->-$$Nest$mupdateDeferredBlockListLocked(Lcom/android/server/wm/MultiWindowBlockListRepository;)V

    .line 196
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_22

    .line 197
    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_21
    return-void

    :catchall_22
    move-exception p0

    .line 196
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw p0

    :catchall_25
    move-exception p0

    .line 197
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
