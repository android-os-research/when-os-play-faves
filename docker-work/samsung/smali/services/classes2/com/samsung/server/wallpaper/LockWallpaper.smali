.class public Lcom/samsung/server/wallpaper/LockWallpaper;
.super Ljava/lang/Object;
.source "LockWallpaper.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "LockWallpaper"

.field public static final WALLPAPER_ANIMATED_BACKGROUND:Ljava/lang/String; = "wallpaper_animated_background"

.field public static final WALLPAPER_ANIMATED_BACKGROUND_SUB:Ljava/lang/String; = "wallpaper_animated_background_sub"

.field public static final WALLPAPER_MOTION_BACKGROUND:Ljava/lang/String; = "wallpaper_motion_background"

.field public static final WALLPAPER_MOTION_BACKGROUND_SUB:Ljava/lang/String; = "wallpaper_motion_background_sub"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "LockWallpaper"

    .line 43
    invoke-static {p0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getWallpaperFile(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Ljava/io/File;
    .registers 6

    .line 47
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const-string v0, "LockWallpaper"

    const/16 v1, 0x8

    if-ne p0, v1, :cond_13

    const-string p0, "generateResizedBitmap: get first frame for video wallpaper."

    .line 48
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    .line 52
    :cond_13
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v1, 0x4

    const-string v2, "generateResizedBitmap: get background for animated wallpaper."

    if-ne p0, v1, :cond_23

    .line 53
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object p1

    .line 57
    :cond_23
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_31

    .line 58
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p1

    :cond_31
    return-object p1
.end method
