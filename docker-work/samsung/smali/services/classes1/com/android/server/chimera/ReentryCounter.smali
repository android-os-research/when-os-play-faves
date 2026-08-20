.class public Lcom/android/server/chimera/ReentryCounter;
.super Ljava/lang/Object;
.source "ReentryCounter.java"

# interfaces
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;
.implements Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;


# static fields
.field public static final REENTRY_BUFFER_SIZE:I = 0x32

.field public static final TAG:Ljava/lang/String; = "ReentryCounter"


# instance fields
.field public mEnableReentry:Z

.field public mLaunchedAppCnt:I

.field public mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPkgReentryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mTargetReentryCount:F


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/server/chimera/ReentryCounter;->mLaunchedAppCnt:I

    .line 17
    iput-boolean v0, p0, Lcom/android/server/chimera/ReentryCounter;->mEnableReentry:Z

    .line 20
    iput-object p1, p0, Lcom/android/server/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 21
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Ljava/lang/Integer;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 22
    invoke-interface {p1, p0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 23
    invoke-interface {p1, p0}, Lcom/android/server/chimera/SystemRepository;->registerUidObserver(Lcom/android/server/chimera/SystemRepository$ChimeraUidObserver;)V

    return-void
.end method


# virtual methods
.method public getReentry()F
    .registers 6

    .line 37
    iget-object v0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_a
    iget-object p0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_21

    aget-object v4, p0, v2

    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_21
    int-to-float p0, v3

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public isReentryEnabled()Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/android/server/chimera/ReentryCounter;->mEnableReentry:Z

    return p0
.end method

.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 8

    if-eqz p3, :cond_65

    if-eqz p6, :cond_5

    goto :goto_65

    .line 70
    :cond_5
    iget-object p1, p0, Lcom/android/server/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const/4 p2, 0x0

    aget-object p3, p5, p2

    invoke-interface {p1, p3, p4}, Lcom/android/server/chimera/SystemRepository;->hasPkgIcon(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 71
    array-length p1, p5

    move p3, p2

    :goto_12
    if-ge p3, p1, :cond_2a

    aget-object p4, p5, p3

    .line 72
    iget-object p6, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {p6, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_27

    .line 73
    iget-object p6, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p6, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    .line 78
    :cond_2a
    iget-object p1, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 79
    iget-object p4, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    add-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 82
    :cond_56
    iget p1, p0, Lcom/android/server/chimera/ReentryCounter;->mLaunchedAppCnt:I

    int-to-float p2, p1

    iget p4, p0, Lcom/android/server/chimera/ReentryCounter;->mTargetReentryCount:F

    cmpl-float p2, p2, p4

    if-lez p2, :cond_62

    .line 83
    iput-boolean p3, p0, Lcom/android/server/chimera/ReentryCounter;->mEnableReentry:Z

    goto :goto_65

    :cond_62
    add-int/2addr p1, p3

    .line 85
    iput p1, p0, Lcom/android/server/chimera/ReentryCounter;->mLaunchedAppCnt:I

    :cond_65
    :goto_65
    return-void
.end method

.method public onUidGone(ILjava/lang/String;)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 51
    iget-object v0, p0, Lcom/android/server/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->isKilledByRecentTask(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 52
    iget-object p0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 54
    :cond_16
    iget-object p1, p0, Lcom/android/server/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app reentry info: app name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  reentry count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    .line 55
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReentryCounter"

    .line 54
    invoke-interface {p1, v1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryBuffer:Lcom/android/internal/util/RingBuffer;

    iget-object v0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 58
    iget-object p0, p0, Lcom/android/server/chimera/ReentryCounter;->mPkgReentryMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 6

    .line 91
    iget-object p2, p0, Lcom/android/server/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p2, p1}, Lcom/android/server/chimera/SystemRepository;->isApp(I)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 92
    iget-object p2, p0, Lcom/android/server/chimera/ReentryCounter;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p2, p1}, Lcom/android/server/chimera/SystemRepository;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1a

    aget-object v2, p2, v1

    .line 93
    invoke-virtual {p0, p1, v2}, Lcom/android/server/chimera/ReentryCounter;->onUidGone(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method public setTargetReentryCount(F)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/android/server/chimera/ReentryCounter;->mTargetReentryCount:F

    return-void
.end method
