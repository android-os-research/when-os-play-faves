.class Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;
.super Ljava/lang/Object;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkKey"
.end annotation


# instance fields
.field private final blacklist mDataRat:Ljava/lang/String;

.field private final blacklist mPlmn:Ljava/lang/String;

.field private final blacklist mTac:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    .line 1174
    iput p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    .line 1175
    iput-object p3, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 1179
    instance-of v1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_33

    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    return v1

    .line 1187
    :cond_16
    check-cast p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;

    .line 1188
    iget-object v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    iget v3, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    if-ne v2, v3, :cond_33

    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    .line 1190
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    move v0, v1

    :cond_33
    :goto_33
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1195
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plmn"

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rat"

    .line 1201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mDataRat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Tac"

    .line 1202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkKey;->mTac:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
