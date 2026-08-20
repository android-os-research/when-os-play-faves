.class Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SstSubscriptionsChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemServiceStateTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionInfoChanged - subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$SstSubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$mcheckAndNotifyRilConnected(Lcom/android/internal/telephony/SemServiceStateTracker;)Z

    :cond_31
    return-void
.end method
