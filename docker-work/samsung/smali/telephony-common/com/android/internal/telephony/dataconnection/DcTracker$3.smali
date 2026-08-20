.class Lcom/android/internal/telephony/dataconnection/DcTracker$3;
.super Landroid/net/NetworkPolicyManager$SubscriptionCallback;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSubscriptionOverride(III[I)V
    .registers 9

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-eq v0, p1, :cond_d

    goto :goto_74

    .line 753
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_23

    aget v3, p4, v2

    .line 755
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 758
    :cond_23
    iget-object p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription override: overrideMask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", overrideValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", networkTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    const/4 p4, 0x1

    if-ne p2, p4, :cond_5f

    .line 762
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmUnmeteredNetworkTypes(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/util/List;)V

    .line 763
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz p3, :cond_56

    move v1, p4

    :cond_56
    invoke-static {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmUnmeteredOverride(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 764
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mreevaluateUnmeteredConnections(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_74

    :cond_5f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_74

    .line 766
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmCongestedNetworkTypes(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/util/List;)V

    .line 767
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz p3, :cond_6c

    move v1, p4

    :cond_6c
    invoke-static {p1, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmCongestedOverride(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 768
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mreevaluateCongestedConnections(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    :cond_74
    :goto_74
    return-void
.end method

.method public blacklist onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 4

    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-eq v0, p1, :cond_d

    goto :goto_37

    .line 776
    :cond_d
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmSubscriptionPlans(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/util/List;)V

    .line 777
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SubscriptionPlans changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmSubscriptionPlans(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 778
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mreevaluateUnmeteredConnections(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    :cond_37
    :goto_37
    return-void
.end method
