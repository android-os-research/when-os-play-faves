.class public Lcom/android/server/enterprise/firewall/Firewall$5;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 277
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "initializeIpTables() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fgetmInitializingIpTablesRulesLock(Lcom/android/server/enterprise/firewall/Firewall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fgetmAreRulesReloaded(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 281
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fgetmIsChainsCreated(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 282
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$mcreateChains(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 284
    :cond_26
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fgetmFirewallRulesApplier(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains(Ljava/lang/Integer;)Z

    .line 285
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fgetmFirewallRulesApplier(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    .line 286
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$mblockOrUnblockAll(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    .line 287
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fgetmFirewallRulesApplier(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V

    .line 288
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fgetmFirewallRulesApplier(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadDomainFilterOnIptablesRules()V

    .line 289
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1, v3}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$fputmAreRulesReloaded(Lcom/android/server/enterprise/firewall/Firewall;Z)V

    .line 290
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$5;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$mblockOrUnblockAll(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    .line 291
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "initializeIpTables() - IP Tables initialization was done"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_11 .. :try_end_6b} :catchall_69

    throw p0
.end method
