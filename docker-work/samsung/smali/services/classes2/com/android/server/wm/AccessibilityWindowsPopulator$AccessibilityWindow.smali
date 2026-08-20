.class public Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
.super Ljava/lang/Object;
.source "AccessibilityWindowsPopulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityWindowsPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityWindow"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayId:I

.field public mIgnoreDuetoRecentsAnimation:Z

.field public mInputConfig:I

.field public mIsFocused:Z

.field public mIsPIPMenu:Z

.field public final mLetterBoxBounds:Landroid/graphics/Region;

.field public mPrivateFlags:I

.field public mShouldMagnify:Z

.field public final mTouchableRegionInScreen:Landroid/graphics/Region;

.field public final mTouchableRegionInWindow:Landroid/graphics/Region;

.field public mType:I

.field public mWindow:Landroid/view/IWindow;

.field public mWindowInfo:Landroid/view/WindowInfo;


# direct methods
.method public static synthetic $r8$lambda$GLgRVsQmPs45pA-yX7ZcJZ6VqzU(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->lambda$getUnMagnifiedTouchableRegion$0(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 614
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    .line 615
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    return-void
.end method

.method public static getLetterBoxBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .registers 4

    .line 895
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 896
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 898
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 899
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 900
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public static getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .registers 7

    .line 820
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 821
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 822
    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 824
    invoke-static {p0, v0, p2, p4, p5}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .registers 5

    if-eqz p0, :cond_8

    .line 841
    invoke-virtual {p3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_8
    invoke-virtual {p4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 842
    invoke-virtual {p2, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void

    .line 846
    :cond_12
    new-instance p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;

    invoke-direct {p0, p4, p3, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {p1, p0}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;
    .registers 5

    .line 867
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 868
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 869
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 870
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 871
    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 v1, v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 873
    iput-boolean v3, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 877
    iget v1, v0, Landroid/view/WindowInfo;->type:I

    const/16 v3, 0x7f2

    if-ne v1, v3, :cond_40

    .line 879
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_3b

    .line 880
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x104013a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    goto :goto_4a

    :cond_3b
    const-string p0, "Splitscreen Divider"

    .line 884
    iput-object p0, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    goto :goto_4a

    .line 886
    :cond_40
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    if-eqz p0, :cond_4a

    const-string p0, "Picture-in-Picture menu"

    .line 887
    iput-object p0, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 889
    iput-boolean v2, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    :cond_4a
    :goto_4a
    return-object v0
.end method

.method public static initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;
    .registers 14

    .line 632
    invoke-virtual {p1}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 633
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 634
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 633
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_15

    :cond_14
    move-object v0, v1

    .line 636
    :goto_15
    new-instance v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    invoke-direct {v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;-><init>()V

    .line 638
    invoke-virtual {p1}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/view/IWindow;

    .line 639
    iget v3, p1, Landroid/view/InputWindowHandle;->displayId:I

    iput v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    .line 640
    iget v3, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 641
    iget v3, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 642
    invoke-virtual {p1}, Landroid/view/InputWindowHandle;->getWindow()Landroid/view/IWindow;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    const/4 p3, 0x0

    if-eqz v0, :cond_42

    .line 645
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_43

    :cond_42
    move v3, p3

    :goto_43
    iput v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    const/4 v3, 0x1

    if-eqz v0, :cond_50

    .line 647
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_50

    move v4, v3

    goto :goto_51

    :cond_50
    move v4, p3

    :goto_51
    iput-boolean v4, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    if-eqz v0, :cond_5e

    .line 648
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_5e

    :cond_5c
    move v4, p3

    goto :goto_5f

    :cond_5e
    :goto_5e
    move v4, v3

    :goto_5f
    iput-boolean v4, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    .line 650
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v4

    if-eqz v0, :cond_70

    if-eqz v4, :cond_70

    .line 652
    invoke-virtual {v4, v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_70

    goto :goto_71

    :cond_70
    move v3, p3

    :goto_71
    iput-boolean v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    if-eqz v0, :cond_80

    .line 655
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 656
    iget-object v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-static {v0, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getLetterBoxBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V

    .line 661
    :cond_80
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_8e

    .line 662
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    :cond_8e
    iput-object v1, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mContext:Landroid/content/Context;

    .line 666
    new-instance v6, Landroid/graphics/Rect;

    iget p0, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    iget v1, p1, Landroid/view/InputWindowHandle;->frameTop:I

    iget v3, p1, Landroid/view/InputWindowHandle;->frameRight:I

    iget v4, p1, Landroid/view/InputWindowHandle;->frameBottom:I

    invoke-direct {v6, p0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 669
    iget-boolean v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v4, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v5, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    move-object v7, p2

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getTouchableRegionInWindow(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 672
    iget-boolean p0, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-static {p0, v1, v3, p2, p4}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getUnMagnifiedTouchableRegion(ZLandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    if-eqz v0, :cond_b8

    .line 676
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object p0

    goto :goto_bc

    :cond_b8
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->getWindowInfoForWindowlessWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;)Landroid/view/WindowInfo;

    move-result-object p0

    :goto_bc
    iput-object p0, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 680
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 681
    iget-object p1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 682
    invoke-virtual {p0, p4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 683
    iget-object p1, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object p1, p1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 686
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 687
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->shouldMagnify()Z

    move-result p1

    if-eqz p1, :cond_11a

    if-eqz p2, :cond_11a

    .line 688
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p1

    if-nez p1, :cond_11a

    .line 689
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 690
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 691
    iget-object p0, v2, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object p0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 692
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p1

    aget p1, p1, p3

    iput p1, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 693
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p1

    const/4 p2, 0x2

    aget p1, p1, p2

    iput p1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 694
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetsTempFloats()[F

    move-result-object p1

    const/4 p2, 0x5

    aget p1, p1, p2

    iput p1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_11a

    .line 696
    :cond_111
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "can\'t find spec"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    :goto_11a
    return-object v2
.end method

.method public static synthetic lambda$getUnMagnifiedTouchableRegion$0(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 5

    .line 848
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 850
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 851
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 855
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 856
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 857
    invoke-virtual {p2, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method


# virtual methods
.method public getPrivateFlag()I
    .registers 1

    .line 734
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    return p0
.end method

.method public getTouchableRegionInScreen(Landroid/graphics/Region;)V
    .registers 2

    .line 711
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getTouchableRegionInWindow(Landroid/graphics/Region;)V
    .registers 2

    .line 719
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getType()I
    .registers 1

    .line 726
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    return p0
.end method

.method public getWindowInfo()Landroid/view/WindowInfo;
    .registers 1

    .line 741
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    return-object p0
.end method

.method public ignoreRecentsAnimationForAccessibility()Z
    .registers 1

    .line 777
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    return p0
.end method

.method public isFocused()Z
    .registers 1

    .line 770
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    return p0
.end method

.method public isPIPMenu()Z
    .registers 1

    .line 809
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    return p0
.end method

.method public isTouchable()Z
    .registers 1

    .line 791
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isTrustedOverlay()Z
    .registers 1

    .line 784
    iget p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isUntouchableNavigationBar()Z
    .registers 3

    .line 798
    iget v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 802
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public setLetterBoxBoundsIfNeeded(Landroid/graphics/Region;)Ljava/lang/Boolean;
    .registers 3

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 752
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 755
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 756
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public shouldMagnify()Z
    .registers 1

    .line 763
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A11yWindow=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputConfig=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 907
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", privateFlag=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mPrivateFlags:I

    .line 909
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mShouldMagnify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreDuetoRecentsAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTrustedOverlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTrustedOverlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", regionInScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", touchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", letterBoxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mLetterBoxBounds:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPIPMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", windowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
