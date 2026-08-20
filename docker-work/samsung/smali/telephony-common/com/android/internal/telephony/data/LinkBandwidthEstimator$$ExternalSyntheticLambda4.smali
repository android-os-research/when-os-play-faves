.class public final synthetic Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;

    iget v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;->f$1:I

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->$r8$lambda$OpErj909JmjLhUwu95Jn5BuHz74(Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;II)V

    return-void
.end method
