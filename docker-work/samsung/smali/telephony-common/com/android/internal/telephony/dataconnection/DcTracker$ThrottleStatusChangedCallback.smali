.class Lcom/android/internal/telephony/dataconnection/DcTracker$ThrottleStatusChangedCallback;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThrottleStatusChangedCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$ThrottleStatusChangedCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$ThrottleStatusChangedCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void
.end method


# virtual methods
.method public blacklist onThrottleStatusChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 735
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ThrottleStatus;

    .line 736
    invoke-virtual {v0}, Landroid/telephony/data/ThrottleStatus;->getThrottleType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmApnContextsByType(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/data/ThrottleStatus;->getApnType()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v3, "dataUnthrottled"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApn(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto :goto_4

    :cond_2f
    return-void
.end method
