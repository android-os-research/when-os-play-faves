.class public Lcom/android/server/wm/FixedAspectRatioController;
.super Lcom/android/server/wm/PackagesChange;
.source "FixedAspectRatioController.java"

# interfaces
.implements Lcom/android/server/wm/AspectRatioController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FixedAspectRatioController$SystemChange;
    }
.end annotation


# instance fields
.field public final mSystemChange:Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 50
    new-instance p1, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;-><init>(Lcom/android/server/wm/FixedAspectRatioController$SystemChange-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/FixedAspectRatioController;->mSystemChange:Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

    .line 52
    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->CONVENTIONAL_MODE_DIRECTORY:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "FixedAspectRatioPackageMap"

    invoke-direct {p1, v1, v0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 3

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public computeConfigResourceOverridesIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 5

    .line 76
    iget p0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz p0, :cond_a

    .line 78
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 79
    :cond_a
    iget p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_15

    .line 81
    iget p0, p4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    :cond_15
    const p1, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, p1

    .line 85
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_2a
    return-void
.end method

.method public getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getFixedAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_d

    return v1

    .line 66
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 67
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_20

    goto :goto_27

    .line 70
    :cond_20
    iget v0, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/FixedAspectRatioController;->getMergedChange(ILjava/lang/String;)F

    move-result p0

    return p0

    :cond_27
    :goto_27
    return v1
.end method

.method public getMergedChange(ILjava/lang/String;)F
    .registers 3

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getUserChangeWithLegacy(ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 122
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getSystemChange(Ljava/lang/String;)F

    move-result p0

    :goto_f
    return p0
.end method

.method public getSystemChange(Ljava/lang/String;)F
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mSystemChange:Lcom/android/server/wm/FixedAspectRatioController$SystemChange;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;->getAspectRatio(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getUserChange(ILjava/lang/String;)F
    .registers 3

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FixedAspectRatioController;->getUserChangeWithLegacy(ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 101
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_d

    :cond_b
    const/high16 p0, -0x40800000    # -1.0f

    :goto_d
    return p0
.end method

.method public final getUserChangeWithLegacy(ILjava/lang/String;)Ljava/lang/Float;
    .registers 5

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/wm/PackagesChange;->isExcludedPackage(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    .line 107
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-eqz v0, :cond_d

    return-object v1

    .line 109
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_21

    .line 110
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_21

    return-object v1

    :cond_21
    return-object p0
.end method

.method public isFixedAspectRatioModeEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public requestToSave(I)V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/FixedAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->requestToSave(I)V

    return-void
.end method
