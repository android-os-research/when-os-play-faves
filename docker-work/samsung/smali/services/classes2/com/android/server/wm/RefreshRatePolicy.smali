.class public Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;
    }
.end annotation


# static fields
.field public static final LAYER_PRIORITY_FOCUSED_WITHOUT_MODE:I = 0x1

.field public static final LAYER_PRIORITY_FOCUSED_WITH_MODE:I = 0x0

.field public static final LAYER_PRIORITY_NOT_FOCUSED_WITH_MODE:I = 0x2

.field public static final LAYER_PRIORITY_UNSET:I = -0x1


# instance fields
.field public final mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

.field public mLowRefreshRateMode:Landroid/view/Display$Mode;

.field public mMaxSupportedRefreshRate:F

.field public mMinSupportedRefreshRate:F

.field public final mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

.field public mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

.field public mReportedRestrictHighRefreshRate:Z

.field public mRestrictHighRefreshRate:Z

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMaxSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .registers 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;-><init>(Lcom/android/server/wm/RefreshRatePolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-direct {v0}, Lcom/android/server/wm/RefreshRatePolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    .line 378
    iput-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Z

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 120
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 121
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 124
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p1, :cond_32

    .line 125
    new-instance p1, Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-direct {p1}, Lcom/android/server/wm/RefreshRatePolicyLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    :cond_32
    return-void
.end method


# virtual methods
.method public addFixedRefreshRatePackage(Ljava/lang/String;I)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public addRefreshRateRangeForPackage(Ljava/lang/String;FF)V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->add(Ljava/lang/String;FF)V

    .line 154
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public calculatePriority(Lcom/android/server/wm/WindowState;)I
    .registers 3

    .line 237
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result p0

    if-nez v0, :cond_e

    if-lez p0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    if-eqz v0, :cond_14

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    if-eqz v0, :cond_1a

    if-lez p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 400
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RefreshRatePolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLowRefreshRateMode="

    .line 403
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mReportedRestrictHighRefreshRate="

    .line 405
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 409
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFixedRefreshRatePackages="

    .line 410
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 413
    :cond_4d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v0, :cond_56

    .line 414
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RefreshRatePolicyLogger;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_56
    return-void
.end method

.method public final findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;
    .registers 7

    .line 135
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 137
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 138
    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 139
    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 140
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_39

    .line 141
    iget v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    aget v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 142
    iget v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    aget v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 144
    aget v3, v1, v2

    const/high16 v4, 0x42700000    # 60.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_36

    cmpg-float v4, v3, v0

    if-gez v4, :cond_36

    move v0, v3

    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 148
    :cond_39
    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredMaxRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 6

    const/4 v0, 0x3

    .line 323
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v1, :cond_1d

    .line 326
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 327
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    return v3

    .line 333
    :cond_1e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v0, :cond_2b

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    move-result v0

    cmpl-float v1, v0, v3

    if-lez v1, :cond_2b

    return v0

    .line 341
    :cond_2b
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v1, v0, v3

    if-lez v1, :cond_34

    return v0

    .line 345
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 349
    iget p0, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    return p0

    .line 353
    :cond_43
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 354
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6e

    .line 356
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSwitchable()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 357
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0

    .line 360
    :cond_6e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 361
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 362
    iput-boolean v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    return v3

    .line 366
    :cond_83
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    if-eqz v1, :cond_a2

    .line 367
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 368
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 369
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0

    :cond_a2
    return v3
.end method

.method public getPreferredMinRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 5

    const/4 v0, 0x3

    .line 290
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    .line 295
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1e

    return v0

    .line 304
    :cond_1e
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_27

    return v0

    .line 308
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 314
    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    return p0

    :cond_36
    return v1
.end method

.method public getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .registers 5

    const/4 v0, 0x3

    .line 198
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    .line 203
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 204
    :goto_13
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 206
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 209
    :cond_2c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v2, :cond_37

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v2, :cond_37

    return v2

    .line 213
    :cond_37
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 214
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    return v1

    .line 218
    :cond_4a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    if-eqz v1, :cond_69

    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 220
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    .line 225
    :cond_69
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    return p0
.end method

.method public getPreferredRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 9

    const/4 v0, 0x3

    .line 255
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    .line 261
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-lez v0, :cond_2b

    .line 263
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 265
    iget-object v2, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_2b

    aget-object v5, v2, v4

    .line 266
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    if-ne v0, v6, :cond_28

    .line 267
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 273
    :cond_2b
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_34

    return v0

    .line 279
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist;->isDenylisted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 281
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0

    :cond_47
    return v1
.end method

.method public final getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F
    .registers 7

    .line 174
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    .line 179
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 180
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    if-nez p1, :cond_21

    return v2

    .line 185
    :cond_21
    iget-object p1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_37

    aget-object v3, p1, v1

    .line 186
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    if-ne p0, v4, :cond_34

    .line 187
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_37
    return v2
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .registers 2

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    return-void
.end method

.method public removeFixedRefreshRatePackage(Ljava/lang/String;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public removeRefreshRateRangeForPackage(Ljava/lang/String;)V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->remove(Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public resetRestrictHighRefreshRate()V
    .registers 2

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    return-void
.end method

.method public updateLog(Lcom/android/server/wm/WindowState;IFI)V
    .registers 5

    .line 421
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RefreshRatePolicyLogger;->update(Lcom/android/server/wm/WindowState;IFI)V

    return-void
.end method

.method public updateRestrictHighRefreshRate()V
    .registers 3

    .line 385
    iget-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    iget-boolean v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Z

    if-eq v0, v1, :cond_b

    .line 386
    iput-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Z

    .line 387
    invoke-static {v0}, Landroid/view/SurfaceControl;->restrictHighRefreshRate(Z)V

    :cond_b
    return-void
.end method
