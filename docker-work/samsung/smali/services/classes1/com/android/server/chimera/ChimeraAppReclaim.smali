.class public Lcom/android/server/chimera/ChimeraAppReclaim;
.super Ljava/lang/Object;
.source "ChimeraAppReclaim.java"


# static fields
.field public static final MIN_TARGET_PSS:J = 0x2800L

.field public static final PKG_CACHE_GC_MAP_MAX_SIZE:I = 0x32

.field public static final PKG_CACHE_RECLAIMABLE_MAP_MAX_SIZE:I = 0x32

.field public static final RECLAIM_TARGET:J = 0x7800L


# instance fields
.field public TAG:Ljava/lang/String;

.field public mActionGcCnt:I

.field public mActionReclaimCnt:I

.field public mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mPkgCacheReclaimable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPkgGcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSkipReclaimCnt:I

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppManager;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChimeraAppReclaim"

    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    .line 23
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    .line 24
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    .line 30
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 31
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    return-void
.end method


# virtual methods
.method public final performCompaction(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/reclaim"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_31

    .line 36
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    .line 37
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_31

    const/4 p0, 0x1

    return p0

    :catchall_27
    move-exception p1

    .line 35
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p2

    :try_start_2d
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_31

    :catch_31
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception performCompaction, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public performGc(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "performGc"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    :try_start_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 115
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_f

    .line 119
    :cond_26
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 120
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v5, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v4, v5}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v4

    const-wide/16 v6, 0x2800

    cmp-long v6, v4, v6

    if-gez v6, :cond_60

    .line 123
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v6, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "performGc skiped pss "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 126
    :cond_60
    iget-object v6, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v7, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "performGc before "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v4, v3}, Lcom/android/server/chimera/SystemRepository;->forceGc(I)V

    goto :goto_2c

    .line 129
    :cond_95
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    iget v1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionGcCnt:I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_a2} :catch_a8

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    goto :goto_c1

    :catch_a8
    move-exception p1

    .line 138
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception performGc, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public performReclaimCache(Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 45
    iget-object v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    const-string v3, "Start performReclaimCache"

    invoke-interface {v0, v2, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_b
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemFree()J

    move-result-wide v2

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 51
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 52
    iget-object v8, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    iget-object v9, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    goto :goto_16

    .line 58
    :cond_2d
    iget-object v8, v7, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 59
    iget-object v12, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v13, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v12, v13}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v12

    const-wide/16 v14, 0x2800

    cmp-long v14, v12, v14

    if-gez v14, :cond_67

    .line 62
    iget-object v9, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v10, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "performReclaimCache skiped pss "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_67
    const-string v14, "file"

    .line 65
    iget v15, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v1, v14, v15}, Lcom/android/server/chimera/ChimeraAppReclaim;->performCompaction(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_72

    goto :goto_33

    :cond_72
    add-int/lit8 v0, v0, 0x1

    .line 69
    iget v14, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    .line 70
    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v15, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v14, v15}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v14

    .line 71
    iget-object v10, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v11, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    move/from16 p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    const-string/jumbo v6, "performReclaimCache "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pss before "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " pss after "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v12, v14

    if-ltz v0, :cond_c1

    sub-long/2addr v12, v14

    add-long/2addr v4, v12

    :cond_c1
    const-wide/16 v9, 0x7800

    cmp-long v0, v4, v9

    if-ltz v0, :cond_ca

    move/from16 v0, p1

    goto :goto_d2

    :cond_ca
    move/from16 v0, p1

    move-object/from16 v6, v16

    goto/16 :goto_33

    :cond_d0
    move-object/from16 v16, v6

    .line 79
    :goto_d2
    iget-object v6, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    iget-object v7, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-wide/16 v6, 0x7800

    cmp-long v6, v4, v6

    if-ltz v6, :cond_e0

    goto :goto_e4

    :cond_e0
    move-object/from16 v6, v16

    goto/16 :goto_16

    :cond_e4
    :goto_e4
    if-nez v0, :cond_ed

    .line 86
    iget v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    goto :goto_135

    .line 88
    :cond_ed
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemFree()J

    move-result-wide v4

    .line 89
    iget-object v0, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v6, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "memFreeBefore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " memFreeAfter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " memFree delta: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11b} :catch_11c

    goto :goto_135

    :catch_11c
    move-exception v0

    .line 92
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception performReclaimCache, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_135
    return-void
.end method

.method public updateGcPackage(Ljava/lang/String;)V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_10

    .line 105
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 107
    :cond_10
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updatePackageCacheReclaimable(Ljava/lang/String;)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_10

    .line 98
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    :cond_10
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
