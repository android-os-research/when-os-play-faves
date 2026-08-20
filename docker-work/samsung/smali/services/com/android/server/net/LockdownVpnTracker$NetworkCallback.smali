.class public Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/LockdownVpnTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkCallback"
.end annotation


# instance fields
.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mNetwork:Landroid/net/Network;

.field public final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 76
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/LockdownVpnTracker;Lcom/android/server/net/LockdownVpnTracker$NetworkCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    return-void
.end method


# virtual methods
.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 83
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 86
    :goto_d
    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz p1, :cond_22

    .line 90
    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {p1}, Lcom/android/server/net/LockdownVpnTracker;->-$$Nest$fgetmStateLock(Lcom/android/server/net/LockdownVpnTracker;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 91
    :try_start_18
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {p0}, Lcom/android/server/net/LockdownVpnTracker;->-$$Nest$mhandleStateChangedLocked(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 92
    monitor-exit p1

    goto :goto_22

    :catchall_1f
    move-exception p0

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    :goto_22
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 100
    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 101
    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {p1}, Lcom/android/server/net/LockdownVpnTracker;->-$$Nest$fgetmStateLock(Lcom/android/server/net/LockdownVpnTracker;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 102
    :try_start_c
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-static {p0}, Lcom/android/server/net/LockdownVpnTracker;->-$$Nest$mhandleStateChangedLocked(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 103
    monitor-exit p1

    return-void

    :catchall_13
    move-exception p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p0
.end method
