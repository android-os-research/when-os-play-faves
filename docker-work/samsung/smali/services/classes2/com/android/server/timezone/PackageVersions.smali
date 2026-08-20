.class public final Lcom/android/server/timezone/PackageVersions;
.super Ljava/lang/Object;
.source "PackageVersions.java"


# instance fields
.field public final mDataAppVersion:J

.field public final mUpdateAppVersion:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    .line 29
    iput-wide p3, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 37
    const-class v2, Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_26

    .line 41
    :cond_10
    check-cast p1, Lcom/android/server/timezone/PackageVersions;

    .line 43
    iget-wide v2, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    iget-wide v4, p1, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    return v1

    .line 46
    :cond_1b
    iget-wide v2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    iget-wide p0, p1, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 51
    iget-wide v0, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageVersions{mUpdateAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDataAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
