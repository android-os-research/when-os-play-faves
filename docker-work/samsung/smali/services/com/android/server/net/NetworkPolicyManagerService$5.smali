.class public Lcom/android/server/net/NetworkPolicyManagerService$5;
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

    .line 1395
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1399
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1400
    :try_start_5
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdatePowerSaveWhitelistUL(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1401
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForRestrictPowerUL(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1402
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 1403
    monitor-exit p1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method
