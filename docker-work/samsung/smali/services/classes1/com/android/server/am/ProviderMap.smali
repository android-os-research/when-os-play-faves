.class public final Lcom/android/server/am/ProviderMap;
.super Ljava/lang/Object;
.source "ProviderMap.java"


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "ProviderMap"


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mProvidersByClassPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mProvidersByNamePerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSingletonByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSingletonByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 67
    iput-object p1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    move-object v7, p0

    move/from16 v8, p5

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v8, v9, :cond_c

    if-nez v8, :cond_a

    goto :goto_c

    :cond_a
    move v11, v10

    goto :goto_1c

    .line 223
    :cond_c
    :goto_c
    iget-object v5, v7, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    move v11, v0

    :goto_1c
    const/4 v12, 0x1

    if-nez p3, :cond_22

    if-eqz v11, :cond_22

    return v12

    :cond_22
    if-ne v8, v9, :cond_4b

    .line 230
    :goto_24
    iget-object v0, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_5f

    .line 231
    iget-object v0, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 232
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 231
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_48

    if-nez p3, :cond_47

    return v12

    :cond_47
    move v11, v12

    :cond_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    .line 241
    :cond_4b
    invoke-virtual {p0, v8}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_5f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 243
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v11, v0

    :cond_5f
    return v11
.end method

.method public final collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 201
    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p5, 0x0

    move v0, p5

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    const/4 v2, 0x1

    if-eqz p1, :cond_34

    .line 202
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 203
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz p2, :cond_34

    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 205
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_34

    :cond_32
    move v3, p5

    goto :goto_35

    :cond_34
    :goto_34
    move v3, v2

    :goto_35
    if-eqz v3, :cond_a

    .line 206
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_43

    if-nez p4, :cond_43

    .line 207
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_43
    if-nez p3, :cond_46

    return v2

    .line 212
    :cond_46
    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_a

    :cond_4b
    return v0
.end method

.method public final dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    .registers 15

    .line 377
    iget-object v0, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move-object v6, v0

    .line 378
    array-length v0, p5

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_2a

    aget-object v2, p5, v1

    if-nez p6, :cond_27

    const-string v3, "--proto"

    .line 379
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz v6, :cond_26

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 381
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V

    :cond_26
    return-void

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 386
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 388
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "PROVIDER "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p1, " pid="

    .line 390
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_5d

    .line 392
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_62

    :cond_5d
    const-string p1, "(not running)"

    .line 394
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_62
    if-eqz p6, :cond_68

    const/4 p1, 0x1

    .line 397
    invoke-virtual {p4, p3, v0, p1}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 399
    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_3e .. :try_end_69} :catchall_81

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v6, :cond_80

    const-string p1, "    Client:"

    .line 401
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    const-string v2, "      "

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 403
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V

    :cond_80
    return-void

    :catchall_81
    move-exception p0

    .line 399
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 16

    .line 354
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 356
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    if-gtz p5, :cond_c

    return v0

    :cond_c
    const/4 p5, 0x1

    move v1, v0

    .line 361
    :goto_e
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    if-eqz v1, :cond_19

    .line 363
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 366
    :cond_19
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    const-string v3, ""

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    move v1, p5

    goto :goto_e

    :cond_2e
    return p5
.end method

.method public dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 14

    .line 414
    array-length v0, p4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    .line 415
    array-length p4, p4

    const-string v0, "--proto"

    aput-object v0, v8, p4

    .line 417
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 419
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    if-gtz p4, :cond_1b

    return v0

    :cond_1b
    move p4, v0

    .line 424
    :goto_1c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_3e

    .line 425
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    .line 427
    iget-object v2, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_3b

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 428
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V

    return v1

    :cond_3b
    add-int/lit8 p4, p4, 0x1

    goto :goto_1c

    :cond_3e
    return v0
.end method

.method public final dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 252
    invoke-virtual {p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p6, 0x0

    move v0, p6

    .line 254
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 255
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p3, :cond_29

    .line 257
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_a

    :cond_29
    if-eqz p5, :cond_31

    const-string p5, ""

    .line 261
    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p5, p6

    :cond_31
    if-eqz p4, :cond_37

    .line 265
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :cond_37
    const/4 v0, 0x1

    const-string v2, "  * "

    .line 269
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "    "

    .line 271
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_a

    :cond_46
    return v0
.end method

.method public final dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 278
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p5, 0x0

    move v0, p5

    .line 280
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 281
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p2, :cond_29

    .line 283
    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_a

    :cond_29
    if-eqz p4, :cond_31

    const-string p4, ""

    .line 287
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, p5

    :cond_31
    if-eqz p3, :cond_37

    .line 291
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_37
    const/4 v0, 0x1

    const-string v3, "  "

    .line 295
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ": "

    .line 297
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_53
    return v0
.end method

.method public dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 14

    .line 306
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 307
    iget-object v8, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    const/4 v7, 0x0

    const-string v6, "  Published single-user content providers (by class):"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    move v9, v1

    .line 312
    :goto_1a
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_54

    .line 313
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/HashMap;

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Published user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 315
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " content providers (by class):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, v0

    .line 314
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_54
    if-eqz p2, :cond_9d

    .line 320
    iget-object v7, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    const-string v5, "  Single-user authority to provider mappings:"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result p2

    or-int/2addr p2, v0

    move v0, p2

    .line 323
    :goto_64
    iget-object p2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_9d

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 325
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " authority to provider mappings:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 327
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/util/HashMap;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, v0

    .line 324
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result p2

    or-int/2addr v0, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_9d
    return v0
.end method

.method public final dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;Landroid/app/IApplicationThread;[Ljava/lang/String;)V
    .registers 8

    .line 442
    :try_start_0
    new-instance p0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_23

    .line 445
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iget-object p4, p4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {p4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 444
    invoke-interface {p5, v0, p4, p6}, Landroid/app/IApplicationThread;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    const-wide/16 p4, 0x7d0

    .line 449
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    .line 451
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_3e

    :catchall_1e
    move-exception p1

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 452
    throw p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_23

    :catch_23
    const-string p0, "      Got a RemoteException while dumping the service"

    .line 456
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e

    :catch_29
    move-exception p0

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "      Failure while dumping the provider: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method public getProviderByClass(Landroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3

    const/4 v0, -0x1

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p0

    return-object p0
.end method

.method public getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_b

    return-object v0

    .line 103
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public getProviderByName(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3

    const/4 v0, -0x1

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p0

    return-object p0
.end method

.method public getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    if-eqz v0, :cond_b

    return-object v0

    .line 85
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    return-object p0
.end method

.method public getProvidersByClass(I)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 184
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 185
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_16

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    return-object v0

    .line 183
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProvidersByName(I)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 172
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_16

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    return-object v0

    .line 171
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-static {p1}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 339
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 340
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    .line 341
    :goto_1e
    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 342
    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 345
    :cond_38
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 346
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_4c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 348
    new-instance p0, Lcom/android/server/am/ProviderMap$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/am/ProviderMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v1

    :catchall_4c
    move-exception p0

    .line 346
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 4

    .line 124
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_a

    .line 125
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 127
    :cond_a
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    return-void
.end method

.method public putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 4

    .line 111
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_a

    .line 112
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 114
    :cond_a
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    return-void
.end method

.method public removeProviderByClass(Landroid/content/ComponentName;I)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_e
    if-ltz p2, :cond_23

    .line 161
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 165
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_22
    :goto_22
    return-void

    .line 157
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeProviderByName(Ljava/lang/String;I)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 136
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_e
    if-ltz p2, :cond_23

    .line 142
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 146
    iget-object p0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_22
    :goto_22
    return-void

    .line 138
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
