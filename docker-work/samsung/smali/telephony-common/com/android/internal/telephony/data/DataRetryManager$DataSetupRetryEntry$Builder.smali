.class public Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;
.super Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder<",
        "TT;>;>",
        "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mDataProfile:Landroid/telephony/data/DataProfile;

.field private blacklist mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

.field private blacklist mSetupRetryType:I

.field private blacklist mTransport:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 723
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;-><init>()V

    const/4 v0, 0x0

    .line 725
    iput v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mSetupRetryType:I

    const/4 v0, -0x1

    .line 734
    iput v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mTransport:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;
    .registers 11

    .line 788
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    if-eqz v2, :cond_5c

    .line 791
    iget v4, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mTransport:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v4, v1, :cond_26

    if-ne v4, v0, :cond_d

    goto :goto_26

    .line 793
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mTransport:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_26
    :goto_26
    iget v3, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mSetupRetryType:I

    if-eq v3, v1, :cond_46

    if-ne v3, v0, :cond_2d

    goto :goto_46

    .line 797
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid setup retry type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mSetupRetryType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_46
    :goto_46
    new-instance v9, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mDataProfile:Landroid/telephony/data/DataProfile;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->mAppliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;

    iget-wide v7, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->mRetryDelayMillis:J

    const/4 p0, 0x0

    move-object v0, v9

    move v1, v3

    move-object v3, v5

    move-object v5, v6

    move-wide v6, v7

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;-><init>(ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;JLcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry-IA;)V

    return-object v9

    .line 789
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "network request list is not specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/data/DataProfile;",
            ")",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 767
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method public blacklist setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            ")",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 756
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mNetworkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    return-object p0
.end method

.method public blacklist setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 744
    iput p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mSetupRetryType:I

    return-object p0
.end method

.method public blacklist setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 778
    iput p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->mTransport:I

    return-object p0
.end method
