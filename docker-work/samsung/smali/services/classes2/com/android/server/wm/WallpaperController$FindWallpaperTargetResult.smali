.class public final Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FindWallpaperTargetResult"
.end annotation


# instance fields
.field public isWallpaperTargetForLetterbox:Z

.field public resetTopWallpaper:Z

.field public topWallpaper:Lcom/android/server/wm/WindowState;

.field public useTopWallpaperAsTarget:Z

.field public wallpaperTarget:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    .line 979
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 980
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 981
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 982
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 1007
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 1008
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    .line 1009
    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 1010
    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 1011
    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    return-void
.end method

.method public setIsWallpaperTargetForLetterbox(Z)V
    .registers 3

    .line 998
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    .line 1003
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    return-void
.end method

.method public setTopWallpaper(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 985
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public setUseTopWallpaperAsTarget(Z)V
    .registers 2

    .line 993
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    return-void
.end method

.method public setWallpaperTarget(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 989
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    return-void
.end method
