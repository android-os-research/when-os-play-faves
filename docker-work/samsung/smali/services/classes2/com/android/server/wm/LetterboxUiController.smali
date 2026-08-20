.class public final Lcom/android/server/wm/LetterboxUiController;
.super Ljava/lang/Object;
.source "LetterboxUiController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mExpandedTaskBarHeight:F

.field public mLetterbox:Lcom/android/server/wm/Letterbox;

.field public final mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

.field public mShowWallpaperForLetterboxBackground:Z

.field public final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$DIhAijq-KhVjSJ2n6hNPfk5AiZ8(Lcom/android/server/wm/LetterboxUiController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->handleDoubleTap(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dn4X5FNDYPDxrdh-V_J0Be3496Y(Lcom/android/server/wm/LetterboxUiController;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->canHaveLetterboxSurface()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OA0yd67wVO249Te3u1OaGYhIhGI(Lcom/android/server/wm/LetterboxUiController;)Landroid/view/SurfaceControl$Builder;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->lambda$layoutLetterbox$0()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OsbEBblNbTAD_wdzLWiqz4azxxk(Lcom/android/server/wm/LetterboxUiController;)F
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZguxgCbWfDKtLBV-5X0ISnY4qAc(Lcom/android/server/wm/LetterboxUiController;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fbXQOb38bMYnfh1EWVA42TFBP0o(Lcom/android/server/wm/LetterboxUiController;)Landroid/graphics/Color;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jUi2GqCCynDmaylgZ_7r_wTiw1c(Lcom/android/server/wm/LetterboxUiController;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->shouldLetterboxHaveRoundedCorners()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$o-T1m10xVi0lfFW6RENWRl7EIOo(Lcom/android/server/wm/LetterboxUiController;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->lambda$shouldShowLetterboxUi$1(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    .line 93
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_18

    .line 94
    new-instance v0, Lcom/android/server/wm/LetterboxConfiguration;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iget-object p1, p1, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/LetterboxConfiguration;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1a

    .line 97
    :cond_18
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    :goto_1a
    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 101
    iput-object p2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10504de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/wm/LetterboxUiController;->mExpandedTaskBarHeight:F

    return-void
.end method

.method private synthetic lambda$layoutLetterbox$0()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$shouldShowLetterboxUi$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 322
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    .line 325
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 327
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    :goto_1f
    return v1
.end method


# virtual methods
.method public final canHaveLetterboxSurface()Z
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 629
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasLetterboxSurface(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public final canHaveRoundedCornersWithoutTaskbar()Z
    .registers 1

    .line 624
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxActivityCornersRadius(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public destroy()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_a

    .line 109
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->destroy()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    :cond_a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 541
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v1

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "areBoundsLetterboxed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v1, :cond_27

    return-void

    .line 547
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxReasonString(Lcom/android/server/wm/WindowState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  activityAspectRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 549
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shouldShowLetterboxUi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v1, :cond_82

    return-void

    .line 557
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxBackgroundColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    .line 557
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxBackgroundType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 561
    invoke-virtual {v2}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v2

    .line 560
    invoke-static {v2}, Lcom/android/server/wm/LetterboxConfiguration;->letterboxBackgroundTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxCornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->getRoundedCorners(Landroid/view/InsetsState;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13f

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  isLetterboxWallpaperBlurSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxWallpaperBlurSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  letterboxBackgroundWallpaperDarkScrimAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  letterboxBackgroundWallpaperBlurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    :cond_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  isReachabilityEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  letterboxHorizontalPositionMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 576
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/LetterboxUiController;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  fixedOrientationLetterboxAspectRatio="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 579
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 578
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LetterboxUiController;->getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 577
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F
    .registers 4

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 241
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result p0

    return p0

    .line 245
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x105014b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    .line 251
    new-instance p0, Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 252
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 253
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 255
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F
    .registers 2

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 233
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getHorizontalMultiplierForReachability()F

    move-result p0

    goto :goto_13

    .line 234
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxHorizontalPositionMultiplier()F

    move-result p0

    :goto_13
    return p0
.end method

.method public final getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I
    .registers 3

    .line 483
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    .line 484
    :cond_c
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p0

    :goto_10
    return p0
.end method

.method public final getLetterboxBackgroundColor()Landroid/graphics/Color;
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_80

    .line 353
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_80

    .line 376
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 377
    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v0

    .line 378
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_79

    const/4 v3, 0x1

    if-eq v0, v3, :cond_61

    const/4 v3, 0x2

    if-eq v0, v3, :cond_50

    const/4 v2, 0x3

    if-ne v0, v2, :cond_39

    .line 391
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->hasWallpaperBackgroudForLetterbox()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 393
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    :cond_31
    const-string v0, "ActivityTaskManager"

    const-string v1, "Wallpaper option is selected for letterbox background but blur is not supported by a device or not supported in the current window configuration or both alpha scrim and blur radius aren\'t provided so using solid color background"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 403
    :cond_39
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox background type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_50
    if-eqz v2, :cond_72

    .line 381
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v0

    if-eqz v0, :cond_72

    .line 382
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    :cond_61
    if-eqz v2, :cond_72

    .line 386
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_72

    .line 387
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    .line 408
    :cond_72
    :goto_72
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    .line 401
    :cond_79
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    :cond_80
    :goto_80
    if-eqz v0, :cond_93

    .line 369
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v0

    if-eqz v0, :cond_93

    .line 370
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 371
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getMultiWindowLetterboxBackgroundColor()I

    move-result p0

    .line 370
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0

    .line 374
    :cond_93
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxDirection()I
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 608
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_2c

    if-nez v0, :cond_b

    goto :goto_2c

    .line 613
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 615
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v2

    .line 613
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 618
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Letterbox;->getDirection(II)I

    move-result p0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method public getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p0, :cond_c

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    .line 138
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_f
    return-void
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p0, :cond_9

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 129
    :cond_9
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public final getLetterboxReasonString(Lcom/android/server/wm/WindowState;)Ljava/lang/String;
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 589
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/BoundsCompatController;->isBoundsCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 590
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 593
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p0, "SIZE_COMPAT_MODE"

    return-object p0

    .line 596
    :cond_26
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result p0

    if-eqz p0, :cond_31

    const-string p0, "FIXED_ORIENTATION"

    return-object p0

    .line 599
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "DISPLAY_CUTOUT"

    return-object p0

    :cond_3a
    const-string p0, "UNKNOWN_REASON"

    return-object p0
.end method

.method public final getLetterboxWallpaperBlurRadius()I
    .registers 1

    .line 520
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result p0

    if-gez p0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0
.end method

.method public final getLetterboxWallpaperDarkScrimAlpha()F
    .registers 3

    .line 525
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperDarkScrimAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-ltz v1, :cond_11

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_12

    :cond_11
    move p0, v0

    :cond_12
    return p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getRoundedCorners(Landroid/view/InsetsState;)I
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-ltz v0, :cond_f

    .line 474
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result p0

    return p0

    :cond_f
    const/4 v0, 0x3

    .line 477
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LetterboxUiController;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result v0

    const/4 v1, 0x2

    .line 478
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/LetterboxUiController;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result p0

    .line 476
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final handleDoubleTap(I)V
    .registers 3

    .line 263
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_48

    .line 267
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_24

    return-void

    .line 272
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le v0, p1, :cond_34

    .line 274
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p1}, Lcom/android/server/wm/LetterboxConfiguration;->movePositionForReachabilityToNextLeftStop()V

    goto :goto_43

    .line 275
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ge v0, p1, :cond_43

    .line 277
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {p1}, Lcom/android/server/wm/LetterboxConfiguration;->movePositionForReachabilityToNextRightStop()V

    .line 281
    :cond_43
    :goto_43
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_48
    :goto_48
    return-void
.end method

.method public hasWallpaperBackgroudForLetterbox()Z
    .registers 1

    .line 121
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    return p0
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox;->notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public final isLetterboxWallpaperBlurSupported()Z
    .registers 2

    .line 531
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 532
    invoke-interface {p0}, Landroid/view/WindowManager;->isCrossWindowBlurEnabled()Z

    move-result p0

    return p0
.end method

.method public final isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 489
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isReachabilityEnabled()Z
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public final isReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getIsReachabilityEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 296
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1f

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 299
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-ne p0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 344
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 346
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    move p1, v1

    goto :goto_12

    :cond_11
    :goto_11
    move p1, v2

    :goto_12
    if-eqz p1, :cond_25

    .line 347
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p1

    if-nez p1, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_25

    :cond_24
    move v1, v2

    :cond_25
    return v1
.end method

.method public layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .registers 12

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_ef

    if-eqz p1, :cond_e

    if-eq v0, p1, :cond_e

    goto/16 :goto_ef

    .line 166
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->updateRoundedCorners(Lcom/android/server/wm/WindowState;)V

    .line 169
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_1f

    if-eq p1, v0, :cond_1f

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->updateRoundedCorners(Lcom/android/server/wm/WindowState;)V

    .line 175
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 177
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p1, :cond_47

    .line 178
    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox;->isUseFullWindowSurfaceChanged()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullWindowSurfaceChanged. r="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->destroy()V

    .line 183
    :cond_47
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_e8

    .line 184
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez p1, :cond_85

    .line 185
    new-instance p1, Lcom/android/server/wm/Letterbox;

    new-instance v2, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    new-instance v4, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v5, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v6, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v7, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v8, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v9, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda7;

    invoke-direct {v9, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/IntConsumer;)V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Letterbox;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 195
    :cond_85
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ConfigurationContainer;->getPosition(Landroid/graphics/Point;)V

    .line 200
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_95

    goto :goto_b6

    .line 203
    :cond_95
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 204
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_b6

    .line 205
    :cond_a8
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 207
    :goto_b6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    :cond_cf
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v1, :cond_dc

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    new-instance v2, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    iput-object v2, v1, Lcom/android/server/wm/Letterbox;->mCanHaveLetterboxSurfaceSupplier:Ljava/util/function/Supplier;

    .line 214
    :cond_dc
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v1, p1, v0, p0}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    goto :goto_ef

    .line 215
    :cond_e8
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p0, :cond_ef

    .line 216
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->hide()V

    :cond_ef
    :goto_ef
    return-void
.end method

.method public onMovedToDisplay(I)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p0, :cond_7

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    :cond_7
    return-void
.end method

.method public final shouldLetterboxHaveRoundedCorners()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->isLetterboxActivityCornersRounded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 224
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 311
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_3c

    .line 317
    :cond_1b
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_3b

    .line 321
    :cond_2c
    new-instance v0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0, p0, v2, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :cond_3b
    :goto_3b
    return v1

    :cond_3c
    :goto_3c
    return v2

    .line 333
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 335
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result p0

    if-eqz p0, :cond_5b

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-nez p0, :cond_5b

    goto :goto_5c

    :cond_5b
    move v1, v2

    :goto_5c
    return v1
.end method

.method public updateLetterboxSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_7

    .line 636
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->clearSurfaceFrame()V

    :cond_7
    if-eqz p1, :cond_25

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_25

    :cond_12
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 644
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq v0, p1, :cond_d

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    return-void

    .line 155
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 156
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 157
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    :cond_25
    return-void
.end method

.method public final updateRoundedCorners(Lcom/android/server/wm/WindowState;)V
    .registers 8

    .line 412
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 413
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 416
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    const/16 v3, 0x15

    .line 418
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 421
    invoke-virtual {p1}, Lcom/android/server/wm/LetterboxConfiguration;->isLetterboxActivityCornersRounded()Z

    move-result p1

    if-eqz p1, :cond_9c

    if-nez v3, :cond_38

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p1, :cond_9c

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->canHaveRoundedCornersWithoutTaskbar()Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_9c

    .line 435
    :cond_38
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p1, :cond_3f

    if-nez v3, :cond_3f

    goto :goto_8f

    .line 445
    :cond_3f
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v5, p0, Lcom/android/server/wm/LetterboxUiController;->mExpandedTaskBarHeight:F

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_8f

    .line 446
    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 447
    new-instance v4, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 451
    invoke-virtual {v4, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 453
    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    .line 454
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    .line 455
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 456
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatScale()F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v3

    if-gez p1, :cond_8f

    .line 457
    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatScale()F

    move-result p1

    div-float/2addr v3, p1

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 462
    :cond_8f
    :goto_8f
    invoke-virtual {v1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 463
    invoke-virtual {p0, v2}, Lcom/android/server/wm/LetterboxUiController;->getRoundedCorners(Landroid/view/InsetsState;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a4

    .line 427
    :cond_9c
    :goto_9c
    invoke-virtual {v1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 428
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_a4
    :goto_a4
    return-void
.end method

.method public final updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 494
    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 500
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result p1

    if-gtz p1, :cond_2a

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 503
    invoke-static {p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 505
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_44

    .line 507
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result p1

    if-lez p1, :cond_42

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 510
    invoke-static {p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 512
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxWallpaperBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_44

    :cond_42
    const/4 p1, 0x1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    .line 513
    :goto_45
    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    if-eq v0, p1, :cond_50

    .line 514
    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    .line 515
    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    :cond_50
    return-void
.end method
