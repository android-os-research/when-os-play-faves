.class public Lcom/android/server/trust/TrustManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .line 1944
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$Receiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    return-void
.end method


# virtual methods
.method public final getUserId(Landroid/content/Intent;)I
    .registers 4

    const-string p0, "android.intent.extra.user_handle"

    const/16 v0, -0x64

    .line 1980
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_b

    return p0

    .line 1984
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXTRA_USER_HANDLE missing or invalid, value="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1948
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1949
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1950
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1951
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->updateDevicePolicyFeatures()V

    goto/16 :goto_a5

    :cond_1c
    const-string v0, "android.intent.action.USER_ADDED"

    .line 1952
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_96

    :cond_2d
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1958
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 1959
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    move-result p1

    if-lez p1, :cond_a5

    .line 1961
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserIsTrusted(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    monitor-enter p2

    .line 1962
    :try_start_42
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUserIsTrusted(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1963
    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_93

    .line 1964
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1965
    :try_start_53
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1966
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_90

    .line 1967
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    monitor-enter p2

    .line 1968
    :try_start_64
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1969
    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_8d

    .line 1970
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1971
    :try_start_75
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmUsersUnlockedByBiometric(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1972
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_8a

    .line 1973
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1974
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_a5

    :catchall_8a
    move-exception p0

    .line 1972
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0

    :catchall_8d
    move-exception p0

    .line 1969
    :try_start_8e
    monitor-exit p2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0

    :catchall_90
    move-exception p0

    .line 1966
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p0

    :catchall_93
    move-exception p0

    .line 1963
    :try_start_94
    monitor-exit p2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0

    .line 1954
    :cond_96
    :goto_96
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    move-result p1

    if-lez p1, :cond_a5

    .line 1956
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mmaybeEnableFactoryTrustAgents(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .registers 8

    .line 1990
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1991
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    .line 1992
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1993
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    .line 1994
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1995
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
