.class public final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplay$DisplayPhase;
    }
.end annotation


# static fields
.field public static final BLANK_LAYER_STACK:I = -0x1

.field public static final DISPLAY_PHASE_DISABLED:I = -0x1

.field public static final DISPLAY_PHASE_ENABLED:I = 0x1

.field public static final DISPLAY_PHASE_LAYOUT_TRANSITION:I = 0x0

.field public static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

.field public static final TAG:Ljava/lang/String; = "LogicalDisplay"


# instance fields
.field public final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field public mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDisplayGroupId:I

.field public final mDisplayId:I

.field public mDisplayOffsetX:I

.field public mDisplayOffsetY:I

.field public final mDisplayPosition:Landroid/graphics/Point;

.field public mDisplayScalingDisabled:Z

.field public mDualSwitchApplied:Z

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mHasContent:Z

.field public final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field public final mLayerStack:I

.field public mMaskingCutout:Z

.field public mNeedToUpdateBaseDisplayInfo:Z

.field public mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mPendingFrameRateOverrideUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPhase:I
    .annotation build Lcom/android/server/display/LogicalDisplay$DisplayPhase;
    .end annotation
.end field

.field public mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mRequestedColorMode:I

.field public mRequestedMinimalPostProcessing:Z

.field public final mTempDisplayRect:Landroid/graphics/Rect;

.field public final mTempFrameRateOverride:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempLayerStackRect:Landroid/graphics/Rect;

.field public mUserDisabledHdrTypes:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .registers 6

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 127
    new-instance v0, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 140
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 142
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 152
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 171
    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    .line 194
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 195
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 196
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 197
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 198
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    return-void
.end method

.method public static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .registers 2

    .line 568
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_14

    .line 569
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_14

    .line 571
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 573
    :cond_14
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method


# virtual methods
.method public clearPendingFrameRateOverrideUids()V
    .registers 2

    .line 269
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-void
.end method

.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .registers 16

    .line 608
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move p3, v2

    :cond_9
    if-eqz p3, :cond_d

    const/4 p3, -0x1

    goto :goto_f

    .line 614
    :cond_d
    iget p3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_f
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 618
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p3

    iget p3, p3, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v0, 0x1

    if-eqz p3, :cond_1d

    move p3, v0

    goto :goto_1e

    :cond_1d
    move p3, v2

    .line 617
    :goto_1e
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/DisplayDevice;->setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 622
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne p2, p3, :cond_30

    .line 623
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 624
    iget p3, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_3b

    .line 627
    :cond_30
    new-instance p3, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {p3}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 629
    invoke-virtual {p2, v2}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 632
    :goto_3b
    iget-boolean p3, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 633
    iget-boolean p3, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 636
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p3

    .line 637
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 642
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v5, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 648
    iget v4, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_5f

    .line 649
    iget v4, p3, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_60

    :cond_5f
    move v4, v2

    .line 653
    :goto_60
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v6, :cond_69

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    if-eqz v6, :cond_69

    move v4, v0

    .line 659
    :cond_69
    iget v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v4, v6

    rem-int/2addr v4, v1

    if-eq v4, v0, :cond_75

    const/4 v1, 0x3

    if-ne v4, v1, :cond_73

    goto :goto_75

    :cond_73
    move v1, v2

    goto :goto_76

    :cond_75
    :goto_75
    move v1, v0

    :goto_76
    if-eqz v1, :cond_7b

    .line 668
    iget v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_7d

    :cond_7b
    iget v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_7d
    if-eqz v1, :cond_82

    .line 669
    iget v1, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_84

    :cond_82
    iget v1, v3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 671
    :goto_84
    invoke-static {v3}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v7

    .line 672
    invoke-static {v7, v4}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 674
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 675
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v1, v8

    .line 685
    iget v8, p3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-nez v8, :cond_b5

    iget-boolean v8, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v8, :cond_a3

    goto :goto_b5

    .line 688
    :cond_a3
    iget v8, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int v9, v6, v8

    iget v10, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int v11, v1, v10

    if-ge v9, v11, :cond_b1

    mul-int/2addr v8, v6

    .line 692
    div-int/2addr v8, v10

    move v10, v6

    goto :goto_b9

    :cond_b1
    mul-int/2addr v10, v1

    .line 695
    div-int/2addr v10, v8

    move v8, v1

    goto :goto_b9

    .line 686
    :cond_b5
    :goto_b5
    iget v10, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 687
    iget v8, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_b9
    sub-int/2addr v1, v8

    .line 698
    div-int/2addr v1, v5

    sub-int/2addr v6, v10

    .line 699
    div-int/2addr v6, v5

    .line 700
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int/2addr v10, v6

    add-int/2addr v8, v1

    invoke-virtual {v9, v6, v1, v10, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 704
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    if-nez v4, :cond_d9

    .line 707
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_fe

    :cond_d9
    if-ne v4, v0, :cond_e6

    .line 709
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_fe

    :cond_e6
    if-ne v4, v5, :cond_f4

    .line 711
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v1, v1

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_fe

    .line 713
    :cond_f4
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v1, v1

    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 716
    :goto_fe
    iget v0, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10e

    .line 717
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p3, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v2, v2, v1, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 720
    :cond_10e
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 721
    iget-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v4, p3, p0}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_e1

    .line 902
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_e4

    :cond_e1
    const-string/jumbo v1, "null"

    :goto_e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrameRateOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v0, :cond_173

    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    if-eqz p0, :cond_173

    const-string/jumbo p0, "mDualSwitchApplied=true"

    .line 910
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_173
    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 1

    .line 759
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object p0
.end method

.method public getDisplayIdLocked()I
    .registers 1

    .line 207
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return p0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_53

    .line 228
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_4e

    .line 231
    iget v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 232
    iget v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 233
    iget v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 234
    iget v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 235
    iget v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 236
    iget v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 237
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 238
    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 239
    iget v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v2, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 240
    iget v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v2, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 241
    iget v2, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v2, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 242
    iget-object v2, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v2, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 243
    iget v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 244
    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v1, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 246
    :cond_4e
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 248
    :cond_53
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayOffsetXLocked()I
    .registers 1

    .line 795
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return p0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 1

    .line 802
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return p0
.end method

.method public getDisplayPosition()Landroid/graphics/Point;
    .registers 2

    .line 584
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 1

    .line 561
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {p0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPendingFrameRateOverrideUids()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPhase()I
    .registers 1
    .annotation build Lcom/android/server/display/LogicalDisplay$DisplayPhase;
    .end annotation

    .line 879
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    return p0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object p0
.end method

.method public getRequestedColorModeLocked()I
    .registers 1

    .line 788
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return p0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .registers 1

    .line 773
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return p0
.end method

.method public hasContentLocked()Z
    .registers 1

    .line 735
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return p0
.end method

.method public isDisplayScalingDisabled()Z
    .registers 1

    .line 818
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return p0
.end method

.method public isEnabled()Z
    .registers 2

    .line 889
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    if-nez p0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method public isValidLocked()Z
    .registers 1

    .line 314
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 2

    .line 752
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 288
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_15

    .line 289
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 290
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    .line 292
    :cond_15
    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 293
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 294
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    .line 297
    :cond_26
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p1, :cond_32

    .line 298
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 299
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3

    .line 809
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 810
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .registers 2

    .line 828
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2

    .line 744
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return-void
.end method

.method public setMaskingCutout(Z)V
    .registers 2

    .line 927
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mMaskingCutout:Z

    const/4 p1, 0x1

    .line 928
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mNeedToUpdateBaseDisplayInfo:Z

    return-void
.end method

.method public setPhase(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/android/server/display/LogicalDisplay$DisplayPhase;
        .end annotation
    .end param

    .line 870
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .registers 5

    .line 858
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 859
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 p1, 0x0

    .line 862
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 863
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 864
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return-object v0
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    .line 766
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .registers 2

    .line 783
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return-void
.end method

.method public setUserDisabledHdrTypes([I)V
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_10

    .line 833
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 834
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 835
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_10
    return-void
.end method

.method public swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 847
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 917
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 918
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 919
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisplayGroupIdLocked(I)V
    .registers 3

    .line 323
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq p1, v0, :cond_10

    .line 324
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 325
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput p1, v0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 326
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_10
    return-void
.end method

.method public final updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 10

    .line 527
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 528
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 530
    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 531
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v4, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 532
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 531
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 535
    :cond_20
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz p1, :cond_62

    .line 538
    array-length v0, p1

    move v2, v1

    :goto_28
    if-ge v2, v0, :cond_62

    aget-object v3, p1, v2

    .line 539
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_52

    .line 540
    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_4a

    goto :goto_52

    .line 544
    :cond_4a
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_5f

    .line 541
    :cond_52
    :goto_52
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 542
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 541
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 548
    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_7c

    .line 549
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_7c
    return-void
.end method

.method public updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V
    .registers 12

    .line 339
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_5

    return-void

    .line 344
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayDeviceRepository;->containsLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void

    .line 354
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 355
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_20f

    .line 368
    :cond_20
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_WIRELESS:Z

    const/4 v3, 0x2

    const/high16 v4, 0x20000000

    if-eqz v2, :cond_3f

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-ne v2, v3, :cond_3f

    .line 370
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceRepository;->hasDisplayDeviceForWirelessDexLocked()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 371
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v2, -0x20000001

    and-int/2addr p1, v2

    iput p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_3f

    .line 373
    :cond_3a
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr p1, v4

    iput p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 377
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    const/4 v2, 0x0

    .line 378
    iput v2, p1, Landroid/view/DisplayInfo;->flags:I

    .line 379
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v6, v5, 0x8

    const/4 v7, 0x1

    if-eqz v6, :cond_53

    const/4 v6, 0x0

    or-int/2addr v6, v7

    .line 380
    iput v6, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_53
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_5c

    .line 383
    iget v6, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v3, v6

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_5c
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_68

    .line 386
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    .line 388
    iput v7, p1, Landroid/view/DisplayInfo;->removeMode:I

    :cond_68
    and-int/lit16 v3, v5, 0x400

    if-eqz v3, :cond_6e

    .line 391
    iput v7, p1, Landroid/view/DisplayInfo;->removeMode:I

    .line 394
    :cond_6e
    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v3, :cond_73

    goto :goto_7d

    :cond_73
    and-int/lit8 v3, v5, 0x40

    if-eqz v3, :cond_7d

    .line 402
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_7d
    :goto_7d
    and-int/lit16 v3, v5, 0x100

    if-eqz v3, :cond_87

    .line 405
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_87
    and-int/lit16 v3, v5, 0x200

    if-eqz v3, :cond_91

    .line 408
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_91
    and-int/lit16 v3, v5, 0x1000

    if-eqz v3, :cond_9b

    .line 411
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_9b
    and-int/lit16 v3, v5, 0x2000

    if-eqz v3, :cond_a5

    .line 414
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_a5
    and-int/lit16 v3, v5, 0x4000

    if-eqz v3, :cond_af

    .line 417
    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_af
    const v3, 0x8000

    and-int v6, v5, v3

    if-eqz v6, :cond_bc

    .line 420
    iget v6, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p1, Landroid/view/DisplayInfo;->flags:I

    :cond_bc
    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_c7

    .line 423
    iget v5, p1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p1, Landroid/view/DisplayInfo;->flags:I

    .line 425
    :cond_c7
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object p1

    .line 426
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 427
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, p1

    .line 429
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v8, p1, Landroid/view/DisplayInfo;->type:I

    .line 430
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v8, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 431
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v8, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 432
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v8, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 433
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v8, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 434
    iput v5, p1, Landroid/view/DisplayInfo;->appWidth:I

    .line 435
    iput v6, p1, Landroid/view/DisplayInfo;->appHeight:I

    .line 436
    iput v5, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 437
    iput v6, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 438
    iput v2, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 439
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v8, p1, Landroid/view/DisplayInfo;->modeId:I

    .line 440
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v8, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 441
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/Display$Mode;

    iput-object v8, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 443
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v8, p1, Landroid/view/DisplayInfo;->colorMode:I

    .line 444
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    iput-object v8, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 447
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v8, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 448
    iget-object v8, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v8, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 449
    iget-boolean v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v8, :cond_132

    iget-boolean v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v8, :cond_130

    goto :goto_132

    :cond_130
    move v8, v2

    goto :goto_133

    :cond_132
    :goto_132
    move v8, v7

    :goto_133
    iput-boolean v8, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 451
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v8, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 452
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v8, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 453
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v8, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 454
    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v8, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 455
    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v8, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 456
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v8, p1, Landroid/view/DisplayInfo;->state:I

    .line 457
    iput v5, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 458
    iput v6, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 459
    iput v5, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 460
    iput v6, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 461
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v5, p1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 462
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v5, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 463
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_165

    move v5, v7

    goto :goto_166

    :cond_165
    move v5, v2

    :goto_166
    if-eqz v5, :cond_16a

    move-object v5, v1

    goto :goto_16c

    .line 465
    :cond_16a
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_16c
    iput-object v5, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 466
    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v5, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 467
    iget v5, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v5, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplay;->updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 469
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v5, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 470
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v5, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 471
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v5, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 472
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v5, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 473
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iput v5, p1, Landroid/view/DisplayInfo;->installOrientation:I

    .line 474
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 475
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p1, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 482
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v1, 0x80000

    and-int v5, p1, v1

    if-eqz v5, :cond_1a5

    .line 484
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v6

    iput v1, v5, Landroid/view/DisplayInfo;->flags:I

    .line 489
    :cond_1a5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v1, :cond_1b6

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p1

    if-eqz v1, :cond_1b6

    .line 491
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v1, Landroid/view/DisplayInfo;->flags:I

    .line 496
    :cond_1b6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_1c6

    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1c6

    .line 498
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v3, v5

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_1c6
    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1d3

    .line 504
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_1d3
    const/high16 v1, 0x10000000

    and-int v3, p1, v1

    if-eqz v3, :cond_1eb

    .line 507
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v5

    iput v1, v3, Landroid/view/DisplayInfo;->flags:I

    .line 508
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    if-eq v0, v7, :cond_1e7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e9

    .line 509
    :cond_1e7
    iput v7, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 511
    :cond_1e9
    iput v2, v3, Landroid/view/DisplayInfo;->refreshRateMode:I

    :cond_1eb
    and-int v0, p1, v4

    if-eqz v0, :cond_1f6

    .line 514
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    :cond_1f6
    const/high16 v0, 0x8000000

    and-int v1, p1, v0

    if-eqz v1, :cond_203

    .line 517
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_203
    const/high16 v0, 0x4000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_20f

    .line 520
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget p1, p0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/DisplayInfo;->flags:I

    :cond_20f
    :goto_20f
    return-void
.end method
