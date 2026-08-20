.class public Lcom/android/server/devicepolicy/NetworkLogger$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/NetworkLogger;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .registers 13

    .line 78
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmIsLoggingEnabled(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 83
    :cond_d
    invoke-virtual {p0, p5}, Lcom/android/server/devicepolicy/NetworkLogger$1;->shouldLogNetworkEvent(I)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 86
    :cond_14
    new-instance v0, Landroid/app/admin/ConnectEvent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmPm(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    .line 63
    iget-object v2, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmIsLoggingEnabled(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 68
    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/NetworkLogger$1;->shouldLogNetworkEvent(I)Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    .line 71
    :cond_17
    new-instance v2, Landroid/app/admin/DnsEvent;

    iget-object v3, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v3}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmPm(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    return-void
.end method

.method public final sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmNetworkLoggingHandler(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "network_event"

    .line 95
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 97
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmNetworkLoggingHandler(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final shouldLogNetworkEvent(I)Z
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmTargetUserId(Lcom/android/server/devicepolicy/NetworkLogger;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmTargetUserId(Lcom/android/server/devicepolicy/NetworkLogger;)I

    move-result p0

    .line 102
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method
