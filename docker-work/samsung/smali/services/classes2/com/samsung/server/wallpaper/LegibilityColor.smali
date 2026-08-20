.class public Lcom/samsung/server/wallpaper/LegibilityColor;
.super Ljava/lang/Object;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MSG_UPDATE_SEM_WALLPAPER_HOME_FONT_COLORS:I = 0x3f7

.field public static final PREFERENCES_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field public static final PREFERENCES_NEED_DARK_NAVIGATIONBAR:Ljava/lang/String; = "need_dark_navigationbar"

.field public static final PREFERENCES_NEED_DARK_STATUSBAR:Ljava/lang/String; = "need_dark_statusbar"

.field public static final TAG:Ljava/lang/String; = "LegibilityColor"

.field public static final WALLPAPER_COLOR_DIR:Ljava/lang/String; = "wallpaper_colors_info"


# instance fields
.field public mAllowScreenRotateLock:Z

.field public mAllowScreenRotateSystem:Z

.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mColorExtractors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public mSettingsObserver:Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/server/wallpaper/LegibilityColor;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mallowScreenRotate(Lcom/samsung/server/wallpaper/LegibilityColor;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 72
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 85
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor$1;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mHandler:Landroid/os/Handler;

    const-string v0, "LegibilityColor"

    .line 78
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 82
    iput-object p3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-void
.end method

.method public static getWallpaperColorPath(IIZ)Ljava/lang/String;
    .registers 7

    .line 275
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_colors_info"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "LegibilityColor"

    if-nez p0, :cond_1f

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "getWallpaperColorPath failed to mkdir"

    .line 279
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 284
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3d

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/home"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    :cond_3d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_52

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/lock"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    .line 290
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unhandle type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v3

    :goto_68
    if-eqz p2, :cond_7b

    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_landscape"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_7b
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    if-eqz p2, :cond_dd

    const/4 v0, 0x4

    if-ne p2, v0, :cond_85

    goto :goto_dd

    :cond_85
    const/16 v0, 0x8

    if-ne p2, v0, :cond_9b

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_dex.xml"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ee

    :cond_9b
    const/16 v0, 0x10

    if-ne p2, v0, :cond_b1

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_sub.xml"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ee

    :cond_b1
    const/16 v0, 0x20

    if-ne p2, v0, :cond_c7

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_virtual.xml"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ee

    .line 308
    :cond_c7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unhandle mode "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 300
    :cond_dd
    :goto_dd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_phone.xml"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    :goto_ee
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWallpaperColorPath, path = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static support()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final allowScreenRotate(I)Z
    .registers 6

    .line 552
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_1c

    move p0, v1

    goto :goto_1d

    :cond_1c
    move p0, v3

    :goto_1d
    if-eqz p0, :cond_20

    return v3

    .line 558
    :cond_20
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    const-string v3, "LegibilityColor"

    if-eqz v2, :cond_41

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-nez v2, :cond_41

    .line 559
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowScreenRotate, allow rotate on tablet or dual main : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_41
    if-ne v0, v1, :cond_44

    goto :goto_5c

    :cond_44
    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    goto :goto_5c

    .line 567
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowScreenRoatate, unhandle type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return p0
.end method

.method public final centercropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "centercropBitmap, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return-object p0

    .line 507
    :cond_28
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/LegibilityColor;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 508
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/LegibilityColor;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public convertColors(Landroid/app/WallpaperColors;Lcom/samsung/server/wallpaper/SemWallpaperData;Lcom/samsung/server/wallpaper/SemWallpaperData;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 11

    .line 438
    invoke-static {}, Lcom/samsung/server/wallpaper/LegibilityColor;->support()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 442
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertColors "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/app/SemWallpaperColors;

    .line 445
    new-instance v3, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {v3}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    const/4 v4, 0x0

    if-eqz p1, :cond_39

    .line 448
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_39

    move p1, v0

    goto :goto_3a

    :cond_39
    move p1, v4

    .line 451
    :goto_3a
    invoke-virtual {v3, p1}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 453
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    if-eqz p4, :cond_53

    .line 455
    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 456
    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/SemWallpaperColors$Builder;->setThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/app/SemWallpaperColors$Builder;

    .line 459
    :cond_53
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    const/4 p1, 0x0

    .line 460
    invoke-virtual {p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLandscapeColors([Landroid/app/SemWallpaperColors;)V

    .line 461
    iget-object p4, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v5

    invoke-virtual {p4, v5, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->saveSemWallpaperColors(IZ[Landroid/app/SemWallpaperColors;)V

    .line 462
    iget-object p4, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v5

    invoke-virtual {p4, v5, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->saveSemWallpaperColors(IZ[Landroid/app/SemWallpaperColors;)V

    .line 463
    iget-object p4, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 465
    iget-object p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p4

    invoke-virtual {p2, p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result p2

    if-eqz p2, :cond_91

    const-string p0, "convertColors lock - return"

    .line 466
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 470
    :cond_91
    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    .line 471
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 472
    invoke-virtual {p3, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLandscapeColors([Landroid/app/SemWallpaperColors;)V

    .line 473
    iget-object p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p4

    invoke-virtual {p2, p4, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->saveSemWallpaperColors(IZ[Landroid/app/SemWallpaperColors;)V

    .line 474
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p2

    invoke-virtual {p1, p2, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->saveSemWallpaperColors(IZ[Landroid/app/SemWallpaperColors;)V

    .line 475
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    return-void
.end method

.method public final cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6

    .line 533
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-le p0, p2, :cond_f

    sub-int/2addr p0, p2

    .line 540
    div-int/lit8 p0, p0, 0x2

    goto :goto_10

    :cond_f
    move p0, v1

    :goto_10
    if-le v0, p3, :cond_15

    sub-int/2addr v0, p3

    .line 544
    div-int/lit8 v1, v0, 0x2

    .line 547
    :cond_15
    invoke-static {p1, p0, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public doPackagesChangedLocked(Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 5

    .line 479
    invoke-static {}, Lcom/samsung/server/wallpaper/LegibilityColor;->support()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 483
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doPackagesChangedLocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_53

    .line 484
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_53

    const-string v0, "external live wallpaper is removed"

    .line 485
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    .line 487
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    .line 488
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->hasLockscreenWallpaper(Z)Z

    move-result v0

    if-nez v0, :cond_53

    .line 489
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(I)V

    or-int/lit8 p1, p1, 0x2

    .line 490
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    :cond_53
    return-void
.end method

.method public extractColor(I)V
    .registers 3

    .line 129
    invoke-static {}, Lcom/samsung/server/wallpaper/LegibilityColor;->support()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    return-void
.end method

.method public extractColor(IZ)V
    .registers 3

    .line 137
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getColorExtractor(IZ)Landroid/os/AsyncTask;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 139
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extractcolor: Error. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LegibilityColor"

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public getAllowScreenRotateLock()Z
    .registers 1

    .line 228
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    return p0
.end method

.method public getAllowScreenRotateSystem()Z
    .registers 1

    .line 220
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    return p0
.end method

.method public final declared-synchronized getColorExtractor(IZ)Landroid/os/AsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_6

    const/16 v0, 0x64

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 148
    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    if-eqz v1, :cond_28

    .line 150
    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "LegibilityColor"

    const-string v3, "getColorExtractor cancel"

    .line 151
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 154
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 157
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->makeColorExtractor(IZ)Landroid/os/AsyncTask;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_33

    .line 160
    monitor-exit p0

    return-object p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initSemWallpaperColors(ILcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 7

    const-string v0, "LegibilityColor"

    if-nez p2, :cond_a

    const-string p0, "initSemWallpaperColors wallpaper == null"

    .line 233
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_a
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSemWallpaperColors which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 240
    invoke-static {p1, v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_36

    return-void

    .line 245
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSemWallpaperColors:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_4a
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-static {p1}, Landroid/app/SemWallpaperColors;->getXmlVersion(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    move-result v3

    if-eq v2, v3, :cond_61

    const-string p1, "fota, calSemWallpaperColors"

    .line 250
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_a9

    .line 253
    :cond_61
    invoke-static {p1}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 254
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_75

    goto :goto_7e

    .line 258
    :cond_75
    invoke-virtual {p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 259
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    goto :goto_a9

    :cond_7e
    :goto_7e
    const-string p1, "initSemWallpaperColors: SemWallpaperColor or its seed color is null. Extract color again!"

    .line 255
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_86} :catch_87

    goto :goto_a9

    :catch_87
    move-exception p1

    .line 263
    instance-of p2, p1, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_95

    const-string p1, "fota, calcSemWallpaperColors"

    .line 264
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(I)V

    goto :goto_a9

    .line 267
    :cond_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a9
    const-string p0, "initSemWallpaperColors done"

    .line 271
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initWallpaperLegibilityColors()V
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    .line 388
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mSettingsObserver:Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;

    .line 389
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->init()V

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateSystem(Z)V

    const/4 v0, 0x2

    .line 392
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateLock(Z)V

    return-void
.end method

.method public final makeColorExtractor(IZ)Landroid/os/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeColorExtractor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor$2;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;IZ)V

    return-object v0
.end method

.method public final resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-ne p0, p2, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-eq p0, p3, :cond_2e

    :cond_c
    if-le p2, p3, :cond_14

    int-to-float p0, p2

    .line 518
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    goto :goto_19

    :cond_14
    int-to-float p0, p3

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    :goto_19
    int-to-float p2, p2

    div-float/2addr p0, p2

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    .line 525
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    float-to-int p0, p3

    const/4 p3, 0x0

    .line 523
    invoke-static {p1, p2, p0, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2e
    return-object p1
.end method

.method public setAllowScreenRotateLock(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    return-void
.end method

.method public setAllowScreenRotateSystem(Z)V
    .registers 2

    .line 216
    iput-boolean p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    return-void
.end method

.method public setWhiteBgSettings(Landroid/app/SemWallpaperColors;IILjava/lang/Integer;)V
    .registers 9

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWhiteBgSettings which: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", homeBodyColor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegibilityColor"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string p0, "Dex dual mode, ignore SemWallpaperColors"

    .line 321
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_3d
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    if-eqz v0, :cond_57

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopSingleMode()Z

    move-result v0

    if-eqz v0, :cond_57

    const-string p0, "Dex single mode, ignore SemWallpaperColors"

    .line 326
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_57
    and-int/lit8 v0, p2, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_63

    const-string p0, "Unsupported dex mode, ignore SemWallpaperColors"

    .line 331
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 335
    :cond_63
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v0

    if-nez v0, :cond_120

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_71

    goto/16 :goto_120

    .line 340
    :cond_71
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_7b

    and-int/lit8 v0, p2, 0x10

    const/16 v2, 0x10

    if-eq v0, v2, :cond_85

    :cond_7b
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-nez v0, :cond_8b

    and-int/lit8 v0, p2, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_8b

    :cond_85
    const-string p0, "Unsupported sub wallpaper, ignore SemWallpaperColors"

    .line 342
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_8b
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_ca

    .line 347
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    .line 348
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_9f

    if-nez v0, :cond_a7

    .line 349
    :cond_9f
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-nez v2, :cond_ca

    if-nez v0, :cond_ca

    .line 350
    :cond_a7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setWhiteBgSettings() lidState: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", which : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignore SemWallpaperColors"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ca
    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 355
    fill-array-data p2, :array_126

    const-wide/16 v0, 0x20

    .line 357
    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_e8

    .line 359
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

    const/4 v3, 0x0

    aput v2, p2, v3

    if-ne v2, v1, :cond_e8

    .line 361
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v0

    aput v0, p2, v3

    :cond_e8
    const/4 v0, 0x1

    if-eqz p4, :cond_f2

    .line 367
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    aput p4, p2, v0

    goto :goto_100

    :cond_f2
    const-wide/16 v2, 0x40

    .line 369
    invoke-virtual {p1, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p4

    if-eqz p4, :cond_100

    .line 371
    invoke-virtual {p4}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p4

    aput p4, p2, v0

    :cond_100
    :goto_100
    const-wide/16 v2, 0x80

    .line 375
    invoke-virtual {p1, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p1

    if-eqz p1, :cond_10e

    .line 377
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p1

    aput p1, p2, v1

    .line 380
    :cond_10e
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mHandler:Landroid/os/Handler;

    const/16 p4, 0x3f7

    invoke-virtual {p1, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 381
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 383
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_120
    :goto_120
    const-string p0, "Cover wallpaper, ignore SemWallpaperColors"

    .line 336
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_126
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public smartCropBitmap(Landroid/graphics/Bitmap;Lcom/samsung/server/wallpaper/SemWallpaperData;I)Landroid/graphics/Bitmap;
    .registers 15

    .line 396
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "LegibilityColor"

    const/4 v2, 0x0

    if-eqz v0, :cond_e9

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_e9

    .line 402
    :cond_11
    :try_start_11
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_29

    .line 403
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->isThemeContents()Z

    move-result v0

    if-nez v0, :cond_29

    .line 404
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_27

    goto :goto_29

    :cond_27
    move v0, v3

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 407
    :goto_2a
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    if-eqz v4, :cond_39

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v0

    :goto_3a
    if-eqz p3, :cond_5a

    if-eqz v3, :cond_5a

    .line 412
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    rsub-int p0, p3, 0x168

    int-to-float p0, p0

    .line 413
    invoke-virtual {v9, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_ae

    .line 416
    :cond_5a
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_76

    .line 417
    iget-object p3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p3

    .line 418
    iget v0, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz v0, :cond_75

    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez p3, :cond_70

    goto :goto_75

    .line 420
    :cond_70
    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->centercropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_ae

    :cond_75
    :goto_75
    return-object v2

    .line 422
    :cond_76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float/2addr p0, p3

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 424
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 425
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    mul-float/2addr v4, p0

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    mul-float/2addr v6, p3

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    int-to-float v3, v7

    mul-float/2addr v3, p0

    float-to-int p0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int p3, v0

    invoke-static {p1, v4, v6, p0, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_ae} :catch_af

    :goto_ae
    return-object p0

    :catch_af
    move-exception p0

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", which = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", smart crop info = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropOriginalRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_e9
    :goto_e9
    const-string/jumbo p0, "smartCropRect == null"

    .line 397
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
