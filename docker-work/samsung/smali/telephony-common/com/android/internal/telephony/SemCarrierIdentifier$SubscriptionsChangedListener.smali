.class Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCarrierIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionsChangedListener"
.end annotation


# instance fields
.field final blacklist mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemCarrierIdentifier;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/SemCarrierIdentifier;)V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemCarrierIdentifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v0, :cond_6c

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {v2}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemCarrierIdentifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") SubscriptionListener.onSubscriptionInfoChanged subId from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->d(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_LOAD_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6c

    .line 68
    :cond_5d
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$SubscriptionsChangedListener;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->SIM_ABSENT_EVENT:Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierEvent;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6c
    :goto_6c
    return-void
.end method
