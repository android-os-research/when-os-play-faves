.class public final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .registers 3

    .line 1637
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1638
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1643
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_242

    :pswitch_8
    goto/16 :goto_240

    .line 1759
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1760
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    goto/16 :goto_240

    .line 1752
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1753
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1754
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1755
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManagerInternal(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZILjava/lang/String;)V

    goto/16 :goto_240

    .line 1735
    :pswitch_2a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1736
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    .line 1738
    :goto_32
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 1739
    :try_start_35
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmTempAllowlistChangeListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object p0

    .line 1741
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 1739
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;

    .line 1742
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_5f

    .line 1743
    array-length p1, p0

    :goto_4f
    if-ge v3, p1, :cond_240

    aget-object v1, p0, v3

    if-eqz v2, :cond_59

    .line 1745
    invoke-interface {v1, v0}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppAdded(I)V

    goto :goto_5c

    .line 1747
    :cond_59
    invoke-interface {v1, v0}, Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;->onAppRemoved(I)V

    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :catchall_5f
    move-exception p0

    .line 1742
    :try_start_60
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0

    .line 1776
    :pswitch_62
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mupdatePreIdleFactor(Lcom/android/server/DeviceIdleController;)V

    .line 1777
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeDoImmediateMaintenance(Lcom/android/server/DeviceIdleController;)V

    goto/16 :goto_240

    .line 1773
    :pswitch_6e
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mupdatePreIdleFactor(Lcom/android/server/DeviceIdleController;)V

    goto/16 :goto_240

    .line 1764
    :pswitch_75
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 1765
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_7e

    goto :goto_7f

    :cond_7e
    move v2, v3

    :goto_7f
    if-eqz v2, :cond_86

    .line 1767
    invoke-interface {p0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    goto/16 :goto_240

    .line 1769
    :cond_86
    invoke-interface {p0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    goto/16 :goto_240

    .line 1732
    :pswitch_8b
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    goto/16 :goto_240

    .line 1780
    :pswitch_92
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 1784
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1785
    :try_start_99
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$misStationaryLocked(Lcom/android/server/DeviceIdleController;)Z

    move-result v2

    if-nez p1, :cond_ba

    .line 1788
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmStationaryListeners(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object p0

    .line 1790
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 1788
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 1794
    :cond_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_99 .. :try_end_bb} :catchall_cf

    if-eqz v1, :cond_c8

    .line 1796
    array-length p0, v1

    :goto_be
    if-ge v3, p0, :cond_c8

    aget-object v0, v1, v3

    .line 1797
    invoke-interface {v0, v2}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    :cond_c8
    if-eqz p1, :cond_240

    .line 1801
    invoke-interface {p1, v2}, Lcom/android/server/DeviceIdleInternal$StationaryListener;->onDeviceStationaryChanged(Z)V

    goto/16 :goto_240

    :catchall_cf
    move-exception p0

    .line 1794
    :try_start_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p0

    .line 1727
    :pswitch_d2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1728
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    goto/16 :goto_240

    .line 1705
    :pswitch_db
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1706
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_e5

    move-object v1, v0

    goto :goto_e8

    :cond_e5
    const-string/jumbo v1, "unknown"

    .line 1707
    :goto_e8
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1709
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v1

    .line 1710
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    .line 1712
    :try_start_ff
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1713
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    invoke-interface {v4, v3, v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_111} :catch_111

    :catch_111
    if-eqz v1, :cond_124

    .line 1718
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_124
    if-eqz v2, :cond_137

    .line 1721
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1723
    :cond_137
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_240

    :pswitch_13c
    const-string/jumbo p1, "unknown"

    .line 1679
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1680
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result p1

    .line 1681
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v0

    .line 1683
    :try_start_156
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1684
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    .line 1685
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1684
    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_16c} :catch_16c

    :catch_16c
    if-eqz p1, :cond_18f

    .line 1689
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1690
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_18f
    if-eqz v0, :cond_1b2

    .line 1694
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1695
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleStartedDoneReceiver(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1700
    :cond_1b2
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1701
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_240

    .line 1651
    :pswitch_1bc
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1654
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1d9

    .line 1655
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1656
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    goto :goto_1ed

    .line 1658
    :cond_1d9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1659
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLocalPowerManager(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1662
    :goto_1ed
    :try_start_1ed
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmNetworkPolicyManager(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1663
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmBatteryStats(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v4, :cond_201

    move v2, v4

    .line 1665
    :cond_201
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    .line 1663
    invoke-interface {v5, v2, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_208
    .catch Landroid/os/RemoteException; {:try_start_1ed .. :try_end_208} :catch_208

    :catch_208
    if-eqz v0, :cond_21b

    .line 1669
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_21b
    if-eqz v3, :cond_22e

    .line 1672
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmLightIdleIntent(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1674
    :cond_22e
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1675
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$fgetmGoingIdleWakeLock(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_240

    .line 1646
    :pswitch_23b
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    :cond_240
    :goto_240
    return-void

    nop

    :pswitch_data_242
    .packed-switch 0x1
        :pswitch_23b
        :pswitch_1bc
        :pswitch_1bc
        :pswitch_13c
        :pswitch_db
        :pswitch_d2
        :pswitch_92
        :pswitch_8b
        :pswitch_8
        :pswitch_75
        :pswitch_6e
        :pswitch_62
        :pswitch_2a
        :pswitch_17
        :pswitch_a
    .end packed-switch
.end method
