.class public Lcom/android/server/DssController;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DssController$Tools;,
        Lcom/android/server/DssController$PairConfiguration;,
        Lcom/android/server/DssController$RunningPackage;,
        Lcom/android/server/DssController$DssAppDate;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DssController"

.field public static sDssController:Lcom/android/server/DssController;


# instance fields
.field public final DEBUG_DSS:Z

.field public final DEFAULT_CPU_LEVEL:I

.field public final DEFAULT_GAME_SIOP_LEVEL:I

.field public final DEFAULT_GPU_LEVEL:I

.field public final DEFAULT_SCALE:F

.field public final FLOAT_EPSILON:F

.field public final mAllowList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DssController$DssAppDate;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunningPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DssController$RunningPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_GAME_SIOP_LEVEL:I

    .line 52
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_CPU_LEVEL:I

    .line 53
    iput v0, p0, Lcom/android/server/DssController;->DEFAULT_GPU_LEVEL:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    iput v1, p0, Lcom/android/server/DssController;->DEFAULT_SCALE:F

    const v1, 0x3a83126f    # 0.001f

    .line 55
    iput v1, p0, Lcom/android/server/DssController;->FLOAT_EPSILON:F

    .line 56
    iput-boolean v0, p0, Lcom/android/server/DssController;->DEBUG_DSS:Z

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    return-void
.end method

.method public static getService()Lcom/android/server/DssController;
    .registers 1

    .line 45
    sget-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    if-nez v0, :cond_b

    .line 46
    new-instance v0, Lcom/android/server/DssController;

    invoke-direct {v0}, Lcom/android/server/DssController;-><init>()V

    sput-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    .line 48
    :cond_b
    sget-object v0, Lcom/android/server/DssController;->sDssController:Lcom/android/server/DssController;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPackageData(Ljava/lang/String;F)V
    .registers 4

    monitor-enter p0

    .line 242
    :try_start_1
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssController$DssAppDate;-><init>(Lcom/android/server/DssController;)V

    .line 243
    invoke-virtual {v0, p2}, Lcom/android/server/DssController$DssAppDate;->addPackage(F)V

    .line 244
    iget-object p2, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 245
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FI)V
    .registers 5

    monitor-enter p0

    .line 249
    :try_start_1
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssController$DssAppDate;-><init>(Lcom/android/server/DssController;)V

    .line 250
    invoke-virtual {v0, p2, p3}, Lcom/android/server/DssController$DssAppDate;->addPackage(FI)V

    .line 251
    iget-object p2, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 252
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FLjava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 256
    :try_start_1
    new-instance v0, Lcom/android/server/DssController$DssAppDate;

    invoke-direct {v0, p0}, Lcom/android/server/DssController$DssAppDate;-><init>(Lcom/android/server/DssController;)V

    .line 257
    invoke-virtual {v0, p2, p3}, Lcom/android/server/DssController$DssAppDate;->addPackage(FLjava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 259
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createScaledConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;
    .registers 4

    .line 434
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 435
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result p0

    .line 436
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 437
    invoke-static {p2, p0}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    move-object p1, p2

    :cond_13
    return-object p1
.end method

.method public declared-synchronized getAllowList()Ljava/lang/StringBuilder;
    .registers 9

    monitor-enter p0

    .line 302
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    iget-object v3, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DssController$DssAppDate;

    iget v5, v5, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_46

    .line 310
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 311
    :cond_46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DssController$DssAppDate;

    iget v5, v5, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/high16 v7, 0x3f400000    # 0.75f

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1a

    .line 313
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_63
    const-string v3, "DSS 0.5 Group\n"

    .line 317
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=============\n"

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    :cond_86
    const-string v1, "\n"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DSS 0.75 Group\n"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=============\n"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_99

    :cond_ae
    const-string v1, "\n"

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b3
    .catchall {:try_start_1 .. :try_end_b3} :catchall_b5

    .line 333
    monitor-exit p0

    return-object v0

    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDssForPackage(Ljava/lang/String;)F
    .registers 4

    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 208
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$DssAppDate;

    iget v0, p1, Lcom/android/server/DssController$DssAppDate;->mScale:F
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 210
    :cond_17
    monitor-exit p0

    return v0

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGameSiopLevel(Ljava/lang/String;)I
    .registers 3

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 227
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$DssAppDate;

    .line 228
    iget p1, p1, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    monitor-exit p0

    return p1

    :cond_15
    const/4 p1, 0x0

    .line 230
    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGameSiopLevelString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 235
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$DssAppDate;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    monitor-exit p0

    return-object p1

    :cond_2b
    :try_start_2b
    const-string p1, "0,0"
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_2f

    .line 238
    monitor-exit p0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getScalingFactor(I)F
    .registers 2

    monitor-enter p0

    .line 359
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)F
    .registers 4

    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_f

    :try_start_5
    const-string v1, "com.winzo.gold"

    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_23

    if-eqz v1, :cond_f

    .line 364
    monitor-exit p0

    return v0

    .line 365
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 366
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$RunningPackage;

    iget v0, p1, Lcom/android/server/DssController$RunningPackage;->mDssScale:F
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_23

    .line 365
    :cond_21
    monitor-exit p0

    return v0

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isScaledApp(I)Z
    .registers 2

    monitor-enter p0

    .line 348
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isScaledApp(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 352
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1f

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 353
    monitor-exit p0

    return v1

    .line 355
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$RunningPackage;

    iget p1, p1, Lcom/android/server/DssController$RunningPackage;->mDssScale:F
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    monitor-exit p0

    return v1

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;IZ)F
    .registers 6

    monitor-enter p0

    .line 395
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 397
    iget-object p3, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$RunningPackage;

    .line 398
    iget-object p3, p1, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget p1, p1, Lcom/android/server/DssController$RunningPackage;->mDssScale:F

    goto :goto_41

    .line 403
    :cond_1d
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_36

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p3, :cond_2c

    goto :goto_36

    .line 404
    :cond_2c
    iget-object p3, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/DssController$DssAppDate;

    iget v1, p3, Lcom/android/server/DssController$DssAppDate;->mScale:F

    .line 406
    :cond_36
    :goto_36
    iget-object p3, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/DssController$RunningPackage;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/DssController$RunningPackage;-><init>(Lcom/android/server/DssController;IF)V

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_43

    move p1, v1

    .line 409
    :goto_41
    monitor-exit p0

    return p1

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .registers 6

    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController$RunningPackage;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    if-nez v0, :cond_d

    .line 415
    monitor-exit p0

    return-void

    .line 417
    :cond_d
    :try_start_d
    iget-object v1, v0, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1c

    .line 423
    iget-object p2, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 427
    :cond_1c
    iget-object p1, v0, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_27

    .line 429
    :goto_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final pidToPkg(I)Ljava/lang/String;
    .registers 5

    .line 338
    iget-object p0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DssController$RunningPackage;

    iget-object v1, v1, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return-object p0
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 262
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 265
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 4

    .line 443
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 444
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result p0

    .line 445
    invoke-static {p1, p0}, Lcom/android/server/DssController$Tools;->applyDssToConfiguration(Landroid/content/res/Configuration;F)V

    :cond_d
    return-void
.end method

.method public scaleExistingMergedConfiguration(Landroid/util/MergedConfiguration;Ljava/lang/String;)V
    .registers 4

    .line 450
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->isScaledApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 451
    invoke-virtual {p0, p2}, Lcom/android/server/DssController;->getScalingFactor(Ljava/lang/String;)F

    move-result p0

    .line 452
    invoke-static {p1, p0}, Lcom/android/server/DssController$Tools;->applyDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V

    :cond_d
    return-void
.end method

.method public declared-synchronized setDssForPackage(Ljava/lang/String;F)V
    .registers 5

    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p2, v0

    .line 218
    :try_start_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->removePackage(Ljava/lang/String;)V

    goto :goto_17

    .line 221
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DssController;->addPackageData(Ljava/lang/String;F)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    .line 223
    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUsesOwnResolution(ILjava/lang/String;Z)V
    .registers 5

    monitor-enter p0

    .line 374
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/DssController;->pidToPkg(I)Ljava/lang/String;

    move-result-object p1

    .line 376
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_24

    if-nez v0, :cond_f

    .line 381
    monitor-exit p0

    return-void

    .line 383
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$RunningPackage;

    iget-object p1, p1, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    if-eqz p3, :cond_1f

    .line 385
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 387
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_24

    .line 390
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showAllDSSInfo()V
    .registers 7

    monitor-enter p0

    .line 268
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mAllowList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 275
    iget-object v2, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DssController$RunningPackage;

    .line 279
    iget-object v2, v1, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 280
    :goto_3d
    iget-object v5, v1, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/DssController$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_72
    const-string v2, ""

    .line 286
    :goto_74
    iget-object v4, v1, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    if-eqz v3, :cond_8f

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    :cond_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a6
    .catchall {:try_start_1 .. :try_end_a6} :catchall_ab

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 299
    :cond_a9
    monitor-exit p0

    return-void

    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized usesOwnResolution(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DssController;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DssController$RunningPackage;

    if-eqz p1, :cond_15

    .line 370
    iget-object p1, p1, Lcom/android/server/DssController$RunningPackage;->mFixedSizeSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
