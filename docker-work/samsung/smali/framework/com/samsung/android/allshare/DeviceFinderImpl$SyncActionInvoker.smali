.class Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
.super Ljava/lang/Object;
.source "DeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/DeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncActionInvoker"
.end annotation


# instance fields
.field private blacklist mMessage:Lcom/sec/android/allshare/iface/CVMessage;

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/allshare/DeviceFinderImpl;)V
    .registers 2

    .line 517
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance p1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 518
    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;)V
    .registers 3
    .param p2, "action_id"    # Ljava/lang/String;

    .line 520
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance p1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 521
    invoke-virtual {p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist invoke()Landroid/os/Bundle;
    .registers 4

    .line 533
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/DeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/DeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/DeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/DeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    .line 534
    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2a

    .line 537
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/DeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/DeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/DeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-interface {v0, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v0

    .line 538
    .local v0, "resMessage":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v0, :cond_25

    .line 539
    return-object v1

    .line 541
    :cond_25
    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 535
    .end local v0    # "resMessage":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method blacklist putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method blacklist putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 529
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 530
    return-void
.end method
