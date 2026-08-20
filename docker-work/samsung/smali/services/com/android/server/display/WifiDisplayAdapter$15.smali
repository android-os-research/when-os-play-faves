.class public Lcom/android/server/display/WifiDisplayAdapter$15;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    .line 773
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 8

    .line 913
    iget-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p5}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p5

    monitor-enter p5

    :try_start_7
    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayChanged"

    .line 914
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 916
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 917
    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 918
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 919
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 920
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mrenameDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    goto :goto_4d

    .line 922
    :cond_48
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mupdateDisplaySurfaceLocked(Lcom/android/server/display/WifiDisplayAdapter;Landroid/view/Surface;II)V

    .line 924
    :goto_4d
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 926
    :cond_52
    monitor-exit p5

    return-void

    :catchall_54
    move-exception p0

    monitor-exit p5
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIILjava/lang/String;)V
    .registers 14

    .line 872
    iget-object p6, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p6}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p6

    monitor-enter p6

    .line 873
    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    if-eqz p2, :cond_1e

    .line 876
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$maddDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    goto :goto_3c

    .line 878
    :cond_1e
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 879
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 880
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mupdateRememberedDisplaysLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_38
    const/4 p2, 0x1

    .line 882
    invoke-virtual {p1, p2}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 885
    :goto_3c
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_65

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object p2

    if-eqz p2, :cond_65

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object p2

    .line 887
    invoke-virtual {p2, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result p2

    if-eqz p2, :cond_65

    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object p2

    .line 888
    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result p2

    if-eqz p2, :cond_80

    .line 890
    :cond_65
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result p2

    const/4 p4, 0x3

    if-ne p2, p4, :cond_71

    .line 891
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2, p4}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmFeatureState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 893
    :cond_71
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2, p3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 894
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 895
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 898
    :cond_80
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$msetAllowWifiScan(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    .line 899
    monitor-exit p6

    return-void

    :catchall_88
    move-exception p0

    monitor-exit p6
    :try_end_8a
    .catchall {:try_start_7 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .registers 6

    .line 842
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 843
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 845
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 847
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 848
    :cond_2e
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 849
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 851
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-array v1, v2, [Landroid/hardware/display/WifiDisplay;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V

    .line 852
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 854
    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public onDisplayConnectionFailed()V
    .registers 4

    .line 859
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 860
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 862
    :cond_17
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 863
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 864
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 866
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public onDisplayDisconnected()V
    .registers 5

    .line 933
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 934
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mremoveDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 936
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 939
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDlnaController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/DlnaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DlnaController;->sendDisconnectionRequestBroadcast()V

    .line 941
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 942
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 943
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmAvailableDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V

    .line 944
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V

    .line 945
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 948
    :cond_44
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$msetAllowWifiScan(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    .line 949
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_5c

    .line 950
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_display_on"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :catchall_5c
    move-exception p0

    .line 949
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .registers 4

    .line 904
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 905
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmSessionInfo(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 906
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 907
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onFeatureStateChanged(I)V
    .registers 4

    .line 776
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 777
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmFeatureState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eq v1, p1, :cond_29

    .line 778
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmFeatureState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 779
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 781
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmFeatureState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_29

    .line 782
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object p1, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V

    .line 785
    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public onScanFinished()V
    .registers 4

    .line 832
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 833
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmScanState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eqz v1, :cond_1a

    .line 834
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmScanState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 835
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 837
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .registers 8

    .line 809
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 810
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 813
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmAvailableDisplays(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1f
    if-nez v1, :cond_3e

    .line 816
    array-length v5, p1

    if-ge v4, v5, :cond_3e

    .line 817
    aget-object v1, p1, v4

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v1

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmAvailableDisplays(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    aget-object v5, v5, v4

    .line 818
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v5

    if-eq v1, v5, :cond_3a

    move v1, v2

    goto :goto_3b

    :cond_3a
    move v1, v3

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3e
    if-eqz v1, :cond_54

    .line 822
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmAvailableDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V

    .line 823
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mfixRememberedDisplayNamesFromAvailableDisplaysLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 824
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mupdateDisplaysLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 825
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 827
    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public onScanStarted()V
    .registers 7

    .line 790
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 791
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmScanState(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_48

    .line 793
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v1, "WifiDisplayAdapter"

    const-string/jumbo v3, "onScanStarted in counnected status"

    .line 794
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-array v3, v2, [Landroid/hardware/display/WifiDisplay;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V

    goto :goto_3e

    :cond_2f
    const-string v1, "WifiDisplayAdapter"

    const-string/jumbo v3, "onScanStarted"

    .line 798
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V

    .line 801
    :goto_3e
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fputmScanState(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 802
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$15;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 804
    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw p0
.end method
