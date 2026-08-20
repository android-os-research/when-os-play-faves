.class public Lcom/android/server/am/PlatformCompatCache$CacheItem;
.super Ljava/lang/Object;
.source "PlatformCompatCache.java"

# interfaces
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PlatformCompatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheItem"
.end annotation


# instance fields
.field public final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mChangeId:J

.field public final mLock:Ljava/lang/Object;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;J)V
    .registers 5

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    .line 152
    iput-object p1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 153
    iput-wide p2, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mChangeId:J

    .line 154
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    return-void
.end method


# virtual methods
.method public fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 181
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-wide v2, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mChangeId:J

    .line 182
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-ltz p2, :cond_1e

    .line 185
    iget-object p0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 187
    :cond_1e
    iget-object p0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_25
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public invalidate(Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_13

    .line 162
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 164
    :cond_13
    iget-object v2, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 165
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2f

    .line 166
    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 169
    :cond_2f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_35
    move-exception p0

    .line 170
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_10

    .line 196
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    .line 198
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

.method public onCompatChange(Ljava/lang/String;)V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_28

    .line 206
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_23

    .line 208
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    goto :goto_28

    .line 210
    :cond_23
    iget-object p0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 213
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method
