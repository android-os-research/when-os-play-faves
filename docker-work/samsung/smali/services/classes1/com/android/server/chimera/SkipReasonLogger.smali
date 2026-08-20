.class public Lcom/android/server/chimera/SkipReasonLogger;
.super Ljava/lang/Object;
.source "SkipReasonLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/SkipReasonLogger$Reason;
    }
.end annotation


# instance fields
.field public final mSkippedPids:[Ljava/util/Set;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 39
    iput-object p1, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const/4 p1, 0x0

    .line 41
    :goto_f
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_22

    .line 42
    iget-object v0, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 69
    :goto_1
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 70
    iget-object v1, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p0, p0, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V
    .registers 4

    .line 47
    invoke-virtual {p1}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    invoke-virtual {p0, v0, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public printLog(Ljava/lang/String;)V
    .registers 8

    .line 11
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 12
    iget-object v4, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 13
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v5, v3

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/chimera/SkipReasonLogger;->printSkippedPids(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2a
    return-void
.end method

.method public final printSkippedPids(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipped reason: "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 59
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", pids: "

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 62
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 65
    :cond_35
    iget-object p0, p0, Lcom/android/server/chimera/SkipReasonLogger;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
