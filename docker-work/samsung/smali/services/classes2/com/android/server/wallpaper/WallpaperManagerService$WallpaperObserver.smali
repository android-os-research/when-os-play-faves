.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperObserver"
.end annotation


# instance fields
.field public final mSemObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

.field public final mUserId:I

.field public final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field public final mWallpaperDir:Ljava/io/File;

.field public final mWallpaperFile:Ljava/io/File;

.field public final mWallpaperLockFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateEvent(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;ILjava/lang/String;Ljava/io/File;ZZ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6

    .line 352
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 358
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 359
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 360
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "wallpaper_orig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 361
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "wallpaper_lock_orig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 364
    new-instance v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$smgetWallpaperLockDir(I)Ljava/io/File;

    move-result-object p2

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-direct {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-direct {v1, v0, p2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;-><init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    return-void
.end method


# virtual methods
.method public dataForEvent(ZZI)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 5

    .line 370
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    if-eqz p2, :cond_18

    .line 372
    :try_start_9
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object p2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {p2, v0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p2

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_2e

    :cond_18
    const/4 p2, 0x0

    :goto_19
    if-nez p2, :cond_27

    .line 376
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object p2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {p2, v0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p2

    .line 378
    :cond_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_16

    if-eqz p2, :cond_2b

    goto :goto_2d

    .line 379
    :cond_2b
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_2d
    return-object p2

    .line 378
    :goto_2e
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_16

    throw p0
.end method

.method public final updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    const/16 v7, 0x80

    if-ne v1, v7, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    :goto_11
    const/16 v8, 0x8

    if-eq v1, v8, :cond_1a

    if-eqz v7, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v9, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v9, 0x1

    :goto_1b
    if-eqz p3, :cond_2c

    .line 401
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "wallpaper_desktop"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2c

    move v10, v8

    goto :goto_51

    :cond_2c
    if-eqz p3, :cond_3e

    .line 403
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "wallpaper_sub_display"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3e

    const/16 v10, 0x10

    goto :goto_51

    :cond_3e
    if-eqz p3, :cond_50

    .line 405
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "wallpaper_virtual_display"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_50

    const/16 v10, 0x20

    goto :goto_51

    :cond_50
    const/4 v10, 0x4

    .line 419
    :goto_51
    invoke-virtual {v0, v3, v4, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZZI)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    const/4 v11, 0x0

    if-eqz v4, :cond_5d

    .line 422
    iget-object v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v12, v11}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setDlsSemColors(Landroid/app/SemWallpaperColors;)V

    .line 425
    :cond_5d
    iget v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v12}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v12

    if-eqz v2, :cond_d6

    const-string/jumbo v13, "wallpaper"

    .line 428
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d6

    const-string v13, "WallpaperManagerService"

    .line 429
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper file change: evt="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " path="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sys="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " lock="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " imagePending="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " whichPending=0x"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " written="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " which="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " primaryColors:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v13, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    const/4 v2, 0x2

    if-eqz v7, :cond_f0

    if-eqz v4, :cond_f0

    .line 450
    invoke-static/range {p3 .. p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 451
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v3

    or-int/2addr v2, v10

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    .line 452
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v15, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void

    .line 456
    :cond_f0
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    if-nez v3, :cond_100

    if-eqz v4, :cond_fc

    goto :goto_100

    :cond_fc
    move-object v7, v15

    const/4 v5, 0x0

    goto/16 :goto_2cd

    .line 462
    :cond_100
    :goto_100
    :try_start_100
    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v14, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    or-int/lit8 v2, v10, 0x2

    invoke-virtual {v13, v14, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v13

    .line 463
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v14}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsCopied()Z

    move-result v14

    const-string v5, "WallpaperManagerService"

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lock wallpaper is copied = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v5, :cond_12d

    const/4 v5, 0x0

    .line 466
    iput-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 469
    :cond_12d
    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v5

    if-eqz v5, :cond_13b

    .line 470
    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 473
    :cond_13b
    iget v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_147

    if-eqz v4, :cond_147

    goto :goto_19b

    .line 475
    :cond_147
    iget v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v5

    if-ne v5, v8, :cond_179

    if-eqz v3, :cond_179

    .line 476
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5, v13, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 477
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 478
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_19b

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_19b

    .line 479
    iget v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_19b

    .line 480
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v8

    iget v11, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-virtual {v5, v8, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    goto :goto_19b

    .line 484
    :cond_179
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 485
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_19b

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_19b

    .line 486
    iget v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_19b

    .line 487
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v8

    iget v11, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-virtual {v5, v8, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    .line 492
    :cond_19b
    :goto_19b
    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v5

    const/4 v8, 0x5

    if-eq v5, v8, :cond_1ab

    .line 493
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-static {v5, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mresetSemWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 497
    :cond_1ab
    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_1bb

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1bb

    iget-boolean v8, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-nez v8, :cond_1bb

    if-eqz v3, :cond_fc

    if-ne v1, v5, :cond_fc

    :cond_1bb
    const-string v5, "WallpaperManagerService"

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wallpaper.imageWallpaperPending = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WallpaperManagerService"

    .line 503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "needToGenerateSysCropWallpaper = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1e8

    const/16 v11, 0x8

    if-ne v1, v11, :cond_1e8

    const/4 v1, 0x1

    goto :goto_1e9

    :cond_1e8
    const/4 v1, 0x0

    :goto_1e9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_fc

    .line 514
    invoke-static/range {p3 .. p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    if-eqz v7, :cond_202

    .line 522
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v7, 0x1

    invoke-static {v1, v5, v7, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mloadSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V

    .line 525
    :cond_202
    invoke-virtual {v15}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v1

    if-eqz v1, :cond_20d

    .line 527
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 531
    :cond_20d
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object v7, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v5, v7}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    const-string v1, "WallpaperManagerService"

    const-string v5, "Crop done; invoking completion callback"

    .line 533
    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 534
    iput-boolean v1, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v3, :cond_292

    .line 539
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result v5

    if-eqz v5, :cond_237

    if-eqz v14, :cond_235

    goto :goto_237

    :cond_235
    const/4 v1, 0x0

    goto :goto_246

    :cond_237
    :goto_237
    if-eqz v14, :cond_245

    .line 541
    invoke-static {v12}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_245

    .line 542
    iget-object v1, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsCopied(Z)V

    :cond_245
    const/4 v1, 0x2

    .line 546
    :goto_246
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    invoke-direct {v5, v0, v15}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 556
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    or-int v8, v12, v10

    invoke-static {v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mbindComponentNow(Lcom/android/server/wallpaper/WallpaperManagerService;I)Z

    move-result v7

    if-eqz v7, :cond_264

    .line 557
    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v7, v15

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v16}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mbindWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_28e

    :cond_264
    move-object v7, v15

    .line 560
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_28e

    const/4 v5, 0x1

    and-int/lit8 v9, v12, 0x1

    if-ne v9, v5, :cond_28e

    const-string v5, "WallpaperManagerService"

    const-string/jumbo v9, "updateEvent: send command to update cached wallpaper for homescreen."

    .line 562
    invoke-static {v5, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "which"

    .line 564
    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    iget-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string/jumbo v9, "refresh_cache"

    invoke-virtual {v8, v9, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendWindowWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 566
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_28e
    :goto_28e
    or-int/lit8 v5, v10, 0x1

    or-int/2addr v1, v5

    goto :goto_294

    :cond_292
    move v5, v1

    move-object v7, v15

    :goto_294
    if-eqz v4, :cond_2bc

    if-nez v4, :cond_2a3

    .line 585
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v5

    iget v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v5, v8, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    .line 593
    :cond_2a3
    iget-object v5, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v5

    if-nez v5, :cond_2bb

    .line 594
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v8

    invoke-virtual {v5, v8, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    .line 595
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mcleanUpWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_2bb
    or-int/2addr v1, v2

    .line 601
    :cond_2bc
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v2, v5, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$msaveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    if-eqz v4, :cond_2ce

    if-nez v3, :cond_2ce

    .line 604
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2ce

    :goto_2cd
    move v1, v5

    .line 609
    :cond_2ce
    :goto_2ce
    monitor-exit v6
    :try_end_2cf
    .catchall {:try_start_100 .. :try_end_2cf} :catchall_2d7

    if-eqz v1, :cond_2d6

    .line 613
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_2d6
    return-void

    :catchall_2d7
    move-exception v0

    .line 609
    :try_start_2d8
    monitor-exit v6
    :try_end_2d9
    .catchall {:try_start_2d8 .. :try_end_2d9} :catchall_2d7

    throw v0
.end method
