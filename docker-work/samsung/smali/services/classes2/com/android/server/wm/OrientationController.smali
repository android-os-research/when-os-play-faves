.class public Lcom/android/server/wm/OrientationController;
.super Lcom/android/server/wm/PackagesChangeAsTask;
.source "OrientationController.java"

# interfaces
.implements Lcom/android/server/wm/AspectRatioController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OrientationController$RotationCompatReason;,
        Lcom/android/server/wm/OrientationController$RotationCompatPolicy;
    }
.end annotation


# static fields
.field public static final DISALLOW_WHEN_LANDSCAPE:Z = true

.field public static final DISALLOW_WHEN_PORTRAIT:Z = false

.field public static final TAG:Ljava/lang/String; = "OrientationController"


# instance fields
.field public mDefaultEnabled:Z

.field public mDisallowWhenLandscapeFixedApp:Z

.field public mDisallowWhenPortraitFixedApp:Z

.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mIgnoreAppRotationList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mRotationCompatPolicy:I

.field public mUseAspectRatioStarting:Z

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Qc8LvIwXf3uJmAbt8qUFwjknFj4(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/OrientationController;->lambda$onUpdateValueToTask$1(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVkXDQ0JOezTYXwRn0BSm_fqvaY(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/OrientationController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 11

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChangeAsTask;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 77
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object p1, p0, Lcom/android/server/wm/OrientationController;->mIgnoreAppRotationList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 84
    new-instance v5, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/OrientationController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 86
    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_1f

    move v6, v7

    goto :goto_20

    :cond_1f
    move v6, v8

    :goto_20
    const/16 v2, 0x40

    const-string v4, "OrientationControlPackageMap"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;Z)V

    iput-object p1, p0, Lcom/android/server/wm/OrientationController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 93
    iput-boolean v8, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    .line 94
    iput-boolean v7, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenPortraitFixedApp:Z

    const/4 v0, 0x2

    .line 469
    iput v0, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    new-array v0, v8, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    aput-object p1, v0, v7

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method

.method public static getRotationCompatReasonFromSizeChangesSupported(IZ)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    if-eqz p1, :cond_10

    const/16 p0, 0xcf

    goto :goto_12

    :cond_10
    const/16 p0, 0xcd

    :goto_12
    return p0

    :cond_13
    if-eqz p1, :cond_18

    const/16 p0, 0xce

    goto :goto_1a

    :cond_18
    const/16 p0, 0xcc

    :goto_1a
    return p0

    :cond_1b
    if-eqz p1, :cond_20

    const/16 p0, 0x66

    goto :goto_22

    :cond_20
    const/16 p0, 0x65

    :goto_22
    return p0
.end method

.method public static isEnabled(Lcom/android/server/wm/Task;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 440
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz p0, :cond_c

    :cond_a
    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 85
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onUpdateValueToTask$1(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    return-void
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 449
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, "land"

    return-object p0

    :cond_e
    const-string/jumbo p0, "port"

    return-object p0
.end method

.method public static policyToString(Lcom/android/server/wm/Task;)Ljava/lang/String;
    .registers 2

    .line 453
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    if-eqz v0, :cond_7

    const-string p0, "ENABLED_AS_FULL_SCREEN"

    return-object p0

    .line 456
    :cond_7
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz p0, :cond_e

    const-string p0, "ENABLED_AS_ASPECT_RATIO"

    return-object p0

    :cond_e
    const-string p0, "DISABLED"

    return-object p0
.end method

.method public static rotationCompatPolicyToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 646
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "AUTO"

    return-object p0

    :cond_10
    const-string p0, "ALWAYS_ENABLED"

    return-object p0

    :cond_13
    const-string p0, "ALWAYS_DISABLED"

    return-object p0
.end method

.method public static rotationCompatReasonToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_36

    packed-switch p0, :pswitch_data_42

    .line 680
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    const-string p0, "NON_DEFAULT_DISPLAY"

    return-object p0

    :pswitch_e
    const-string p0, "RESIZABLE_ACTIVITY"

    return-object p0

    :pswitch_11
    const-string p0, "DISPLAY_COMPAT_POLICY_SUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_14
    const-string p0, "DISPLAY_COMPAT_POLICY_SUPPORTED_METADATA"

    return-object p0

    :pswitch_17
    const-string p0, "SIZE_CHANGES_SUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_1a
    const-string p0, "SIZE_CHANGES_SUPPORTED_METADATA"

    return-object p0

    :pswitch_1d
    const-string p0, "POLICY_DISABLED"

    return-object p0

    :pswitch_20
    const-string p0, "DISPLAY_FOLDED"

    return-object p0

    :pswitch_23
    const-string p0, "IN_MULTI_WINDOW_MODE"

    return-object p0

    :pswitch_26
    const-string p0, "ROTATION_COMPAT_MODE_DISABLED"

    return-object p0

    :pswitch_29
    const-string p0, "UNRESIZABLE_ACTIVITY"

    return-object p0

    :pswitch_2c
    const-string p0, "DISPLAY_COMPAT_POLICY_UNSUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_2f
    const-string p0, "SIZE_CHANGES_UNSUPPORTED_OVERRIDE"

    return-object p0

    :pswitch_32
    const-string p0, "ROTATION_COMPAT_MODE_ENABLED"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x64
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0xc8
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 4

    .line 384
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_e

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OrientationController;->adjustBoundsAsRotationCompat(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void

    .line 389
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final adjustBoundsAsRotationCompat(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 11

    .line 582
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatScale()F

    move-result v0

    .line 583
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 584
    :goto_10
    iget-boolean v2, p0, Lcom/android/server/wm/OrientationController;->mUseAspectRatioStarting:Z

    if-nez v2, :cond_1d

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1c

    if-nez v1, :cond_1d

    :cond_1c
    return-void

    .line 587
    :cond_1d
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 588
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 589
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 590
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 591
    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 592
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v5, :cond_41

    const/4 v2, 0x1

    goto :goto_42

    :cond_41
    move v2, v6

    :goto_42
    if-nez v2, :cond_48

    .line 594
    iget-boolean v5, p0, Lcom/android/server/wm/OrientationController;->mUseAspectRatioStarting:Z

    if-eqz v5, :cond_78

    :cond_48
    if-eqz v2, :cond_4f

    .line 595
    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->getBoundsCompatAlignment()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object v5

    goto :goto_53

    .line 596
    :cond_4f
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignment;->getCenterAlignment()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object v5

    .line 598
    :goto_53
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    if-eqz v7, :cond_5e

    .line 599
    invoke-virtual {v5}, Lcom/android/server/wm/BoundsCompatAlignment;->isCenterVertical()Z

    move-result v7

    if-eqz v7, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object v0, p2

    .line 603
    :goto_5f
    iget-object v7, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v0, v4, v7}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I

    move-result v7

    if-eqz v7, :cond_78

    .line 606
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 607
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v1, :cond_78

    .line 609
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v0, v1, p1}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I

    move-result p1

    .line 611
    invoke-virtual {v1, v6, p1}, Landroid/graphics/Rect;->offset(II)V

    :cond_78
    if-nez v2, :cond_9f

    .line 616
    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->getBoundsCompatAlignment()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object p0

    .line 617
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/BoundsCompatAlignment;->getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    .line 618
    iget v0, v4, Landroid/graphics/Rect;->left:I

    if-eq v0, p1, :cond_90

    .line 619
    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 620
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_90
    if-eqz v1, :cond_9f

    .line 623
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/BoundsCompatAlignment;->getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    .line 625
    iget p1, v1, Landroid/graphics/Rect;->left:I

    if-eq p1, p0, :cond_9f

    .line 626
    iget p1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_9f
    return-void
.end method

.method public final assertBooleanOptionsRequires(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6

    .line 355
    array-length p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    aget-object p0, p2, v0

    if-nez p0, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    if-eqz v0, :cond_20

    .line 357
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " options requires: [true/false]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    return v0
.end method

.method public canRotationCompatMode(I)Z
    .registers 2

    const/16 p0, 0x64

    if-lt p1, p0, :cond_a

    const/16 p0, 0xc8

    if-ge p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public canSetOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    .line 178
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-nez v1, :cond_a

    goto :goto_2a

    .line 181
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 182
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-nez v2, :cond_15

    goto :goto_2a

    .line 186
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_28

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->getAdjustedScreenOrientationIfNoSensor(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->isDisallowWhenLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_28

    return v0

    :cond_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public clearRotationCompatMode(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4

    .line 552
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 556
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCreatedByRotationCompat:Z

    if-nez v0, :cond_f

    const/4 p1, 0x0

    .line 557
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    return-void

    :cond_f
    const/4 v0, 0x1

    if-eqz p2, :cond_18

    .line 561
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mConfigChangeNeeded:Z

    .line 562
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iput-object p0, p2, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 564
    :cond_18
    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode(ZZ)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 289
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultEnabled="

    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ", mDisallowWhenLandscapeFixedApp="

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 294
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 295
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_47

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mRotationCompatPolicy="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    .line 297
    invoke-static {p2}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mUseAspectRatioStarting:Z

    if-eqz p0, :cond_44

    const-string p0, ", mUseAspectRatioStarting=true"

    .line 299
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    :cond_44
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_47
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8

    .line 307
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "-setOrientationControlDefault"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OrientationController;->assertBooleanOptionsRequires(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    .line 312
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 313
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mDefaultEnabled="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_1b .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_44
    move-exception p0

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_4a
    const-string v0, "-setDisallowWhenLandscapeFixedApp"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 319
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OrientationController;->assertBooleanOptionsRequires(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_59

    return v2

    .line 320
    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 321
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mDisallowWhenLandscapeFixedApp="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_5e .. :try_end_83} :catchall_87

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_87
    move-exception p0

    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 327
    :cond_8d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_122

    const-string v0, "-setRotationCompatPolicy"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 330
    :try_start_99
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/OrientationController;->setRotationCompatPolicy([Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_de

    .line 332
    :catch_9d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [RotationCompatPolicy]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "RotationCompatPolicyList"

    .line 333
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array p1, p0, [I

    .line 334
    fill-array-data p1, :array_124

    :goto_bc
    if-ge v1, p0, :cond_de

    .line 336
    aget p2, p1, v1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    :cond_de
    :goto_de
    return v2

    :cond_df
    const-string v0, "-setUseAspectRatioStarting"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 343
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/OrientationController;->assertBooleanOptionsRequires(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_ee

    return v2

    .line 344
    :cond_ee
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_f3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 345
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/OrientationController;->mUseAspectRatioStarting:Z

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mUseAspectRatioStarting="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mUseAspectRatioStarting:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_f3 .. :try_end_118} :catchall_11c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_11c
    move-exception p0

    :try_start_11d
    monitor-exit v0
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_122
    return v1

    nop

    :array_124
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public final getAdjustedOrientation(I)I
    .registers 3

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->isDisallowWhenLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x6

    if-ne p1, p0, :cond_a

    return p0

    :cond_a
    const/16 p0, 0xb

    return p0

    :cond_d
    const/4 p0, 0x4

    const/16 v0, 0xa

    if-eq p1, p0, :cond_18

    if-ne p1, v0, :cond_15

    goto :goto_18

    :cond_15
    const/16 p0, 0xd

    return p0

    :cond_18
    :goto_18
    return v0
.end method

.method public getAdjustedOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 4

    const/4 v0, -0x2

    if-eqz p1, :cond_2d

    .line 140
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-nez v1, :cond_a

    goto :goto_2d

    .line 147
    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 149
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->getAdjustedScreenOrientationIfNoSensor(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->getAdjustedOrientation(I)I

    move-result p0

    return p0

    :cond_2d
    :goto_2d
    return v0
.end method

.method public final getAdjustedScreenOrientationIfNoSensor(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3

    .line 199
    iget p0, p1, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_11

    .line 200
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1

    :cond_11
    return p0
.end method

.method public getPolicy(ILjava/lang/String;)I
    .registers 6

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/OrientationController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OrientationController;->getPolicyFromLegacyFlag(I)I

    move-result p0

    return p0

    .line 110
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 111
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackagesChange;->isHomeActivity(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_21

    move v1, v2

    :cond_21
    return v1

    .line 114
    :cond_22
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_IGNORE_APP_ROTATION_LIST:Z

    if-eqz p1, :cond_2f

    iget-object p0, p0, Lcom/android/server/wm/OrientationController;->mIgnoreAppRotationList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    return v1

    :cond_2f
    return v2
.end method

.method public final getPolicyFromLegacyFlag(I)I
    .registers 4

    if-eqz p1, :cond_19

    const/4 p0, 0x7

    if-eq p1, p0, :cond_19

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_19

    const/16 v1, 0x20

    if-eq p1, v1, :cond_19

    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_17

    and-int/lit8 p1, p1, 0x18

    if-eqz p1, :cond_16

    return v0

    :cond_16
    return p0

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    return p1
.end method

.method public getRotationCompatReason(Lcom/android/server/wm/ActivityRecord;)I
    .registers 5

    .line 498
    iget v0, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    if-nez v0, :cond_7

    const/16 p0, 0xc8

    return p0

    .line 501
    :cond_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 502
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 p0, 0xca

    return p0

    .line 505
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_21

    const/16 p0, 0xd1

    return p0

    .line 508
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 509
    iget p0, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2d

    const/16 p0, 0x64

    return p0

    .line 512
    :cond_2d
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 513
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->supportsSizeChanges()I

    move-result p0

    const/4 v2, 0x0

    .line 512
    invoke-static {p0, v2}, Lcom/android/server/wm/OrientationController;->getRotationCompatReasonFromSizeChangesSupported(IZ)I

    move-result p0

    if-eqz p0, :cond_3b

    return p0

    .line 517
    :cond_3b
    iget-object p0, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_58

    .line 519
    invoke-static {}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getDisplayCompatPolicies()Lcom/samsung/android/server/util/DisplayCompatPolicies;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getPolicy(Ljava/lang/String;)I

    move-result p0

    .line 518
    invoke-static {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getSizeChangesSupported(I)I

    move-result p0

    .line 520
    invoke-static {p0, v1}, Lcom/android/server/wm/OrientationController;->getRotationCompatReasonFromSizeChangesSupported(IZ)I

    move-result p0

    if-eqz p0, :cond_58

    return p0

    .line 526
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p0

    if-eqz p0, :cond_61

    const/16 p0, 0xd0

    goto :goto_63

    :cond_61
    const/16 p0, 0x67

    :goto_63
    return p0
.end method

.method public final isDisallowWhenLandscape(I)Z
    .registers 2

    .line 207
    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    if-eqz p0, :cond_c

    .line 208
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isDisallowWhenPortrait(I)Z
    .registers 2

    .line 212
    iget-boolean p0, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenPortraitFixedApp:Z

    if-eqz p0, :cond_c

    .line 213
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isIgnoreOrientationRequest(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 217
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 218
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 221
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_11

    return v0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public isTaskOrientationMismatched(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6

    .line 234
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 237
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_40

    .line 238
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_20

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->providesOrientation()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_40

    .line 247
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 249
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    goto :goto_5b

    .line 251
    :cond_2b
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(Z)I

    move-result p0

    if-nez p0, :cond_5b

    .line 253
    iget-boolean v1, p1, Lcom/android/server/wm/WindowContainer;->mInSetOrientation:Z

    if-nez v1, :cond_3b

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 254
    :cond_3b
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    goto :goto_5b

    .line 241
    :cond_40
    :goto_40
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 242
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_51

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_5a

    :cond_51
    if-eqz p0, :cond_5a

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_5b

    :cond_5a
    :goto_5a
    move p0, v0

    .line 256
    :cond_5b
    :goto_5b
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iput p0, p1, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    if-eqz p0, :cond_64

    if-eq p0, v0, :cond_64

    const/4 v2, 0x1

    :cond_64
    return v2
.end method

.method public logInRotationForOrientation(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 393
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mLastOrientationControlSource:Lcom/android/server/wm/WindowContainer;

    .line 394
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz p0, :cond_2f

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rotationForOrientation, Orientation has been adjusted"

    .line 398
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v0, :cond_25

    const-string p0, ", OriginalOrientation="

    .line 400
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 401
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b8

    :cond_25
    const-string v0, ", OrientationControlSource="

    .line 403
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_b8

    :cond_2f
    if-eqz v0, :cond_b7

    .line 406
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_b6

    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->isEnabled(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_b6

    .line 410
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rotationForOrientation, Orientation is not adjusted"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-eqz v1, :cond_8c

    const-string v1, ", mOrientation="

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", containsClosing="

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", containsOpening="

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isVisibleRequested="

    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_b4

    :cond_8c
    const-string p1, ", inMultiWindowMode="

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", inSizeCompatMode="

    .line 427
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 428
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz p1, :cond_b4

    const-string p1, ", mCanRotationCompatMode="

    .line 429
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_b4
    :goto_b4
    move-object p1, v0

    goto :goto_b8

    :cond_b6
    :goto_b6
    return-void

    :cond_b7
    const/4 p1, 0x0

    :goto_b8
    if-eqz p1, :cond_c3

    .line 435
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OrientationController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    return-void
.end method

.method public onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 278
    invoke-static {p3}, Lcom/android/server/wm/OrientationController;->isEnabled(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 281
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "mOrientationControlPolicy="

    .line 282
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    invoke-static {p3}, Lcom/android/server/wm/OrientationController;->policyToString(Lcom/android/server/wm/Task;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public onUpdateValueToTask(Lcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .registers 9

    .line 262
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    .line 263
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_e

    .line 265
    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/OrientationController;->getPolicy(ILjava/lang/String;)I

    move-result p0

    goto :goto_f

    :cond_e
    move p0, v2

    :goto_f
    const/4 p2, 0x7

    const/4 v3, 0x1

    if-ne p0, p2, :cond_15

    move p2, v3

    goto :goto_16

    :cond_15
    move p2, v2

    .line 266
    :goto_16
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    const/16 v4, 0x1f

    if-ne p0, v4, :cond_1d

    move v2, v3

    .line 267
    :cond_1d
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    if-eqz p3, :cond_2d

    if-ne p2, v0, :cond_25

    if-eq v2, v1, :cond_2d

    .line 270
    :cond_25
    new-instance p0, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/wm/OrientationController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_2d
    return-void
.end method

.method public setPolicy(ILjava/lang/String;I)V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/OrientationController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/OrientationController;->getPolicyFromLegacyFlag(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRotationCompatPolicy([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 364
    iget v1, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    const/4 v2, 0x0

    .line 365
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_24

    const/4 v2, 0x1

    if-eq p1, v2, :cond_24

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1e

    goto :goto_24

    .line 369
    :cond_1e
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    :cond_24
    :goto_24
    if-ne v1, p1, :cond_43

    .line 372
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already set"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 375
    :cond_43
    :try_start_43
    iput p1, p0, Lcom/android/server/wm/OrientationController;->mRotationCompatPolicy:I

    .line 376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RotationCompatPolicy is changed "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {v1}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {p1}, Lcom/android/server/wm/OrientationController;->rotationCompatPolicyToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_43 .. :try_end_6a} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6e
    move-exception p0

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldCreateCompatDisplayInsets(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 568
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object p0

    if-eqz p0, :cond_e

    goto :goto_1c

    .line 571
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_15

    return v0

    .line 577
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    :goto_1c
    return v0
.end method
