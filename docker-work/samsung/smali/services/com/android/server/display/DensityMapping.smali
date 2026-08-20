.class public Lcom/android/server/display/DensityMapping;
.super Ljava/lang/Object;
.source "DensityMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DensityMapping$Entry;
    }
.end annotation


# instance fields
.field public final mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;


# direct methods
.method public static synthetic $r8$lambda$xFXh2oerFieTO7wAJHpJfRN11Qc(Lcom/android/server/display/DensityMapping$Entry;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/display/DensityMapping;->lambda$new$0(Lcom/android/server/display/DensityMapping$Entry;)I

    move-result p0

    return p0
.end method

.method public constructor <init>([Lcom/android/server/display/DensityMapping$Entry;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/display/DensityMapping$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/DensityMapping$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 44
    iput-object p1, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    .line 45
    invoke-static {p1}, Lcom/android/server/display/DensityMapping;->verifyDensityMapping([Lcom/android/server/display/DensityMapping$Entry;)V

    return-void
.end method

.method public static createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;
    .registers 2

    .line 38
    new-instance v0, Lcom/android/server/display/DensityMapping;

    invoke-direct {v0, p0}, Lcom/android/server/display/DensityMapping;-><init>([Lcom/android/server/display/DensityMapping$Entry;)V

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/display/DensityMapping$Entry;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    return p0
.end method

.method public static verifyDensityMapping([Lcom/android/server/display/DensityMapping$Entry;)V
    .registers 7

    const/4 v0, 0x1

    .line 95
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_55

    add-int/lit8 v1, v0, -0x1

    .line 96
    aget-object v1, p0, v1

    .line 97
    aget-object v2, p0, v0

    .line 99
    iget v3, v1, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    iget v4, v2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    const-string v5, ", "

    if-eq v3, v4, :cond_38

    .line 106
    iget v3, v1, Lcom/android/server/display/DensityMapping$Entry;->density:I

    iget v4, v2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    if-gt v3, v4, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found two entries in the density mapping with increasing diagonal but decreasing density: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found two entries in the density mapping with the same diagonal: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    return-void
.end method


# virtual methods
.method public getDensityForResolution(II)I
    .registers 10

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    .line 62
    sget-object p2, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    .line 65
    iget-object p0, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    .line 66
    iget v3, v2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    if-gt v3, p1, :cond_16

    add-int/lit8 v1, v1, 0x1

    move-object p2, v2

    goto :goto_9

    :cond_15
    const/4 v2, 0x0

    .line 75
    :cond_16
    iget p0, p2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    if-ne p0, p1, :cond_1d

    .line 76
    iget p0, p2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    return p0

    :cond_1d
    if-nez v2, :cond_23

    .line 83
    sget-object p0, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    move-object v2, p2

    move-object p2, p0

    .line 86
    :cond_23
    iget p0, p2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 87
    iget p0, v2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    int-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    int-to-double p0, p1

    .line 88
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    sub-double/2addr p0, v0

    .line 90
    iget v2, v2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    iget p2, p2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    sub-int/2addr v2, p2

    int-to-double v5, v2

    mul-double/2addr p0, v5

    sub-double/2addr v3, v0

    div-double/2addr p0, v3

    int-to-double v0, p2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DensityMapping{mDensityMappingEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    .line 116
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
