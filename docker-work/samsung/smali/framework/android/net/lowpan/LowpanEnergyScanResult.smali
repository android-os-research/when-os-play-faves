.class public Landroid/net/lowpan/LowpanEnergyScanResult;
.super Ljava/lang/Object;
.source "LowpanEnergyScanResult.java"


# static fields
.field public static final blacklist UNKNOWN:I = 0x7fffffff


# instance fields
.field private blacklist mChannel:I

.field private blacklist mMaxRssi:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    .line 29
    iput v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist getChannel()I
    .registers 2

    .line 34
    iget v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    return v0
.end method

.method public blacklist getMaxRssi()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    return v0
.end method

.method blacklist setChannel(I)V
    .registers 2
    .param p1, "x"    # I

    .line 42
    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    .line 43
    return-void
.end method

.method blacklist setMaxRssi(I)V
    .registers 2
    .param p1, "x"    # I

    .line 46
    iput p1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    .line 47
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LowpanEnergyScanResult(channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRssi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/lowpan/LowpanEnergyScanResult;->mMaxRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
