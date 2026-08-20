.class public Lcom/android/server/UpdateLockService$LockWatcher;
.super Landroid/os/TokenWatcher;
.source "UpdateLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UpdateLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockWatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/UpdateLockService;


# direct methods
.method public constructor <init>(Lcom/android/server/UpdateLockService;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    .line 48
    iput-object p1, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    .line 49
    invoke-direct {p0, p2, p3}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    return-void
.end method

.method public released()V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/server/UpdateLockService$LockWatcher;->this$0:Lcom/android/server/UpdateLockService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    return-void
.end method
