.class public Lcom/samsung/android/server/audio/CoverHelper;
.super Ljava/lang/Object;
.source "CoverHelper.java"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/CoverHelper;


# instance fields
.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mIsCoverSafetyVolume:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/server/audio/CoverHelper;
    .registers 2

    const-class v0, Lcom/samsung/android/server/audio/CoverHelper;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/samsung/android/server/audio/CoverHelper;

    invoke-direct {v1}, Lcom/samsung/android/server/audio/CoverHelper;-><init>()V

    sput-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    .line 39
    :cond_e
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3

    .line 43
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-void
.end method

.method public isCoverOpen()Z
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/audio/CoverHelper;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 48
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    return v0
.end method

.method public isCoverSafetyVolume()Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/CoverHelper;->mIsCoverSafetyVolume:Z

    return p0
.end method

.method public setCoverSafetyVolume(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/CoverHelper;->mIsCoverSafetyVolume:Z

    return-void
.end method
