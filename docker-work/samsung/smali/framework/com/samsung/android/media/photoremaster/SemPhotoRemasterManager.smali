.class public Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.super Ljava/lang/Object;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;
    }
.end annotation


# static fields
.field public static final whitelist PARAMETER_AMOUNT_REMASTER_IMAGES:I = 0x3ee

.field private static final blacklist PARAMETER_ENGINE_VERSION:I = 0x3e8

.field public static final whitelist PARAMETER_ENUM_ENHANCE_TYPE:I = 0x899

.field public static final blacklist PARAMETER_JPEG_QUALITY:I = 0x3f0

.field public static final whitelist PARAMETER_LAST_MODIFIED_DATETIME_INPUT:I = 0x3ec

.field public static final whitelist PARAMETER_PATH_INPUT:I = 0x3ea

.field public static final whitelist PARAMETER_PATH_RESULT:I = 0x3eb

.field public static final whitelist PARAMETER_SCENETYPE_INPUT:I = 0x3ed

.field public static final blacklist PARAMETER_SET_OUTPUT_DIR:I = 0x3ef

.field public static final whitelist PARAMETER_TAG_ANALYZED_FULL:I = 0x835

.field public static final whitelist PARAMETER_TAG_ENHANCE_TYPE:I = 0x836

.field public static final whitelist PARAMETER_TAG_REVITALIZED:I = 0x837

.field public static final whitelist PARAMETER_URI_INPUT:I = 0x3e9

.field private static final blacklist TAG:Ljava/lang/String; = "SemPhotoRemasterManager"

.field private static blacklist sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized blacklist getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;
    .registers 3

    const-class v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    monitor-enter v0

    .line 144
    :try_start_3
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    if-nez v1, :cond_15

    .line 145
    const-string v1, "SemPhotoRemasterManager"

    const-string v2, "New Instance is created in getEngineInstance"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;-><init>()V

    sput-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;

    .line 148
    :cond_15
    sget-object v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized blacklist releaseEngineInstance()V
    .registers 5

    monitor-enter p0

    .line 157
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->sEngineInstance:Lcom/samsung/android/photoremaster/IDirector;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 159
    monitor-exit p0

    return-void

    .line 156
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist deinit()V
    .registers 5

    monitor-enter p0

    .line 175
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->deinit()V

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->releaseEngineInstance()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 179
    monitor-exit p0

    return-void

    .line 174
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist getParameter(I)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I

    monitor-enter p0

    .line 318
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_37

    .line 320
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_cd

    monitor-exit p0

    return-object v0

    .line 321
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_37
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_45

    .line 322
    :try_start_3b
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_cd

    monitor-exit p0

    return-object v0

    .line 323
    :cond_45
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_53

    .line 324
    :try_start_49
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_cd

    monitor-exit p0

    return-object v0

    .line 325
    :cond_53
    const/16 v0, 0x835

    if-ne p1, v0, :cond_61

    .line 326
    :try_start_57
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_cd

    monitor-exit p0

    return-object v0

    .line 327
    :cond_61
    const/16 v0, 0x836

    if-ne p1, v0, :cond_6f

    .line 328
    :try_start_65
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_cd

    monitor-exit p0

    return-object v0

    .line 329
    :cond_6f
    const/16 v0, 0x837

    if-ne p1, v0, :cond_7d

    .line 330
    :try_start_73
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getStringParam(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_cd

    monitor-exit p0

    return-object v0

    .line 331
    :cond_7d
    const/16 v0, 0x899

    if-ne p1, v0, :cond_a0

    .line 332
    :try_start_81
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 333
    .local v0, "director":Lcom/samsung/android/photoremaster/IDirector;
    instance-of v1, v0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    if-eqz v1, :cond_96

    .line 334
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 335
    .local v1, "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->getLongParam(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2
    :try_end_94
    .catchall {:try_start_81 .. :try_end_94} :catchall_cd

    monitor-exit p0

    return-object v2

    .line 337
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_96
    :try_start_96
    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->getIntParam(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_cd

    monitor-exit p0

    return-object v1

    .line 339
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    :cond_a0
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_b5

    .line 340
    :try_start_a4
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 341
    .restart local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 342
    .restart local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->getLongParam(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2
    :try_end_b3
    .catchall {:try_start_a4 .. :try_end_b3} :catchall_cd

    monitor-exit p0

    return-object v2

    .line 343
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_b5
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_ca

    .line 344
    :try_start_b9
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 345
    .restart local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 346
    .restart local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->getLongParam(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2
    :try_end_c8
    .catchall {:try_start_b9 .. :try_end_c8} :catchall_cd

    monitor-exit p0

    return-object v2

    .line 348
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_ca
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 317
    .end local p1    # "id":I
    :catchall_cd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 167
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/photoremaster/IDirector;->init(Landroid/content/Context;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 169
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist processAestheticScoring()F
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 247
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->processAestheticScoring()F

    move-result v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return v0

    .line 246
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist processImage(II)Z
    .registers 7
    .param p1, "processMode"    # I
    .param p2, "enhanceMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->processImage(II)Z

    move-result v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return v0

    .line 199
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceMode":I
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist processImage(ILjava/util/List;)Z
    .registers 7
    .param p1, "processMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .local p2, "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 226
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    .line 229
    .local v0, "director":Lcom/samsung/android/photoremaster/IDirector;
    instance-of v1, v0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    if-nez v1, :cond_3a

    .line 230
    const-string v1, "SemPhotoRemasterManager"

    const-string v2, "processImage(int, List<Integer>) is not supported below OneUI 4.1"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_43

    .line 231
    monitor-exit p0

    return v3

    .line 234
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_3a
    :try_start_3a
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;

    .line 235
    .local v1, "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->processImage(ILjava/util/List;)Z

    move-result v2
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_43

    monitor-exit p0

    return v2

    .line 225
    .end local v0    # "director":Lcom/samsung/android/photoremaster/IDirector;
    .end local v1    # "remasterDirector":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(IJ)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "value"    # J

    monitor-enter p0

    .line 290
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/photoremaster/IDirector;->setLongParam(IJ)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 292
    monitor-exit p0

    return-void

    .line 289
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":J
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(ILjava/lang/Object;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 259
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->setObjectParam(ILjava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 261
    monitor-exit p0

    return-void

    .line 258
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setParameter(ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 273
    :try_start_1
    const-string v0, "SemPhotoRemasterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/photoremaster/IDirector;->setStringParam(ILjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 275
    monitor-exit p0

    return-void

    .line 272
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist setProgressUpdateListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;

    monitor-enter p0

    .line 380
    if-nez p1, :cond_d

    .line 381
    :try_start_3
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 382
    monitor-exit p0

    return-void

    .line 385
    .end local p0    # "this":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;-><init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/photoremaster/IDirector;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1b

    .line 398
    monitor-exit p0

    return-void

    .line 379
    .end local p1    # "listener":Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ProgressUpdateListener;
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist stop()V
    .registers 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPhotoRemasterManager"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;->getEngineInstance()Lcom/samsung/android/photoremaster/IDirector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/photoremaster/IDirector;->stop()V

    .line 188
    return-void
.end method
