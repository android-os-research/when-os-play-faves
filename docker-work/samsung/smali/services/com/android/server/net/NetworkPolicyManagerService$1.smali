.class public Lcom/android/server/net/NetworkPolicyManagerService$1;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V
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

    .line 1111
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 1

    const/4 p0, 0x6

    return p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 5

    .line 1119
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1120
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGD()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "NetworkPolicy"

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLowPowerModeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_24
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    :try_start_29
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eq v1, p1, :cond_38

    .line 1125
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-boolean p1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 1126
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$1;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mupdateRulesForRestrictPowerUL(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1128
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3a

    throw p0
.end method
