.class public final Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
.super Ljava/lang/Object;
.source "IonMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/IonMemoryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IonAllocations"
.end annotation


# instance fields
.field public count:I

.field public maxSizeInBytes:J

.field public pid:I

.field public totalSizeInBytes:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_31

    .line 149
    const-class v2, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_31

    .line 150
    :cond_10
    check-cast p1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 151
    iget v2, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    iget v3, p1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    if-ne v2, v3, :cond_2f

    iget-wide v2, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    iget-wide v4, p1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2f

    iget v2, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget v3, p1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    if-ne v2, v3, :cond_2f

    iget-wide v2, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    iget-wide p0, p1, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 157
    iget v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IonAllocations{pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
