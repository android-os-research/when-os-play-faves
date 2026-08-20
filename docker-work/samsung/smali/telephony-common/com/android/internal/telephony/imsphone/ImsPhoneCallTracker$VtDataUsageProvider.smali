.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;
.super Landroid/net/netstats/provider/NetworkStatsProvider;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VtDataUsageProvider"
.end annotation


# instance fields
.field private blacklist mIfaceSnapshot:Landroid/net/NetworkStats;

.field private blacklist mToken:I

.field private blacklist mUidSnapshot:Landroid/net/NetworkStats;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 5

    .line 446
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    const/4 p1, 0x0

    .line 447
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mToken:I

    .line 448
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 449
    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v1, v2, p1}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method public whitelist onRequestStatsUpdate(I)V
    .registers 6

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmState(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2a

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmConnections(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 457
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 459
    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto :goto_14

    .line 464
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmVtDataUsageSnapshot(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmVtDataUsageUidSnapshot(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/net/NetworkStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 466
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmVtDataUsageProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mToken:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/net/netstats/provider/NetworkStatsProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 467
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 469
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$VtDataUsageProvider;->mToken:I

    return-void
.end method

.method public whitelist onSetAlert(J)V
    .registers 3

    return-void
.end method

.method public whitelist onSetLimit(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method
