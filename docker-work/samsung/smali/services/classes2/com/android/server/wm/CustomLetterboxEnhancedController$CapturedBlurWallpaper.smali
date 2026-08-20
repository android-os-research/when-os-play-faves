.class public Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;
.super Lcom/android/server/wm/CustomLetterboxEnhancedController;
.source "CustomLetterboxEnhancedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CustomLetterboxEnhancedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapturedBlurWallpaper"
.end annotation


# static fields
.field public static final DEBUG_UI:Z = false

.field public static final WALLPAPER_DRAW_DELAY:J = 0x7d0L


# instance fields
.field public mAdded:Z

.field public final mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

.field public mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

.field public mCapturedBlurWallpaperWindowParent:Lcom/android/server/wm/WindowState;

.field public final mContext:Landroid/content/Context;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mToken:Landroid/os/Binder;

.field public mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$7PTLMRqc93arWN7tFfKB1bKhslw(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->applyCapturedBlurWallpaper()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 395
    invoke-direct {p0, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 380
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mToken:Landroid/os/Binder;

    .line 383
    new-instance v0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;)V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

    .line 396
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addDebugUi(Landroid/view/ViewGroup;)V
    .registers 5

    .line 467
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 468
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 471
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 472
    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 473
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 472
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 474
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    .line 476
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_38
    return-void
.end method

.method public addWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 520
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mToken:Landroid/os/Binder;

    if-eq v0, v1, :cond_9

    return-void

    .line 523
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_14

    const-string v0, "CustomLetterbox"

    const-string v1, "mCapturedBlurWallpaperWindow is already not null."

    .line 524
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_14
    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    const/4 p1, 0x0

    .line 527
    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindowParent:Lcom/android/server/wm/WindowState;

    .line 528
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->reparent()V

    return-void
.end method

.method public adjustWallpaperWindowsLocked()V
    .registers 1

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->reparent()V

    return-void
.end method

.method public final applyCapturedBlurWallpaper()V
    .registers 7

    const-string v0, "CustomLetterbox"

    .line 401
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->getCapturedBlurWallpaperInfo()Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    move-result-object v1

    .line 402
    iput-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    .line 403
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_20

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyCapturedBlurWallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 407
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 408
    iput-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    .line 410
    :cond_2a
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 412
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    .line 413
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 416
    :cond_3f
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Z

    move-result v2

    if-eqz v2, :cond_ca

    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_ca

    const/4 v2, 0x1

    .line 417
    invoke-virtual {p0, v2}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->setViewVisible(Z)V

    .line 418
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v3

    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->updateLayoutParams(II)V

    .line 419
    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-nez v3, :cond_65

    .line 420
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    .line 426
    :cond_65
    new-instance v3, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v3, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 428
    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    .line 429
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 430
    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 432
    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    if-eqz v3, :cond_a6

    .line 433
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateView, mView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 437
    :cond_a6
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    iput-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView, mView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 442
    :cond_ca
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-eqz v2, :cond_f0

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeView, mView="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-interface {v2, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 445
    iput-object v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    :cond_f0
    const/4 v2, 0x0

    .line 447
    iput-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    .line 448
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_fa

    .line 449
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 452
    :cond_fa
    :goto_fa
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->-$$Nest$fgetmSeq(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->scheduleCompleteLetterboxEnhanced(JZ)V
    :try_end_103
    .catchall {:try_start_2 .. :try_end_103} :catchall_104

    goto :goto_10d

    :catchall_104
    move-exception v1

    const-string v2, "Failed to applyCapturedBlurWallpaper"

    .line 454
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->failLetterboxEnhanced()V

    :goto_10d
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 566
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    if-nez p2, :cond_8

    return-void

    .line 570
    :cond_8
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperInfo:Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 572
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    if-eqz p2, :cond_1e

    const-string p2, ", mAdded="

    .line 573
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    iget-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mAdded:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 576
    :cond_1e
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-eqz p2, :cond_2c

    const-string p2, ", mView="

    .line 577
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 580
    :cond_2c
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_3a

    const-string p2, ", mLayoutParams="

    .line 581
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 584
    :cond_3a
    iget-object p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_4e

    const-string p2, ", mBitmap="

    .line 585
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 588
    :cond_4e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 497
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    return p0
.end method

.method public onApplyLetterboxEnhanced()V
    .registers 4

    .line 507
    invoke-super {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->onApplyLetterboxEnhanced()V

    .line 508
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "CustomLetterbox"

    const-string/jumbo v1, "onApplyLetterboxEnhanced"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldShowLetterbox()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->setViewVisible(Z)V

    .line 514
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->removeCallbacks()V

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeCallbacks()V
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mApplyCapturedBlurWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 536
    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    .line 537
    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindowParent:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public final reparent()V
    .registers 4

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_35

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_35

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    goto :goto_35

    .line 552
    :cond_d
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 553
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindowParent:Lcom/android/server/wm/WindowState;

    if-ne v0, v2, :cond_20

    goto :goto_35

    .line 557
    :cond_20
    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindowParent:Lcom/android/server/wm/WindowState;

    .line 558
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 559
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mCapturedBlurWallpaperWindow:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 560
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    .line 561
    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_35
    :goto_35
    return-void
.end method

.method public final setViewVisible(Z)V
    .registers 2

    .line 460
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mView:Landroid/view/View;

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 461
    :goto_9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public final updateLayoutParams(II)V
    .registers 7

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_25

    .line 482
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    const/16 v2, 0x18

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 484
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mToken:Landroid/os/Binder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 485
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 487
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000040

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 490
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 491
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomLetterbox("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
