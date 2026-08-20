.class public Lcom/android/server/wm/BackgroundLaunchProcessController;
.super Ljava/lang/Object;
.source "BackgroundLaunchProcessController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public final mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

.field public mBackgroundActivityStartTokens:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Binder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mBoundClientUids:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(Ljava/util/function/IntPredicate;Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    .line 71
    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-void
.end method


# virtual methods
.method public addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V
    .registers 4

    .line 209
    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 211
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public areBackgroundActivityStartsAllowed(IILjava/lang/String;IZZZJJJ)Z
    .registers 26

    move v0, p1

    move/from16 v1, p4

    const/4 v2, 0x2

    const-string v3, "[Process("

    const-string v4, "ActivityTaskManager"

    const/4 v5, 0x1

    if-ne v1, v2, :cond_6e

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v8, v6, p10

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1d

    sub-long v6, v6, p12

    cmp-long v6, v6, v10

    if-gez v6, :cond_6e

    :cond_1d
    cmp-long v6, p10, p8

    if-gtz v6, :cond_4a

    cmp-long v6, p12, p8

    if-lez v6, :cond_26

    goto :goto_4a

    .line 98
    :cond_26
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v6, :cond_6e

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")] Activity start within "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms grace period but also within stop app switch window"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 91
    :cond_4a
    :goto_4a
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_6d

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")] Activity start allowed: within "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms grace period"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return v5

    :cond_6e
    :goto_6e
    if-eqz p7, :cond_8c

    .line 108
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_8b

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")] Activity start allowed: process instrumenting with background activity starts privileges"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    return v5

    :cond_8c
    if-eqz p6, :cond_ae

    if-eq v1, v2, :cond_92

    if-ne v1, v5, :cond_ae

    .line 118
    :cond_92
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_ad

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")] Activity start allowed: process has activity in foreground task"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    return v5

    .line 125
    :cond_ae
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBoundByForegroundUid()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 126
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_cf

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")] Activity start allowed: process bound by foreground uid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    return v5

    :cond_d0
    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move/from16 v7, p5

    .line 133
    invoke-virtual {p0, p2, p3, v7}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 134
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v1, :cond_f6

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")] Activity start allowed: process allowed by token"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    return v5

    :cond_f7
    const/4 v0, 0x0

    return v0
.end method

.method public canCloseSystemDialogsByToken(I)Z
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 237
    :cond_6
    monitor-enter p0

    .line 238
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_20

    .line 239
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_20

    .line 242
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    .line 243
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 242
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartCallback;->canCloseSystemDialogs(Ljava/util/Collection;I)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 240
    :cond_20
    :goto_20
    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    .line 244
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 248
    monitor-enter p0

    .line 249
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3f

    .line 250
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 251
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Background activity start tokens (token: originating token):"

    .line 252
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_3f

    .line 254
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    .line 255
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ": "

    .line 257
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 261
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 262
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "BoundClientUids:"

    .line 263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    :cond_5e
    monitor-exit p0

    return-void

    :catchall_60
    move-exception p1

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public final isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Z
    .registers 5

    .line 150
    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_23

    .line 152
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_23

    :cond_c
    const/4 v0, 0x1

    if-eqz p3, :cond_11

    .line 157
    monitor-exit p0

    return v0

    .line 160
    :cond_11
    iget-object p3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    if-nez p3, :cond_17

    .line 162
    monitor-exit p0

    return v0

    .line 165
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    .line 166
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 165
    invoke-interface {p3, v0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartCallback;->isActivityStartAllowed(Ljava/util/Collection;ILjava/lang/String;)Z

    move-result p1

    monitor-exit p0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x0

    .line 153
    monitor-exit p0

    return p1

    :catchall_26
    move-exception p1

    .line 167
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public final isBoundByForegroundUid()Z
    .registers 5

    .line 171
    monitor-enter p0

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_20

    .line 173
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_20

    .line 174
    iget-object v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 175
    monitor-exit p0

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 179
    :cond_20
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 3

    .line 222
    monitor-enter p0

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartTokens:Landroid/util/ArrayMap;

    if-eqz v0, :cond_8

    .line 224
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public setBoundClientUids(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 184
    monitor-enter p0

    if-eqz p1, :cond_35

    .line 185
    :try_start_3
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_35

    .line 189
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    if-nez v0, :cond_16

    .line 190
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    goto :goto_19

    .line 192
    :cond_16
    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 194
    :goto_19
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f
    if-ltz v0, :cond_33

    .line 195
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 197
    :cond_33
    monitor-exit p0

    return-void

    :cond_35
    :goto_35
    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBoundClientUids:Landroid/util/IntArray;

    .line 187
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    .line 197
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method
