.class public Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompatDisplayInsets"
.end annotation


# instance fields
.field public mCanRotationCompatMode:Z

.field public mConfigChangeNeeded:Z

.field public mCreatedByRotationCompat:Z

.field public mDisplayDeviceType:I

.field public mDisplayDeviceTypeChanged:Z

.field public mDisplayId:I

.field public final mHeight:I

.field public final mIsFloating:Z

.field public final mIsInFixedOrientationLetterbox:Z

.field public final mNonDecorInsets:[Landroid/graphics/Rect;

.field public final mOriginalRequestedOrientation:I
    .annotation build Landroid/content/res/Configuration$Orientation;
    .end annotation
.end field

.field public final mOriginalRotation:I

.field public final mOverrideConfig:Landroid/content/res/Configuration;

.field public mParentScreenLayout:I

.field public final mStableInsets:[Landroid/graphics/Rect;

.field public final mTmpContainerAppBounds:Landroid/graphics/Rect;

.field public final mTmpContainerBounds:Landroid/graphics/Rect;

.field public mWaitingForVisibleRequested:Z

.field public final mWidth:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceTypeChanged(Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceTypeChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOverrideConfig(Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayDeviceType(Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayDeviceTypeChanged(Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceTypeChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .registers 14

    .line 11406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    .line 11396
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-array v1, v0, [Landroid/graphics/Rect;

    .line 11402
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 11573
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mTmpContainerBounds:Landroid/graphics/Rect;

    .line 11574
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mTmpContainerAppBounds:Landroid/graphics/Rect;

    .line 11578
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    .line 11581
    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mParentScreenLayout:I

    .line 11623
    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayId:I

    .line 11409
    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayId:I

    .line 11411
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v4, v2, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v4, :cond_42

    .line 11413
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    .line 11414
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    .line 11415
    iget-boolean v2, v2, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    .line 11416
    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWaitingForVisibleRequested:Z

    .line 11419
    :cond_42
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOriginalRotation:I

    .line 11420
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    .line 11421
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOriginalRequestedOrientation:I

    if-eqz v2, :cond_84

    .line 11423
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 11424
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 11425
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 11428
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    move p2, v1

    :goto_74
    if-ge p2, v0, :cond_81

    .line 11430
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object p1, p3, p2

    .line 11431
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_74

    .line 11433
    :cond_81
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    return-void

    .line 11437
    :cond_84
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p3, :cond_8c

    move v2, v3

    goto :goto_8d

    :cond_8c
    move v2, v1

    .line 11439
    :goto_8d
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    if-eqz v2, :cond_92

    goto :goto_9d

    :cond_92
    if-eqz p2, :cond_99

    .line 11449
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    goto :goto_9d

    :cond_99
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    :goto_9d
    if-eqz p2, :cond_aa

    .line 11451
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    goto :goto_b4

    .line 11452
    :cond_aa
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    .line 11453
    :goto_b4
    invoke-static {p3, p2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v2

    .line 11455
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 11456
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 11460
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const/4 v2, 0x0

    goto :goto_d1

    :cond_cc
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11461
    :goto_d1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    move v5, v1

    :goto_d6
    if-ge v5, v0, :cond_13c

    .line 11463
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    .line 11464
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v5

    if-eq v5, v3, :cond_f2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f0

    goto :goto_f2

    :cond_f0
    move v6, v1

    goto :goto_f3

    :cond_f2
    :goto_f2
    move v6, v3

    :goto_f3
    if-eqz v6, :cond_f8

    .line 11466
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_fa

    :cond_f8
    iget v7, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_fa
    if-eqz v6, :cond_ff

    .line 11467
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_101

    :cond_ff
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 11468
    :goto_101
    invoke-virtual {p1, v5}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v8

    .line 11469
    invoke-virtual {v8}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 11470
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 11471
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11472
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-virtual {v4, v8, v5}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    if-nez v2, :cond_125

    goto :goto_139

    .line 11480
    :cond_125
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11481
    invoke-virtual {p1, p2, v5, v2}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 11485
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v2, v7, v6, v8}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 11486
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-static {v2, v7, v6, v8}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_139
    add-int/lit8 v5, v5, 0x1

    goto :goto_d6

    :cond_13c
    return-void
.end method

.method public static getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 11497
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 11498
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz v0, :cond_18

    .line 11499
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1d

    :cond_18
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    :goto_1d
    return-object v0
.end method

.method public static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 7

    .line 11508
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 11509
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 11510
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 11511
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 11626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11627
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "CompatDisplayInsets:"

    .line 11628
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11629
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11630
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mDisplayId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11632
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz p2, :cond_64

    const-string p2, ", mIsFloating=true"

    .line 11633
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11635
    :cond_64
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    if-eqz p2, :cond_6d

    const-string p2, ", mIsInFixedOrientationLetterbox=true"

    .line 11636
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11638
    :cond_6d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 11649
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz p2, :cond_b0

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    if-nez p2, :cond_84

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-nez p2, :cond_84

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    if-nez p2, :cond_84

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWaitingForVisibleRequested:Z

    if-eqz p2, :cond_b0

    .line 11652
    :cond_84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCreatedByRotationCompat="

    .line 11653
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11654
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, ", mCanRotationCompatMode="

    .line 11655
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11656
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 11657
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    if-eqz p2, :cond_a4

    const-string p2, ", mConfigChangeNeeded=true"

    .line 11658
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11660
    :cond_a4
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWaitingForVisibleRequested:Z

    if-eqz p0, :cond_ad

    const-string p0, ", mWaitingForVisibleRequested=true"

    .line 11661
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11663
    :cond_ad
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_b0
    return-void
.end method

.method public getBoundsByRotation(Landroid/graphics/Rect;I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_9

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    :cond_9
    :goto_9
    if-eqz v0, :cond_e

    .line 11516
    iget p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_10

    :cond_e
    iget p2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    :goto_10
    if-eqz v0, :cond_15

    .line 11517
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_17

    :cond_15
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 11518
    :goto_17
    invoke-virtual {p1, v1, v1, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 13

    .line 11532
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 11533
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_b

    .line 11534
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 11538
    :cond_b
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 11539
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 11540
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 11542
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_24

    move v2, v4

    goto :goto_25

    :cond_24
    move v2, v5

    :goto_25
    if-le v0, v1, :cond_29

    move v3, v4

    goto :goto_2a

    :cond_29
    move v3, v5

    :goto_2a
    if-eq v2, v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v4, v5

    :goto_2e
    if-eqz v4, :cond_57

    if-eqz p6, :cond_57

    if-eqz p5, :cond_57

    const/4 p5, 0x2

    if-ne p4, p5, :cond_41

    int-to-float p4, v0

    mul-float/2addr p4, p4

    int-to-float p5, v1

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 11548
    iput p4, p2, Landroid/graphics/Rect;->bottom:I

    .line 11549
    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_4a

    .line 11551
    :cond_41
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, v1

    mul-float/2addr p4, p4

    int-to-float p5, v0

    div-float/2addr p4, p5

    float-to-int p4, p4

    .line 11552
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 11554
    :goto_4a
    iget p4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-static {p4, p5}, Lcom/android/server/wm/ActivityRecord;->-$$Nest$smgetHorizontalCenterOffset(II)I

    move-result p4

    invoke-virtual {p2, p4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 11556
    :cond_57
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v4, :cond_6f

    .line 11562
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    .line 11563
    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 11564
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_79

    :cond_6f
    const/4 p4, -0x1

    if-eq p3, p4, :cond_79

    .line 11567
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object p0, p0, p3

    invoke-static {p1, p2, p0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public getFrameByOrientation(Landroid/graphics/Rect;I)V
    .registers 6

    .line 11522
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11523
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    move p2, v1

    :goto_17
    if-eqz p2, :cond_1b

    move v2, v0

    goto :goto_1c

    :cond_1b
    move v2, p0

    :goto_1c
    if-eqz p2, :cond_1f

    move v0, p0

    .line 11525
    :cond_1f
    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final isLaunchedInFolded()Z
    .registers 2

    .line 11611
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final setOverrideConfig(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 11584
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_f

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "updateCompatDisplayInsets: task is null"

    .line 11586
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11589
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 11590
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->-$$Nest$mgetCurrentDisplayDeviceType(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceType:I

    .line 11591
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->isLaunchedInFolded()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 11592
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 11591
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_42

    .line 11595
    :cond_2c
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mParentScreenLayout:I

    .line 11596
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 11597
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 11598
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 11599
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_42
    :goto_42
    return-void
.end method

.method public final updateDisplayDeviceTypeChanged(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_7

    .line 11604
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceTypeChanged:Z

    return-void

    .line 11607
    :cond_7
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceType:I

    if-eq v1, p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mDisplayDeviceTypeChanged:Z

    return-void
.end method
