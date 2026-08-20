.class Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method private constructor blacklist <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .registers 2

    .line 58
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onReceiveFromCommissioner$0$android-net-lowpan-LowpanCommissioningSession$InternalCallback([B)V
    .registers 4
    .param p1, "packet"    # [B

    .line 76
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmIsClosed(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 78
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onReceiveFromCommissioner([B)V

    .line 80
    :cond_1c
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist onConnectedChanged(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 89
    return-void
.end method

.method public blacklist onEnabledChanged(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 86
    return-void
.end method

.method public blacklist onLinkAddressAdded(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 107
    return-void
.end method

.method public blacklist onLinkAddressRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 110
    return-void
.end method

.method public blacklist onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .registers 2
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 101
    return-void
.end method

.method public blacklist onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .registers 2
    .param p1, "value"    # Landroid/net/IpPrefix;

    .line 104
    return-void
.end method

.method public blacklist onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .registers 2
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .line 98
    return-void
.end method

.method public blacklist onReceiveFromCommissioner([B)V
    .registers 4
    .param p1, "packet"    # [B

    .line 74
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmHandler(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback$$ExternalSyntheticLambda0;-><init>(Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public blacklist onRoleChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 95
    return-void
.end method

.method public blacklist onStateChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmIsClosed(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 62
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    :cond_10
    goto :goto_24

    :sswitch_11
    const-string v1, "fault"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_24

    :sswitch_1b
    const-string v1, "offline"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :goto_24
    packed-switch v0, :pswitch_data_40

    goto :goto_35

    .line 65
    :pswitch_28
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    .line 66
    :try_start_2b
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$mlockedCleanup(Landroid/net/lowpan/LowpanCommissioningSession;)V

    .line 67
    monitor-exit v0

    goto :goto_35

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v1

    .line 70
    :cond_35
    :goto_35
    return-void

    :sswitch_data_36
    .sparse-switch
        -0x5c4df21d -> :sswitch_1b
        0x5cb3a22 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public blacklist onUpChanged(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 92
    return-void
.end method
