.class public Lcom/android/server/wm/MultiWindowBlockListRepository;
.super Ljava/lang/Object;
.source "MultiWindowBlockListRepository.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowBlockListRepository$H;
    }
.end annotation


# static fields
.field public static final PACKAGE_VALUE_BLOCK_LIST:Ljava/lang/String; = "b"

.field public static final TAG:Ljava/lang/String; = "MultiWindowBlockListController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBlocklistPackages:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeferredBlocklistPackages:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/MultiWindowBlockListRepository$H;

.field public final mLock:Ljava/lang/Object;

.field public final mPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/MultiWindowBlockListRepository;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/MultiWindowBlockListRepository;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateDeferredBlockListLocked(Lcom/android/server/wm/MultiWindowBlockListRepository;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->updateDeferredBlockListLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/MultiWindowSupportPolicyController;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 72
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 73
    sget-object p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void
.end method


# virtual methods
.method public addBlockPackage(Ljava/lang/String;)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->update()V

    .line 157
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 205
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_8

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiWindowBlockListRepository;->dumpDebug(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_b

    .line 208
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiWindowBlockListRepository;->dumpRelease(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public dumpDebug(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    const-string v0, "BlockList : "

    .line 234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_44

    const-string v1, "(mBlocklistPackages)"

    .line 237
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 241
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    .line 242
    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_3b

    .line 243
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 244
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3b
    const-string v4, " "

    .line 246
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_20

    .line 248
    :cond_41
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 251
    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7e

    const-string v1, "(mDeferredBlocklistPackages)"

    .line 252
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 257
    rem-int/lit8 v1, v2, 0x5

    if-nez v1, :cond_75

    .line 258
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_75
    const-string v1, " "

    .line 261
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5a

    .line 263
    :cond_7b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 265
    :cond_7e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 266
    monitor-exit v0

    return-void

    :catchall_83
    move-exception p0

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_8 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public dumpRelease(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "K Total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Deferred : "

    .line 215
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 219
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 221
    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_4f

    .line 222
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4f
    const-string v2, " "

    .line 225
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_34

    .line 227
    :cond_55
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 229
    :cond_58
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 230
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public getBlocklistAppList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->getFinalBlockListLocked()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final getFinalBlockListLocked()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    return-object p0

    .line 141
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 143
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 145
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 147
    :cond_2e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_32
    return-object v0
.end method

.method public initialize()V
    .registers 3

    .line 77
    new-instance v0, Lcom/android/server/wm/MultiWindowBlockListRepository$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiWindowBlockListRepository$H;-><init>(Lcom/android/server/wm/MultiWindowBlockListRepository;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mH:Lcom/android/server/wm/MultiWindowBlockListRepository$H;

    return-void
.end method

.method public isBlocklistApp(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->getFinalBlockListLocked()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 173
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isMultiSplitBlocklistPackageLocked(Ljava/lang/String;)Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 87
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "b"

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 89
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 92
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->update()V

    .line 93
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public removeBlockPackage(Ljava/lang/String;)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mBlocklistPackages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->update()V

    .line 164
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public removeFromDeferredBlocklistIfNeeedLocked(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 102
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    return-void

    .line 105
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_c
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 110
    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public update()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mH:Lcom/android/server/wm/MultiWindowBlockListRepository$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mH:Lcom/android/server/wm/MultiWindowBlockListRepository$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final updateDeferredBlockListLocked()V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 123
    iget-object v2, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    .line 124
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_13

    .line 127
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDeferredResizeModeTaskLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    iget-object v1, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 131
    :cond_42
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDeferredBlockListLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowBlockListRepository;->mDeferredBlocklistPackages:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiWindowBlockListController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void
.end method
