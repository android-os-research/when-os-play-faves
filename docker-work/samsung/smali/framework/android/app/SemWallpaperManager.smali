.class public interface abstract Landroid/app/SemWallpaperManager;
.super Ljava/lang/Object;
.source "SemWallpaperManager.java"


# virtual methods
.method public blacklist addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 347
    return-void
.end method

.method public blacklist addOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;Landroid/os/Handler;I)V
    .registers 4
    .param p1, "listener"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 349
    return-void
.end method

.method public blacklist applyWallpaperColors(Ljava/util/List;III)V
    .registers 5
    .param p1, "colors"    # Ljava/util/List;
    .param p2, "sNum"    # I
    .param p3, "lNum"    # I
    .param p4, "which"    # I

    .line 355
    return-void
.end method

.method public blacklist canBackup()Z
    .registers 2

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canBackup(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearAll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public blacklist clearBackupWallpaperGivenKey(I)V
    .registers 2
    .param p1, "key"    # I

    .line 306
    return-void
.end method

.method public blacklist getAnimatedPkgName(I)Ljava/lang/String;
    .registers 3
    .param p1, "which"    # I

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppliedScreen(Ljava/lang/String;Z)I
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "forSubDisplay"    # Z

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitmap(ZIZ)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "hardware"    # Z
    .param p2, "which"    # I
    .param p3, "useCache"    # Z

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z
    .param p3, "which"    # I
    .param p4, "useCache"    # Z

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapForDex()Landroid/graphics/Bitmap;
    .registers 2

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapForDex(Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "hardware"    # Z

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitmapForDexAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes(Landroid/graphics/Bitmap;)Ljava/util/List;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes(Landroid/graphics/Bitmap;Z)Ljava/util/List;
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes([I)Ljava/util/List;
    .registers 3
    .param p1, "seeds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColorPalettes([IZ)Ljava/util/List;
    .registers 4
    .param p1, "seeds"    # [I
    .param p2, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IZ)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultMultipackStyle(I)Ljava/lang/String;
    .registers 3
    .param p1, "which"    # I

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultWallpaperType(I)I
    .registers 3
    .param p1, "which"    # I

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 39
    invoke-interface {p0, p1}, Landroid/app/SemWallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLidState()I
    .registers 2

    .line 328
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLockWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "userId"    # I

    .line 91
    const/4 v0, 0x2

    invoke-interface {p0, p1, v0}, Landroid/app/SemWallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLockWallpaperType()I
    .registers 2

    .line 208
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/app/SemWallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    return v0
.end method

.method public blacklist getMotionWallpaperPkgName(I)Ljava/lang/String;
    .registers 3
    .param p1, "which"    # I

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(I)[I
    .registers 3
    .param p1, "which"    # I

    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(IZ)[I
    .registers 4
    .param p1, "which"    # I
    .param p2, "fromGoogle"    # Z

    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(Landroid/graphics/Bitmap;)[I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSeedColors(Landroid/graphics/Bitmap;Z)[I
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fromGoogle"    # Z

    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoColor()Ljava/lang/String;
    .registers 2

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoFileName(I)Ljava/lang/String;
    .registers 3
    .param p1, "which"    # I

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoFilePath(I)Ljava/lang/String;
    .registers 3
    .param p1, "which"    # I

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoPackage()Ljava/lang/String;
    .registers 2

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVideoPackage(I)Ljava/lang/String;
    .registers 3
    .param p1, "which"    # I

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperFile(III)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "kwpType"    # I

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "which"    # I
    .param p2, "orig"    # Z

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasVideoWallpaper()Z
    .registers 2

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDefaultWallpaperState(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isExternalLiveWallpaper()Z
    .registers 2

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isExternalLiveWallpaper(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubDisplay()Z
    .registers 2

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportCMFFeature()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportDefaultMultipleWallpaper()Z
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVideoWallpaper()Z
    .registers 2

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperBackupAllowed(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;

    .line 351
    return-void
.end method

.method public blacklist removeOnSemColorsChangedListener(Landroid/app/OnSemColorsChangedListener;I)V
    .registers 3
    .param p1, "callback"    # Landroid/app/OnSemColorsChangedListener;
    .param p2, "userId"    # I

    .line 353
    return-void
.end method

.method public blacklist resetMultipleWallpaperSettingIfNeeded()V
    .registers 1

    .line 141
    return-void
.end method

.method public blacklist semClearBackupWallpapers()V
    .registers 1

    .line 302
    return-void
.end method

.method public blacklist semClearBackupWallpapers(I)V
    .registers 2
    .param p1, "which"    # I

    .line 304
    return-void
.end method

.method public blacklist semGetDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetSmartCropRect(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "which"    # I

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetUri(I)Landroid/net/Uri;
    .registers 3
    .param p1, "which"    # I

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .registers 3
    .param p1, "which"    # I

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperCropHint(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "which"    # I

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetWallpaperType(I)I
    .registers 3
    .param p1, "which"    # I

    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist semMakeBackupWallpaper()I
    .registers 2

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semMakeBackupWallpaper(I)I
    .registers 3
    .param p1, "which"    # I

    .line 289
    if-nez p1, :cond_4

    .line 290
    const/4 v0, -0x1

    return v0

    .line 292
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semMakeBackupWallpaper(II)I
    .registers 4
    .param p1, "which"    # I
    .param p2, "key"    # I

    .line 296
    if-nez p1, :cond_4

    .line 297
    const/4 v0, -0x1

    return v0

    .line 299
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist semRestoreBackupWallpaper(I)Z
    .registers 3
    .param p1, "key"    # I

    .line 309
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    .line 310
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_5
    return v0
.end method

.method public blacklist semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    .registers 3
    .param p1, "colors"    # Landroid/app/SemWallpaperColors;
    .param p2, "which"    # I

    .line 109
    return-void
.end method

.method public blacklist semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "which"    # I
    .param p2, "original"    # Landroid/graphics/Rect;
    .param p3, "smartCrop"    # Landroid/graphics/Rect;

    .line 79
    return-void
.end method

.method public blacklist semSetUri(Landroid/net/Uri;ZI)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist semSetUri(Landroid/net/Uri;ZII)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    return-void
.end method

.method public blacklist setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    return-void
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 270
    return-void
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I

    .line 272
    return-void
.end method

.method public blacklist setMotionWallpaper(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "allowBackup"    # Z

    .line 274
    return-void
.end method

.method public blacklist setResourceAll(I)V
    .registers 2
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method public blacklist setStream(Ljava/io/InputStream;I)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;)V
    .registers 2
    .param p1, "videoFilePath"    # Ljava/lang/String;

    .line 223
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;

    .line 225
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "which"    # I

    .line 228
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I

    .line 234
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 7
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "updateSetting"    # Z

    .line 237
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .registers 8
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "which"    # I
    .param p6, "updateSetting"    # Z
    .param p7, "allowBackup"    # Z

    .line 240
    return-void
.end method

.method public blacklist setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "videoFilePath"    # Ljava/lang/String;
    .param p2, "themePackage"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "allowBackup"    # Z

    .line 231
    return-void
.end method

.method public blacklist setWallpaperUri(Ljava/lang/String;ZI)V
    .registers 4
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "allowBackup"    # Z
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist wallpaperSupportsWcg(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 47
    const/4 v0, 0x0

    return v0
.end method
