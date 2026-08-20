.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalDisplayEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;)V
    .registers 2

    .line 1649
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    return-void
.end method


# virtual methods
.method public onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 6

    .line 1690
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1691
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p0, :cond_17

    .line 1697
    monitor-exit p1

    return-void

    .line 1699
    :cond_17
    invoke-virtual {p0, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onFrameRateOverridesChanged([Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    .line 1700
    monitor-exit p1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onHotplug(JJZ)V
    .registers 6

    .line 1652
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    if-eqz p5, :cond_f

    .line 1654
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V

    goto :goto_14

    .line 1656
    :cond_f
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 1658
    :goto_14
    monitor-exit p1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onModeChanged(JJI)V
    .registers 6

    .line 1669
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1670
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez p0, :cond_17

    .line 1676
    monitor-exit p1

    return-void

    .line 1678
    :cond_17
    invoke-virtual {p0, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActiveDisplayModeChangedLocked(I)V

    .line 1679
    monitor-exit p1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method
