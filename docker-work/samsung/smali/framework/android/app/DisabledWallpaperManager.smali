.class final Landroid/app/DisabledWallpaperManager;
.super Landroid/app/WallpaperManager;
.source "DisabledWallpaperManager.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Landroid/app/DisabledWallpaperManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Landroid/app/DisabledWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DisabledWallpaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/app/WallpaperManager;-><init>()V

    .line 55
    return-void
.end method

.method static blacklist getInstance()Landroid/app/DisabledWallpaperManager;
    .registers 1

    .line 48
    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Landroid/app/DisabledWallpaperManager;

    invoke-direct {v0}, Landroid/app/DisabledWallpaperManager;-><init>()V

    sput-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    .line 51
    :cond_b
    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    return-object v0
.end method

.method private static blacklist unsupported()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist unsupportedBoolean()Z
    .registers 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist unsupportedInt()I
    .registers 1

    .line 79
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 146
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 4
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 152
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public whitelist clear()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public whitelist clear(I)V
    .registers 2
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 345
    return-void
.end method

.method public whitelist clearWallpaper()V
    .registers 1

    .line 298
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 299
    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .registers 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 303
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 304
    return-void
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 334
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public whitelist forgetLoadedWallpaper()V
    .registers 1

    .line 182
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 126
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmap(Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "hardware"    # Z

    .line 131
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 136
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 89
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "which"    # I

    .line 94
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 100
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    .line 106
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 207
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 2

    .line 278
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 2

    .line 273
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 84
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 116
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 3
    .param p1, "which"    # I

    .line 167
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public blacklist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 172
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "which"    # I

    .line 141
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 177
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getWallpaperId(I)I
    .registers 3
    .param p1, "which"    # I

    .line 197
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public blacklist getWallpaperIdForUser(II)I
    .registers 4
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 202
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 187
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public blacklist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 192
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .registers 3
    .param p1, "resid"    # I

    .line 268
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperBackupEligible(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 349
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist isWallpaperSupported()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 111
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 121
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 157
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I

    .line 162
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 329
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .registers 6
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .registers 7
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 293
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 294
    return-void
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 288
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 289
    return-void
.end method

.method public whitelist setResource(II)I
    .registers 4
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setResource(I)V
    .registers 2
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 6
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 308
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 313
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .registers 3
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .line 323
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .line 318
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 319
    return-void
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .registers 3
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .line 283
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 354
    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method
