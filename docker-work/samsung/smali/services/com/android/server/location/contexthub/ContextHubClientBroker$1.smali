.class public Lcom/android/server/location/contexthub/ContextHubClientBroker$1;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubClientBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubClientBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->-$$Nest$fgetmIsPermQueryIssued(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    const-string p0, "ContextHubClientBroker"

    const-string p1, "Permissions query failed, but still received nanoapp state"

    .line 250
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_16
    if-eqz p2, :cond_4a

    .line 252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/location/NanoAppState;

    .line 253
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->-$$Nest$fgetmMessageChannelNanoappIdMap(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 254
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppState;->getNanoAppPermissions()Ljava/util/List;

    move-result-object v0

    .line 255
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppState;->getNanoAppId()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->-$$Nest$mupdateNanoAppAuthState(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLjava/util/List;Z)I

    goto :goto_1c

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onTransactionComplete(I)V
    .registers 2

    return-void
.end method
