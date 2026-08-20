.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/ims/ImsManager$ImsStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2

    .line 5340
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEnabledMmTelCapabilitiesChanged(IIZ)V
    .registers 6

    .line 5346
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsSetFeatureValue(IIII)V

    .line 5347
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$9;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/ImsStats;->onSetFeatureResponse(III)V

    return-void
.end method
