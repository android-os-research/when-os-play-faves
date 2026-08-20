.class public final Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;
.super Ljava/lang/Object;
.source "NaturalSwitchingController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaturalSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeathRecipient"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/NaturalSwitchingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/NaturalSwitchingController;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/NaturalSwitchingController;Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;-><init>(Lcom/android/server/wm/NaturalSwitchingController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-static {v0}, Lcom/android/server/wm/NaturalSwitchingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/NaturalSwitchingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "NaturalSwitchingController"

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-static {v3}, Lcom/android/server/wm/NaturalSwitchingController;->-$$Nest$fgetmNaturalSwitchingCallback(Lcom/android/server/wm/NaturalSwitchingController;)Landroid/os/IRemoteCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->finishNaturalSwitching()V

    .line 326
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
