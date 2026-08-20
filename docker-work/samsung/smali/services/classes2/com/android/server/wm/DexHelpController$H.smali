.class public final Lcom/android/server/wm/DexHelpController$H;
.super Landroid/os/Handler;
.source "DexHelpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexHelpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final DEX_HELP_TIMEOUT:I = 0xc8


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexHelpController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexHelpController;Landroid/os/Looper;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/android/server/wm/DexHelpController$H;->this$0:Lcom/android/server/wm/DexHelpController;

    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_7

    goto :goto_20

    .line 112
    :cond_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/DexHelpController$H;->this$0:Lcom/android/server/wm/DexHelpController;

    invoke-static {v0}, Lcom/android/server/wm/DexHelpController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/DexHelpController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/DexHelpController$H;->this$0:Lcom/android/server/wm/DexHelpController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexHelpController;->timeout(I)V

    .line 115
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_20
    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
