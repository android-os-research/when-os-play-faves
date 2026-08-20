.class public Lcom/android/server/net/NetworkPolicyManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 1429
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "android.intent.extra.UID"

    const/4 v0, -0x1

    .line 1434
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_a

    return-void

    .line 1438
    :cond_a
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result p2

    if-eqz p2, :cond_26

    const-string p2, "NetworkPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_26
    sget-object p2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1441
    :try_start_29
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mremoveFirewallPolicyNL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1442
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_4c

    .line 1444
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1445
    :try_start_34
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$monUidDeletedUL(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1446
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_49

    .line 1447
    :try_start_3e
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1448
    monitor-exit p1
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_46

    .line 1449
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_49

    return-void

    :catchall_46
    move-exception p0

    .line 1448
    :try_start_47
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw p0

    :catchall_49
    move-exception p0

    .line 1449
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 1442
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method
