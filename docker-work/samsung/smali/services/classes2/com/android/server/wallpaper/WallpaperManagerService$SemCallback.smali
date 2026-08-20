.class public Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 8817
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;
    .registers 11

    .line 9074
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9075
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 9076
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_22d

    const/4 v0, 0x0

    if-nez v1, :cond_1d

    const-string p0, "WallpaperManagerService"

    const-string p1, "calcSemWallpaperColors, wallpaper == null"

    .line 9079
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1d
    const-string v2, "WallpaperManagerService"

    .line 9083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcSemWallpaperColors "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9090
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v2

    if-eq p1, v2, :cond_6d

    const-string v2, "WallpaperManagerService"

    .line 9091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calcSemWallpaperColors:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9092
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    .line 9099
    :cond_6d
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_19d

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v2

    .line 9100
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result v2

    if-nez v2, :cond_8a

    goto/16 :goto_19d

    .line 9126
    :cond_8a
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9127
    :try_start_91
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_a5

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_ba

    :cond_a5
    const-string v3, "WallpaperManagerService"

    const-string/jumbo v6, "wallpaper.croppedBitmap == null"

    .line 9128
    invoke-static {v3, v6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9129
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v3

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3, v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 9132
    :cond_ba
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_e3

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e3

    .line 9133
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v6}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_ec

    :cond_e3
    const-string v3, "WallpaperManagerService"

    const-string/jumbo v6, "wallpaper.croppedBitmap == null or recycled"

    .line 9135
    invoke-static {v3, v6}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    .line 9137
    :goto_ec
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_91 .. :try_end_ed} :catchall_19a

    if-eqz v3, :cond_192

    const-string v2, "WallpaperManagerService"

    .line 9140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "croppedBitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_11d

    .line 9141
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v2

    if-nez v2, :cond_11d

    .line 9142
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v3, v6, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->smartCropBitmap(Landroid/graphics/Bitmap;Lcom/samsung/server/wallpaper/SemWallpaperData;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 9147
    :cond_11d
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_148

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v2

    if-eqz v2, :cond_148

    if-nez p2, :cond_12e

    move v4, v5

    .line 9149
    :cond_12e
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v2

    if-eq v2, v4, :cond_148

    .line 9150
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getPreloadRotatedCroppedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_148
    if-nez v3, :cond_14b

    return-object v0

    .line 9158
    :cond_14b
    :try_start_14b
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, p1, p2, v0}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object v0
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_155} :catch_156

    goto :goto_199

    :catch_156
    move-exception p0

    const-string p2, "WallpaperManagerService"

    .line 9160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", which = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", smart crop info = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_199

    :cond_192
    const-string p0, "WallpaperManagerService"

    const-string p1, "croppedBitmap == null"

    .line 9163
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_199
    return-object v0

    :catchall_19a
    move-exception p0

    .line 9137
    :try_start_19b
    monitor-exit v2
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19a

    throw p0

    :cond_19d
    :goto_19d
    const-string p2, "WallpaperManagerService"

    .line 9101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpaper don\'t need to calc wpType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9103
    new-instance p2, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {p2}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    .line 9104
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p1

    if-ne p1, v5, :cond_1c9

    .line 9105
    invoke-virtual {p2, v5}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    goto :goto_1cc

    .line 9107
    :cond_1c9
    invoke-virtual {p2, v4}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    :goto_1cc
    const/4 p1, 0x0

    .line 9109
    invoke-virtual {p2, p1}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 9112
    :try_start_1d0
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    invoke-virtual {p1, v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object p1

    .line 9113
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1ea} :catch_1ec

    move-object v0, p0

    goto :goto_203

    :catch_1ec
    move-exception p0

    const-string p1, "WallpaperManagerService"

    .line 9115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcSemWallpaperColors - live case Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_203
    const-string p0, "WallpaperManagerService"

    .line 9117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calcSemWallpaperColors - live case drawable: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_228

    .line 9118
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_228

    .line 9119
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/SemWallpaperColors$Builder;->setThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/app/SemWallpaperColors$Builder;

    .line 9121
    :cond_228
    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0

    :catchall_22d
    move-exception p0

    .line 9076
    :try_start_22e
    monitor-exit v0
    :try_end_22f
    .catchall {:try_start_22e .. :try_end_22f} :catchall_22d

    throw p0
.end method

.method public handleOMCWallpaperUpdated()V
    .registers 1

    .line 9069
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->handleOMCWallpaperUpdatedLocked()V

    return-void
.end method

.method public handleWallpaperBindingTimeout()V
    .registers 10

    .line 8929
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8930
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 8931
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    goto :goto_3b

    .line 8933
    :cond_31
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    :goto_3b
    move-object v7, v1

    .line 8935
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_9c

    if-eqz v7, :cond_94

    .line 8938
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_62

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_62

    const/4 v1, 0x0

    .line 8939
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_62

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_62

    :cond_59
    const-string p0, "WallpaperManagerService"

    const-string/jumbo v0, "wallpaper binded already!"

    .line 8948
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :cond_62
    :goto_62
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "trying to bind wallpaperComponent with timeout"

    .line 8941
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8942
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8943
    :try_start_71
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mbindWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 8944
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_91

    .line 8945
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0, v2}, Lcom/samsung/server/wallpaper/DesktopMode;->setWallpaperBindingFallbackExecuted(Z)V

    .line 8946
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(ZZ)V

    goto :goto_9b

    :catchall_91
    move-exception p0

    .line 8944
    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw p0

    :cond_94
    const-string p0, "WallpaperManagerService"

    const-string v0, "WallpaperData is not exist!"

    .line 8951
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9b
    return-void

    :catchall_9c
    move-exception p0

    .line 8935
    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p0
.end method

.method public notifySemWallpaperColors()V
    .registers 5

    .line 9051
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "orientation is changed, notifySemColorListeners"

    .line 9052
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9055
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateSystem()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 9056
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v1

    .line 9057
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 9058
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9060
    :cond_39
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateLock()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 9061
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result v1

    .line 9062
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 9063
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9065
    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public notifySemWallpaperColors(I)V
    .registers 5

    .line 9194
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9195
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string p0, "WallpaperManagerService"

    const-string p1, "notifySemWallpaperColors, wallpaper == null"

    .line 9197
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9198
    monitor-exit v0

    return-void

    .line 9201
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9202
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public rebindDefaultWallpaperIfNeeded()V
    .registers 11

    .line 8819
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemWallpaperResourcesInfo(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/app/SemWallpaperResourcesInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 8820
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    .line 8821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rebind CMF ImageWallpaper color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8822
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6f

    .line 8824
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 8825
    :try_start_47
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mbindWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 8826
    monitor-exit v9
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_6c

    .line 8829
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 8830
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_6f

    :catchall_6c
    move-exception p0

    .line 8826
    :try_start_6d
    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p0

    .line 8833
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemWallpaperResourcesInfo(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/app/SemWallpaperResourcesInfo;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_a8

    const-string v1, "WallpaperManagerService"

    .line 8834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rebind CMF Video color : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8835
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$minitVideoWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V

    goto :goto_f6

    :cond_a8
    const-string v1, "WallpaperManagerService"

    .line 8837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rebind CMF Image color : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8838
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_f6

    .line 8840
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 8841
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v4

    .line 8840
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    .line 8844
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 8845
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    :cond_f6
    :goto_f6
    return-void
.end method

.method public saveSemWallpaperColors(IZ[Landroid/app/SemWallpaperColors;)V
    .registers 9

    .line 9171
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9172
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    if-nez v1, :cond_1d

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "saveSemWallpaperColors, wallpaper == null"

    .line 9175
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9176
    monitor-exit v0

    return-void

    .line 9179
    :cond_1d
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    if-eqz p2, :cond_25

    .line 9182
    invoke-virtual {v2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLandscapeColors([Landroid/app/SemWallpaperColors;)V

    goto :goto_63

    :cond_25
    const/4 v3, 0x0

    .line 9184
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 9185
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget p0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-static {p0, v1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object p0

    const-string p2, "WallpaperManagerService"

    .line 9186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveSemWallpaperColors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9187
    aget-object p1, p3, v3

    invoke-virtual {p1, p0}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 9189
    :goto_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public setSurfaceAlpha(F)V
    .registers 5

    .line 8853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurfaceAlpha "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8854
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_42

    .line 8855
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_42

    const/4 v2, 0x0

    .line 8856
    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_42

    .line 8858
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setSurfaceAlpha(F)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_39} :catch_3a

    goto :goto_42

    :catch_3a
    move-exception p0

    .line 8860
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method

.method public switchDexWallpaper(IZ)V
    .registers 7

    if-eqz p2, :cond_5

    const/16 v0, 0x9

    goto :goto_6

    :cond_5
    const/4 v0, 0x5

    .line 8905
    :goto_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 8906
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v2, "WallpaperManagerService"

    const-string v3, "no current wallpaper -- first switching DeX?"

    .line 8909
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8910
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    if-nez v2, :cond_31

    const-string p0, "WallpaperManagerService"

    const-string p1, "no current wallpaper"

    .line 8913
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8914
    monitor-exit v1

    return-void

    .line 8918
    :cond_31
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v3, p1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopWallpaperFileExist(I)Z

    move-result p1

    if-nez p1, :cond_41

    if-nez p2, :cond_4a

    .line 8919
    :cond_41
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 8920
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 8922
    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_d .. :try_end_4b} :catchall_57

    .line 8924
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(II)V

    return-void

    :catchall_57
    move-exception p0

    .line 8922
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public switchWallpaperByDisplayChanged(II)V
    .registers 15

    .line 8956
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result v0

    .line 8957
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v2, v1, p2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result v2

    .line 8960
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOldUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetConvertedUserId(Lcom/android/server/wallpaper/WallpaperManagerService;II)I

    move-result v3

    const-string v4, "WallpaperManagerService"

    .line 8962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switchWallpaperByDisplayChanged   prevFolderState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curFolderState : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " oldwhich : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentUserId : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mOldUserId : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p1

    .line 8968
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOldUserId()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userId : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8962
    invoke-static {v4, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8971
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object p1

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 8972
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    if-nez v4, :cond_b4

    if-eqz p1, :cond_b4

    .line 8975
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 8976
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v6

    invoke-virtual {v5, v3, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(IILandroid/content/ComponentName;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    :cond_b4
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_11c

    if-eqz v4, :cond_11c

    .line 8983
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_bf

    goto :goto_cc

    .line 8985
    :cond_bf
    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_cb

    const-string v8, "WallpaperManagerService"

    const-string v9, "oldWallpaper.wallpaperComponent is null. So get nextWallpaperComponent"

    .line 8987
    invoke-static {v8, v9}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :cond_cb
    move-object v7, v6

    .line 8990
    :goto_cc
    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_d1

    goto :goto_de

    .line 8992
    :cond_d1
    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v8, :cond_dd

    const-string v9, "WallpaperManagerService"

    const-string v10, "newWallpaper.wallpaperComponent is null. So get nextWallpaperComponent"

    .line 8994
    invoke-static {v9, v10}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    :cond_dd
    move-object v8, v6

    :goto_de
    const-string v9, "WallpaperManagerService"

    .line 8997
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "switchWallpaperByDisplayChanged() old : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", new : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_11c

    if-eqz v8, :cond_11c

    .line 9000
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11c

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11a

    goto :goto_11c

    :cond_11a
    move v7, v5

    goto :goto_11d

    :cond_11c
    :goto_11c
    move v7, v1

    :goto_11d
    if-eqz v7, :cond_16f

    if-eq v2, v0, :cond_16f

    if-nez v4, :cond_135

    .line 9006
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9007
    :try_start_12a
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 9008
    monitor-exit v0

    goto :goto_135

    :catchall_132
    move-exception p0

    monitor-exit v0
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_132

    throw p0

    :cond_135
    :goto_135
    if-eqz v4, :cond_18e

    if-eqz p1, :cond_169

    .line 9013
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_169

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "switchWallpaperByDisplayChanged: removeCallbacks of oldWallpaper"

    .line 9014
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9015
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmTryToRebindRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9016
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9017
    :try_start_15f
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mdetachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9018
    monitor-exit v0

    goto :goto_169

    :catchall_166
    move-exception p0

    monitor-exit v0
    :try_end_168
    .catchall {:try_start_15f .. :try_end_168} :catchall_166

    throw p0

    .line 9021
    :cond_169
    :goto_169
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p1, v4, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    goto :goto_18e

    :cond_16f
    const-string p1, "WallpaperManagerService"

    .line 9024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchWallpaperByDisplayChanged: which = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "needSwitchWallpaper ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9028
    :cond_18e
    :goto_18e
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 9029
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 9030
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-nez v0, :cond_1be

    .line 9031
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_1c3

    .line 9033
    :cond_1be
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9036
    :goto_1c3
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p1

    .line 9037
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 9038
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-nez v0, :cond_1f4

    .line 9039
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_1f9

    .line 9041
    :cond_1f4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifySemColorListeners(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 9045
    :goto_1f9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isFolded"

    if-nez p2, :cond_203

    goto :goto_204

    :cond_203
    move v1, v5

    .line 9046
    :goto_204
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9047
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string/jumbo p2, "switch_display"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendWindowWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateDesktopModeState(Z)V
    .registers 7

    .line 8877
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result v0

    .line 8879
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-nez p1, :cond_2d

    :try_start_15
    const-string v2, "WallpaperManagerService"

    const-string v3, "DesktopMode disabled"

    .line 8881
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8882
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 8883
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mdetachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 8885
    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_60

    .line 8887
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/DesktopMode;->onRefreshWallpaperByUiMode(Z)V

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_4d

    .line 8888
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    move-result v0

    if-eqz v0, :cond_55

    if-eqz p1, :cond_55

    :cond_4d
    const-string p0, "WallpaperManagerService"

    const-string p1, "Wallpaper ignore wallpaper refresh in default display when desktop dual mode is enabled/disabled"

    .line 8889
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8892
    :cond_55
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(ZZ)V

    return-void

    :catchall_60
    move-exception p0

    .line 8885
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public updateDisplayData()V
    .registers 6

    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "updateDisplayData"

    .line 9206
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9207
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9208
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDisplayDatas(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    if-ltz v1, :cond_3e

    .line 9209
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDisplayDatas(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    const/4 v3, -0x1

    .line 9210
    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 9211
    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 9212
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDisplayDatas(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 9214
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_40

    throw p0
.end method

.method public updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V
    .registers 12

    .line 8873
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->-$$Nest$mupdateEvent(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;ILjava/lang/String;Ljava/io/File;ZZ)V

    return-void
.end method

.method public updateOmcWallpaper()V
    .registers 1

    .line 8868
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->handleOMCWallpaperUpdated()V

    return-void
.end method
