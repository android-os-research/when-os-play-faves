.class public Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;
.super Ljava/lang/Object;
.source "ActiveMusicRecordFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;
    }
.end annotation


# instance fields
.field public mActiveMusicRecordPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mIsUsingAudioList:Z

.field public mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

.field public mTTSPkgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTTSPkgsUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;
    .registers 1

    .line 42
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 14

    .line 64
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result v0

    if-nez v0, :cond_23

    .line 65
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    .line 70
    :cond_23
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_35

    const-string v2, "audio"

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    :cond_35
    const-string v0, "com.sec.android.app.fm"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_4a

    .line 75
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result p0

    if-eqz p0, :cond_49

    return v2

    :cond_49
    return v1

    .line 82
    :cond_4a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 85
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x4

    if-eq p4, v0, :cond_6b

    const/16 v0, 0xf

    if-eq p4, v0, :cond_6b

    const/16 v0, 0x10

    if-eq p4, v0, :cond_6b

    :cond_63
    const/16 v0, 0x13

    if-ne p4, v0, :cond_8a

    iget-boolean p4, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    if-nez p4, :cond_8a

    .line 90
    :cond_6b
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p4, :cond_8a

    invoke-virtual {p4, p1, p3}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_8a

    .line 91
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    monitor-enter p4

    .line 92
    :try_start_78
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit p4

    return v2

    :catchall_87
    move-exception p0

    monitor-exit p4
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_87

    throw p0

    .line 98
    :cond_8a
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    monitor-enter p4

    .line 99
    :try_start_8d
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/32 v5, 0x493e0

    if-eqz v0, :cond_a9

    .line 101
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_a9

    .line 102
    monitor-exit p4

    return v2

    .line 104
    :cond_a9
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit p4
    :try_end_b3
    .catchall {:try_start_8d .. :try_end_b3} :catchall_fa

    .line 108
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p4

    if-eqz p4, :cond_c7

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_f3

    .line 109
    :cond_c7
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 110
    :try_start_ca
    iget-object p4, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_e0

    .line 111
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 112
    monitor-exit v0

    return v2

    .line 114
    :cond_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_ca .. :try_end_e1} :catchall_f7

    .line 115
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    monitor-enter p1

    .line 116
    :try_start_e4
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f2

    .line 117
    monitor-exit p1

    return v2

    .line 119
    :cond_f2
    monitor-exit p1

    :cond_f3
    return v1

    :catchall_f4
    move-exception p0

    monitor-exit p1
    :try_end_f6
    .catchall {:try_start_e4 .. :try_end_f6} :catchall_f4

    throw p0

    :catchall_f7
    move-exception p0

    .line 114
    :try_start_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw p0

    :catchall_fa
    move-exception p0

    .line 106
    :try_start_fb
    monitor-exit p4
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw p0
.end method

.method public getUidListUsingAudio()V
    .registers 8

    .line 126
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    if-nez v0, :cond_e

    .line 127
    const-class v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 130
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    if-eqz v0, :cond_3b

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->getUidListUsingAudio()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 134
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 135
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v4

    goto :goto_1e

    :catchall_38
    move-exception p0

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    if-nez p1, :cond_10

    .line 50
    const-class p1, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    :cond_10
    return-void
.end method

.method public onTTSPkgBind(Ljava/lang/Integer;)V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 168
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onTTSPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_12

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :cond_12
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 149
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onTTSPkgUnBindAll()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 176
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onTTSPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 156
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 158
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 159
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
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

.method public setUsingAudioList(Z)V
    .registers 2

    .line 180
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    return-void
.end method
