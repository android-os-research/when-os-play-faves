.class public Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MAX_HISTORY:I = 0x5

.field public static final TAG:Ljava/lang/String; = "MediaSessionStack"


# instance fields
.field public final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public final mCachedActiveLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsMultiSoundOn:Z

.field public mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

.field public final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field public final mPrevPlayedUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecordImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nyMWfY8y-oKBiMXRpysf6BGCrcs(Ljava/util/ArrayList;Ljava/lang/Integer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionStack;->lambda$getActiveSessionsSortedPlayback$0(Ljava/util/ArrayList;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 41
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 77
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    return-void
.end method

.method public static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 3

    add-int/lit8 p1, p1, 0x4

    .line 432
    array-length v0, p0

    if-lt p1, v0, :cond_8

    const-string p0, "<bottom of call stack>"

    return-object p0

    .line 435
    :cond_8
    aget-object p0, p0, p1

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallers(I)Ljava/lang/String;
    .registers 5

    .line 421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, p0, :cond_1f

    .line 424
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionStack;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 426
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getActiveSessionsSortedPlayback$0(Ljava/util/ArrayList;Ljava/lang/Integer;)Z
    .registers 2

    .line 464
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    return-void
.end method

.method public final clearCache(I)V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 416
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecordImpl;)Z
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Media button session is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sessions Stack - have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 357
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 358
    invoke-interface {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_52

    :cond_62
    return-void
.end method

.method public final findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 7

    .line 253
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 254
    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    if-eqz v3, :cond_18

    goto :goto_7

    .line 258
    :cond_18
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_7

    .line 259
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 260
    invoke-interface {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v3

    .line 259
    invoke-interface {v2, v3}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-object v2

    :cond_2f
    if-nez v1, :cond_7

    move-object v1, v2

    goto :goto_7

    :cond_33
    return-object v1
.end method

.method public getActiveSessions(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v0

    .line 287
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getActiveSessionsSortedPlayback(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 461
    new-instance p1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 462
    invoke-virtual {v3}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Ljava/util/List;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 463
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/MediaSessionStack$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/server/media/MediaSessionStack$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    .line 464
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 465
    new-instance v4, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    invoke-direct {v4, p1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 467
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, v2

    .line 468
    :goto_37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 469
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 473
    :cond_50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_56
    if-ltz p0, :cond_82

    .line 474
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 476
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 477
    :cond_66
    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 478
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 479
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v6

    if-ne v6, v3, :cond_66

    .line 480
    invoke-interface {v0, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 481
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_66

    :cond_7f
    add-int/lit8 p0, p0, -0x1

    goto :goto_56

    .line 487
    :cond_82
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 5

    const/4 v0, 0x1

    .line 341
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object p0

    .line 343
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_1c

    .line 345
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 346
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackTypeLocal()Z

    move-result v2

    if-nez v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 329
    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object p0

    .line 330
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_23

    .line 332
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 333
    invoke-virtual {v3, v0}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->canHandleVolumeKey()Z

    move-result v4

    if-eqz v4, :cond_20

    return-object v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecordImpl;
    .registers 1

    .line 318
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    return-object p0
.end method

.method public getMediaSessionRecord(Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 127
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_6

    .line 128
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 129
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPriorityList(ZI)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 382
    instance-of v4, v3, Lcom/android/server/media/MediaSessionRecord;

    if-nez v4, :cond_1e

    goto :goto_d

    .line 385
    :cond_1e
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    const/4 v4, -0x1

    if-eq p2, v4, :cond_2a

    .line 387
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    if-eq p2, v4, :cond_2a

    goto :goto_d

    .line 392
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    if-nez v4, :cond_36

    if-nez p1, :cond_d

    .line 396
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_36
    const/4 v4, 0x1

    .line 401
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v4

    if-eqz v4, :cond_46

    add-int/lit8 v4, v2, 0x1

    .line 402
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_d

    :cond_46
    add-int/lit8 v4, v1, 0x1

    .line 405
    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v4

    goto :goto_d

    :cond_4d
    return-object v0
.end method

.method public getSession2Tokens(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_20

    .line 302
    invoke-interface {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v2

    if-ne v2, p1, :cond_b

    .line 303
    :cond_20
    invoke-interface {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    move-result v2

    if-eqz v2, :cond_b

    instance-of v2, v1, Lcom/android/server/media/MediaSession2Record;

    if-eqz v2, :cond_b

    .line 305
    check-cast v1, Lcom/android/server/media/MediaSession2Record;

    .line 306
    invoke-virtual {v1}, Lcom/android/server/media/MediaSession2Record;->getSession2Token()Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_34
    return-object v0
.end method

.method public onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .registers 5

    if-eqz p2, :cond_41

    .line 146
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-boolean p2, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    const/4 p2, 0x1

    .line 148
    invoke-interface {p1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    invoke-interface {v1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 150
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3a

    .line 152
    :cond_2f
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3a

    .line 156
    :cond_35
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    :goto_3a
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 165
    :cond_41
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eqz p2, :cond_68

    invoke-interface {p2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result p2

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result p1

    if-ne p2, p1, :cond_68

    .line 166
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 167
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq p1, p2, :cond_68

    .line 169
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_68

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    :cond_68
    return-void
.end method

.method public onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 2

    .line 186
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne v0, p1, :cond_d

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 109
    :cond_d
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    return-void
.end method

.method public updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 323
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 324
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {p0, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecordImpl;Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method public updateMediaButtonSessionBySessionPolicyChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    .line 232
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getSessionPolicies()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 233
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    goto :goto_14

    .line 238
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    :cond_14
    :goto_14
    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .registers 11

    .line 196
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    const/4 v1, 0x2

    const-string v2, "MediaSessionStack"

    if-eqz v0, :cond_20

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionStack;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_20
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 200
    invoke-virtual {v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->getSortedAudioPlaybackClientUids()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    .line 201
    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a1

    .line 202
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 203
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v6

    if-nez v6, :cond_58

    .line 205
    sget-boolean v6, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v6, :cond_9e

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMediaButtonSessionIfNeeded, skipping uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 213
    :cond_58
    invoke-interface {v6}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    move-result v7

    and-int/2addr v7, v1

    if-eqz v7, :cond_61

    const/4 v7, 0x1

    goto :goto_62

    :cond_61
    move v7, v3

    .line 215
    :goto_62
    sget-boolean v8, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v8, :cond_8b

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateMediaButtonSessionIfNeeded, checking uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mediaButtonSession="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoreButtonSession="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    if-nez v7, :cond_9e

    .line 221
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    invoke-interface {v6}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 222
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    if-eq v6, v0, :cond_9d

    .line 223
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    :cond_9d
    return-void

    :cond_9e
    :goto_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_a1
    return-void
.end method

.method public updateMultiSoundInfo(Z)V
    .registers 2

    .line 447
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    return-void
.end method
