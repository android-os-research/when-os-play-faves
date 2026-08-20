.class public Lcom/samsung/server/wallpaper/SemWallpaperData;
.super Ljava/lang/Object;
.source "SemWallpaperData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "SemWallpaperData"


# instance fields
.field public mAnimatedBackground:Ljava/io/File;

.field public mAnimatedPkgName:Ljava/lang/String;

.field public mColorThemeData:Lcom/samsung/server/wallpaper/ColorThemeData;

.field public mCroppedBitmap:Landroid/graphics/Bitmap;

.field public mDlsSemColors:Landroid/app/SemWallpaperColors;

.field public mExternalParams:Landroid/os/Bundle;

.field public mHeight:I

.field public mIsCopied:Z

.field public mIsDesktopWallpaper:Z

.field public mIsPreloaded:Z

.field public mLandscapeColors:[Landroid/app/SemWallpaperColors;

.field public mLastCallingPackage:Ljava/lang/String;

.field public mMotionBackground:Ljava/io/File;

.field public mMotionPkgName:Ljava/lang/String;

.field public mOrientation:I

.field public mPrimarySemColors:Landroid/app/SemWallpaperColors;

.field public mSmartCropOriginalRect:Landroid/graphics/Rect;

.field public mSmartCropRect:Landroid/graphics/Rect;

.field public mTimeCreated:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mVideoColor:Ljava/lang/String;

.field public mVideoDefaultHasBeenUsed:Z

.field public mVideoFileName:Ljava/lang/String;

.field public mVideoFilePath:Ljava/lang/String;

.field public mVideoFirstFrameFile:Ljava/io/File;

.field public mVideoPkgName:Ljava/lang/String;

.field public mWaitingForUnlockUser:Z

.field public mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

.field public mWhich:I

.field public mWidth:I

.field public mWpType:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmLastCallingPackage(Lcom/samsung/server/wallpaper/SemWallpaperData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 58
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    .line 59
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 64
    new-instance v2, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-direct {v2, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    iput-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 65
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 74
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 79
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 80
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 84
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    .line 95
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    const-string p0, "SemWallpaperData"

    .line 107
    invoke-static {p0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/server/wallpaper/SemWallpaperData;
    .registers 6

    const-string v0, "SemWallpaperData"

    .line 379
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 380
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 382
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 383
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    .line 387
    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x8

    if-eq v2, v3, :cond_29

    goto :goto_43

    .line 398
    :cond_29
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 400
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    .line 401
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    goto :goto_43

    .line 393
    :cond_3a
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    goto :goto_43

    .line 389
    :cond_3f
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    .line 407
    :goto_43
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_4d

    .line 408
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 410
    :cond_4d
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_57

    .line 411
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    .line 413
    :cond_57
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_64

    .line 414
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    .line 416
    :cond_64
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_71

    .line 417
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    .line 419
    :cond_71
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_8d

    .line 420
    array-length v2, v2

    new-array v2, v2, [Landroid/app/SemWallpaperColors;

    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    const/4 v2, 0x0

    .line 421
    :goto_7b
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    array-length v4, v3

    if-ge v2, v4, :cond_8d

    .line 422
    iget-object v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 425
    :cond_8d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clone: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_a1} :catch_a2

    return-object v1

    :catch_a2
    move-exception p0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedBackground()Ljava/io/File;
    .registers 1

    .line 572
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    return-object p0
.end method

.method public getAnimatedPkgName()Ljava/lang/String;
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getColorThemeData()Lcom/samsung/server/wallpaper/ColorThemeData;
    .registers 1

    .line 684
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mColorThemeData:Lcom/samsung/server/wallpaper/ColorThemeData;

    return-object p0
.end method

.method public getCreationTime()Ljava/lang/String;
    .registers 1

    .line 366
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    return-object p0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCurrentTimeString()Ljava/lang/String;
    .registers 3

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 371
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 372
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDlsSemColors()Landroid/app/SemWallpaperColors;
    .registers 1

    .line 650
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getExternalParams()Landroid/os/Bundle;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 222
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    return p0
.end method

.method public getIsCopied()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    return p0
.end method

.method public getIsDesktopWallpaper()Z
    .registers 1

    .line 632
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    return p0
.end method

.method public getIsPreloaded()Z
    .registers 1

    .line 182
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    return p0
.end method

.method public getLandscapeColors()[Landroid/app/SemWallpaperColors;
    .registers 1

    .line 674
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getLastCallingPackage()Ljava/lang/String;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getMotionBackground()Ljava/io/File;
    .registers 1

    .line 554
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    return-object p0
.end method

.method public getMotionPkgName()Ljava/lang/String;
    .registers 1

    .line 546
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 190
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    return p0
.end method

.method public getPrimarySemColors()Landroid/app/SemWallpaperColors;
    .registers 1

    .line 642
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getSmartCropOriginalRect()Landroid/graphics/Rect;
    .registers 1

    .line 658
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSmartCropRect()Landroid/graphics/Rect;
    .registers 1

    .line 666
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoColor()Ljava/lang/String;
    .registers 1

    .line 606
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoDefaultHasBeenUsed()Z
    .registers 1

    .line 622
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    return p0
.end method

.method public getVideoFileName()Ljava/lang/String;
    .registers 1

    .line 614
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .registers 1

    .line 590
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoFirstFrameFile()Ljava/io/File;
    .registers 1

    .line 582
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    return-object p0
.end method

.method public getVideoPkgName()Ljava/lang/String;
    .registers 1

    .line 598
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getWaitingForUnlockUser()Z
    .registers 1

    .line 254
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    return p0
.end method

.method public getWallpaperHistories()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    return-object p0
.end method

.method public getWallpaperHistory()Ljava/lang/String;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperHistoryList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->getWallpaperHistoryDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperTypeString()Ljava/lang/String;
    .registers 2

    .line 315
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-eqz p0, :cond_2f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    const/4 v0, 0x4

    if-eq p0, v0, :cond_26

    const/4 v0, 0x5

    if-eq p0, v0, :cond_23

    const/4 v0, 0x7

    if-eq p0, v0, :cond_20

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1c

    const-string p0, "default"

    goto :goto_31

    :cond_1c
    const-string/jumbo p0, "video"

    goto :goto_31

    :cond_20
    const-string p0, "live"

    goto :goto_31

    :cond_23
    const-string p0, "gif"

    goto :goto_31

    :cond_26
    const-string p0, "animated"

    goto :goto_31

    :cond_29
    const-string p0, "multiple"

    goto :goto_31

    :cond_2c
    const-string p0, "motion"

    goto :goto_31

    :cond_2f
    const-string p0, "image"

    :goto_31
    return-object p0
.end method

.method public getWhich()I
    .registers 1

    .line 198
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 214
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    return p0
.end method

.method public getWpType()I
    .registers 1

    .line 206
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    return p0
.end method

.method public isThemeContents()Z
    .registers 2

    .line 347
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistory()Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "com.samsung.android.themecenter"

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "SemWallpaperData"

    const-string v0, "Theme contents."

    .line 350
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public parseWallpaperHistoryInfo(Ljava/lang/String;)V
    .registers 12

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, ";"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 308
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_35

    aget-object v3, p1, v2

    const-string v4, "::"

    .line 309
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 310
    aget-object v4, v3, v4

    aget-object v5, v3, v1

    array-length v6, v3

    const-string v7, ""

    const/4 v8, 0x2

    if-le v6, v8, :cond_28

    aget-object v6, v3, v8

    goto :goto_29

    :cond_28
    move-object v6, v7

    :goto_29
    array-length v8, v3

    const/4 v9, 0x3

    if-le v8, v9, :cond_2f

    aget-object v7, v3, v9

    :cond_2f
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_35
    return-void
.end method

.method public parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12

    .line 287
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, ";"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 290
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_41

    aget-object v3, p1, v2

    const-string v4, "::"

    .line 291
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 292
    aget-object v4, v3, v4

    aget-object v5, v3, v1

    array-length v6, v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_23} :catch_38

    const-string v7, ""

    const/4 v8, 0x2

    if-le v6, v8, :cond_2b

    :try_start_28
    aget-object v6, v3, v8

    goto :goto_2c

    :cond_2b
    move-object v6, v7

    :goto_2c
    array-length v8, v3

    const/4 v9, 0x3

    if-le v8, v9, :cond_32

    aget-object v7, v3, v9

    :cond_32
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_35} :catch_38

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catch_38
    move-exception p0

    .line 298
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_41
    :goto_41
    return-void
.end method

.method public setAnimatedBackground(Ljava/io/File;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    return-void
.end method

.method public setAnimatedPkgName(Ljava/lang/String;)V
    .registers 2

    .line 560
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    return-void
.end method

.method public setColorThemeData(Lcom/samsung/server/wallpaper/ColorThemeData;)V
    .registers 2

    .line 680
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mColorThemeData:Lcom/samsung/server/wallpaper/ColorThemeData;

    return-void
.end method

.method public setCreationTime(Ljava/lang/String;)V
    .registers 3

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 362
    :cond_7
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    return-void
.end method

.method public setCroppedBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDlsSemColors(Landroid/app/SemWallpaperColors;)V
    .registers 2

    .line 646
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setExternalParams(Landroid/os/Bundle;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 218
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mHeight:I

    return-void
.end method

.method public setIsCopied(Z)V
    .registers 2

    .line 170
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    return-void
.end method

.method public setIsDesktopWallpaper(Z)V
    .registers 2

    .line 628
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    return-void
.end method

.method public setIsPreloaded(Z)V
    .registers 2

    .line 178
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    return-void
.end method

.method public setLandscapeColors([Landroid/app/SemWallpaperColors;)V
    .registers 2

    .line 670
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setLastCallingPackage(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-void
.end method

.method public setMotionBackground(Ljava/io/File;)V
    .registers 2

    .line 550
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    return-void
.end method

.method public setMotionPkgName(Ljava/lang/String;)V
    .registers 2

    .line 542
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 186
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    return-void
.end method

.method public setPrimarySemColors(Landroid/app/SemWallpaperColors;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setSmartCropOriginalRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 654
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setSmartCropRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    return-void
.end method

.method public setVideoColor(Ljava/lang/String;)V
    .registers 2

    .line 602
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    return-void
.end method

.method public setVideoDefaultHasBeenUsed(Z)V
    .registers 2

    .line 618
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    return-void
.end method

.method public setVideoFilePath(Ljava/lang/String;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    return-void
.end method

.method public setVideoFirstFrameFile(Ljava/io/File;)V
    .registers 2

    .line 578
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    return-void
.end method

.method public setVideoPkgName(Ljava/lang/String;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    return-void
.end method

.method public setWaitingForUnlockUser(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    return-void
.end method

.method public setWallpaperHistories(Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;)V
    .registers 2

    .line 278
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    return-void
.end method

.method public setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 270
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->addWallpaperHistoryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWhich(I)V
    .registers 2

    .line 194
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 210
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWidth:I

    return-void
.end method

.method public setWpType(I)V
    .registers 2

    .line 202
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string v1, "\n    mTimeCreated="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mIsCopied="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mIsPreloaded="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mOrientation="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mWhich=0x"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mWpType="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mUri="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mExternalParams="

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6c

    const-string v1, "\n    mMotionPkgName="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_6c
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7b

    const-string v1, "\n    mAnimatedPkgName="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_7b
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I
    :try_end_7d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_7d} :catch_112

    const/16 v2, 0x8

    const-string v3, ", mVideoFileName="

    if-ne v1, v2, :cond_b3

    :try_start_83
    const-string v1, "\n    mVideoFilePath="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoPkgName="

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoColor="

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoDefaultHasBeenUsed="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    :cond_b3
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_c0

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c0
    const-string v1, "\n    ColorThemeData="

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mColorThemeData:Lcom/samsung/server/wallpaper/ColorThemeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mPrimarySemColors="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mDlsSemColors="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mSmartCropOriginalRect="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmartCropRect="

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v1, :cond_107

    .line 153
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f8
    if-ge v3, v2, :cond_107

    aget-object v4, v1, v3

    const-string v5, "\n    mLandscapeColors="

    .line 154
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    :cond_107
    const-string v1, "\n    mWallpaperHistory="

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_111
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_111} :catch_112

    goto :goto_116

    :catch_112
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 164
    :goto_116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
