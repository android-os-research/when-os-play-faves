.class public Lcom/android/server/DeviceIdleController$8;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 2240
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$8;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAwakeStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3

    .line 2246
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$8;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 2247
    :try_start_3
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$8;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->keyguardShowingLocked(Z)V

    .line 2248
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
