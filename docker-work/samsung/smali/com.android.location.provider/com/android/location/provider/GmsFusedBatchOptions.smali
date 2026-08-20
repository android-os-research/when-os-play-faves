.class public Lcom/android/location/provider/GmsFusedBatchOptions;
.super Ljava/lang/Object;
.source "GmsFusedBatchOptions.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/GmsFusedBatchOptions$BatchFlags;,
        Lcom/android/location/provider/GmsFusedBatchOptions$SourceTechnologies;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .registers 3

    .line 34
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPeriodInNS()J
    .registers 3

    .line 40
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSmallestDisplacementMeters()F
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getSourcesToUse()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isFlagSet(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isSourceToUseSet(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public resetFlag(I)V
    .registers 2
    .param p1, "flag"    # I

    .line 63
    return-void
.end method

.method public resetSourceToUse(I)V
    .registers 2
    .param p1, "source"    # I

    .line 51
    return-void
.end method

.method public setFlag(I)V
    .registers 2
    .param p1, "flag"    # I

    .line 61
    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .registers 3
    .param p1, "value"    # D

    .line 31
    return-void
.end method

.method public setPeriodInNS(J)V
    .registers 3
    .param p1, "value"    # J

    .line 37
    return-void
.end method

.method public setSmallestDisplacementMeters(F)V
    .registers 2
    .param p1, "value"    # F

    .line 43
    return-void
.end method

.method public setSourceToUse(I)V
    .registers 2
    .param p1, "source"    # I

    .line 49
    return-void
.end method
