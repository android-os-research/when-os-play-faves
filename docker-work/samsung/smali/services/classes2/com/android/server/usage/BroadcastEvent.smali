.class public Lcom/android/server/usage/BroadcastEvent;
.super Ljava/lang/Object;
.source "BroadcastEvent.java"


# instance fields
.field public mIdForResponseEvent:J

.field public mSourceUid:I

.field public mTargetPackage:Ljava/lang/String;

.field public mTargetUserId:I

.field public final mTimestampsMs:Landroid/util/LongArrayQueue;


# direct methods
.method public constructor <init>(ILjava/lang/String;IJ)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 39
    iput-object p2, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    .line 41
    iput-wide p4, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 42
    new-instance p1, Landroid/util/LongArrayQueue;

    invoke-direct {p1}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    return-void
.end method


# virtual methods
.method public addTimestampMs(J)V
    .registers 3

    .line 66
    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongArrayQueue;->addLast(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 74
    instance-of v2, p1, Lcom/android/server/usage/BroadcastEvent;

    if-nez v2, :cond_c

    goto :goto_2f

    .line 77
    :cond_c
    check-cast p1, Lcom/android/server/usage/BroadcastEvent;

    .line 78
    iget v2, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    iget v3, p1, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    if-ne v2, v3, :cond_2d

    iget-wide v2, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    iget-wide v4, p1, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    iget v2, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    iget v3, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    if-ne v2, v3, :cond_2d

    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public getIdForResponseEvent()J
    .registers 3

    .line 58
    iget-wide v0, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    return-wide v0
.end method

.method public getSourceUid()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    return p0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetUserId()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    return p0
.end method

.method public getTimestampsMs()Landroid/util/LongArrayQueue;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastEvent {srcUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",tgtPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tgtUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
