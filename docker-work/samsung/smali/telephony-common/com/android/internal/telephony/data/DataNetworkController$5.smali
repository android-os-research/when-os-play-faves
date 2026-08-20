.class Lcom/android/internal/telephony/data/DataNetworkController$5;
.super Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 869
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    .line 879
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 881
    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method public blacklist onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 5

    .line 886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    .line 889
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getApnTypeNetworkCapability()I

    move-result v1

    .line 888
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 890
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v1

    if-ne v1, v0, :cond_3a

    .line 891
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataNetworkHandoverRetryStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already on the preferred transport "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 891
    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    return-void

    .line 897
    :cond_3a
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->shouldDelayImsTearDown()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 898
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataNetworkHandoverRetryStopped: Delay IMS tear down until call ends. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    return-void

    .line 903
    :cond_57
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mtearDownGracefully(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method public blacklist onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 2

    .line 873
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method
