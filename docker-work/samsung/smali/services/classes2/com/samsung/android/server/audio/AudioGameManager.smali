.class public Lcom/samsung/android/server/audio/AudioGameManager;
.super Ljava/lang/Object;
.source "AudioGameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioGameManager"

.field public static final mMaxGameIdx:I = 0x100


# instance fields
.field public mAudioGameThread:Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

.field public mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mContext:Landroid/content/Context;

.field public mSemGameManager:Lcom/samsung/android/game/SemGameManager;

.field public mUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/audio/AudioGameManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemGameManager(Lcom/samsung/android/server/audio/AudioGameManager;)Lcom/samsung/android/game/SemGameManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidList(Lcom/samsung/android/server/audio/AudioGameManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {p1}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 49
    new-instance p1, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;-><init>(Lcom/samsung/android/server/audio/AudioGameManager;)V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mAudioGameThread:Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addGameUid(IZ)V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 63
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1d

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 68
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public deleteGameUid(I)V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 78
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public isGamePackager(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    .line 108
    :try_start_1
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_d
    const-string v0, "dolbygametest"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_13} :catch_16

    if-eqz p1, :cond_16

    :cond_15
    const/4 p0, 0x1

    :catch_16
    :cond_16
    return p0
.end method

.method public setParamGameUidList()V
    .registers 6

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "g_game_uid"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "0"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 89
    :cond_21
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 91
    :try_start_2d
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "|"

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 95
    :cond_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_6b

    :goto_4e
    const-string v1, "AudioGameManager"

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    if-eqz p0, :cond_63

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_6a

    .line 102
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_6a
    return-void

    :catchall_6b
    move-exception p0

    .line 95
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method
