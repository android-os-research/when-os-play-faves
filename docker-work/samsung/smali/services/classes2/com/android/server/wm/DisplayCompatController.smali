.class public Lcom/android/server/wm/DisplayCompatController;
.super Lcom/android/server/wm/PackagesChangeAsTask;
.source "DisplayCompatController.java"

# interfaces
.implements Lcom/android/server/wm/AspectRatioController;


# instance fields
.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemChange:Lcom/samsung/android/server/util/DisplayCompatPolicies;

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
.method public static synthetic $r8$lambda$C6VHIl4l9rbukwFcPFy0MLd8MAA(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayCompatController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mubgKJ3tn8sUFZl64vhOKqrO3xs(Ljava/util/function/Consumer;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayCompatController;->lambda$clearDisplayCompatMode$3(Ljava/util/function/Consumer;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sukCZiT0r-H2aMuxezCtiHRYLkQ(Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayCompatController;->lambda$clearSizeCompatMode$1(Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uM2mXGIQ8meWkxqcRVXlSoFQkYU(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayCompatController;->lambda$clearDisplayCompatInfo$2(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChangeAsTask;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 63
    invoke-static {}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getDisplayCompatPolicies()Lcom/samsung/android/server/util/DisplayCompatPolicies;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayCompatController;->mSystemChange:Lcom/samsung/android/server/util/DisplayCompatPolicies;

    .line 65
    new-instance p1, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda3;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayCompatController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 67
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayCompatController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    return-void
.end method

.method public static synthetic lambda$clearDisplayCompatInfo$2(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearDisplayCompatInfo()V

    return-void
.end method

.method public static synthetic lambda$clearDisplayCompatMode$3(Ljava/util/function/Consumer;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 143
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$clearSizeCompatMode$1(Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 4

    if-ne p3, p0, :cond_3

    return-void

    .line 131
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode(ZZ)V

    return-void
.end method

.method public static synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->policyToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 9

    .line 181
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 182
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 183
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 184
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 185
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 186
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    move v1, v4

    .line 187
    :goto_25
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatScale()F

    .line 188
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 190
    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->getBoundsCompatAlignment()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object p0

    if-eqz v1, :cond_58

    .line 197
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    if-eqz v1, :cond_3d

    .line 198
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatAlignment;->isCenterVertical()Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v0, p2

    .line 202
    :goto_3e
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I

    move-result p2

    if-eqz p2, :cond_91

    .line 205
    invoke-virtual {v2, v4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 206
    invoke-virtual {v3, v4, p2}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v5, :cond_91

    .line 208
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/wm/BoundsCompatAlignment;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)I

    move-result p0

    .line 210
    invoke-virtual {v5, v4, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_91

    .line 217
    :cond_58
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    if-eqz p1, :cond_70

    .line 219
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 220
    iget v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz v5, :cond_70

    .line 222
    iget v0, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 226
    :cond_70
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/BoundsCompatAlignment;->getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    .line 227
    iget v0, v3, Landroid/graphics/Rect;->left:I

    if-eq v0, p1, :cond_82

    .line 228
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 229
    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_82
    if-eqz v5, :cond_91

    .line 232
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/BoundsCompatAlignment;->getHorizontalOffsetTo(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    .line 234
    iget p1, v5, Landroid/graphics/Rect;->left:I

    if-eq p1, p0, :cond_91

    .line 235
    iget p1, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_91
    :goto_91
    return-void
.end method

.method public clearDisplayCompatInfo(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 136
    new-instance v0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayCompatController;->clearDisplayCompatMode(Lcom/android/server/wm/Task;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final clearDisplayCompatMode(Lcom/android/server/wm/Task;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 140
    iput-object p0, p1, Lcom/android/server/wm/Task;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    const/4 p0, 0x0

    .line 141
    iput p0, p1, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    .line 142
    new-instance p0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public clearSizeCompatMode(Lcom/android/server/wm/Task;ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayCompatController;->clearSizeCompatMode(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public clearSizeCompatMode(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 129
    new-instance v0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p4, p2, p3}, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;ZZ)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayCompatController;->clearDisplayCompatMode(Lcom/android/server/wm/Task;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dumpBounds(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/app/WindowConfiguration;)V
    .registers 8

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " Bounds="

    .line 243
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_b3

    const-string p2, " AppBounds="

    .line 249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    :cond_b3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object p0, p0, Lcom/android/server/wm/DisplayCompatController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getMergedChange(ILjava/lang/String;)I
    .registers 3

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayCompatController;->getUserChange(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_7

    return p1

    .line 302
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayCompatController;->getSystemChange(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPolicy(ILjava/lang/String;)I
    .registers 5

    .line 258
    invoke-virtual {p0, p2}, Lcom/android/server/wm/PackagesChange;->supportsSizeChanges(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_8

    return v1

    .line 261
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayCompatController;->getMergedChange(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_f

    return p1

    .line 265
    :cond_f
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const-string v0, "com.samsung.android.foldable.fit_to_display"

    .line 266
    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v1

    .line 269
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 270
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isAllowListApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x6

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public getSizeChangesSupported(Lcom/android/server/wm/Task;)I
    .registers 4

    .line 97
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 101
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_42

    .line 104
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    if-nez v0, :cond_22

    .line 105
    iget p0, p1, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    return p0

    .line 109
    :cond_22
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_30

    .line 110
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayCompatController;->getPolicy(ILjava/lang/String;)I

    move-result v1

    .line 111
    :cond_30
    iput v1, p1, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    .line 112
    invoke-static {v1}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getSizeChangesSupported(I)I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_41

    .line 113
    iget p1, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_41

    if-eq p1, v0, :cond_41

    move p0, v0

    :cond_41
    return p0

    :cond_42
    :goto_42
    return v1
.end method

.method public getSystemChange(Ljava/lang/String;)I
    .registers 2

    .line 289
    iget-object p0, p0, Lcom/android/server/wm/DisplayCompatController;->mSystemChange:Lcom/samsung/android/server/util/DisplayCompatPolicies;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->getPolicy(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_e

    const/4 p1, 0x4

    if-ne p0, p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :cond_e
    :goto_e
    return p0
.end method

.method public getUserChange(ILjava/lang/String;)I
    .registers 4

    .line 277
    iget-object p0, p0, Lcom/android/server/wm/DisplayCompatController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return p1

    .line 281
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1c

    .line 282
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return p1

    .line 283
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public logDisplayCompatMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .registers 6

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SizeChangesSupported="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Policy="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ResizeMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", RealActivity="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Task="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", r="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", r.inSizeCompatMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Caller="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_6a

    .line 175
    iput-object p0, p2, Lcom/android/server/wm/Task;->mDisplayCompatReason:Ljava/lang/String;

    :cond_6a
    return-void
.end method

.method public onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 311
    iget p0, p3, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    if-eqz p0, :cond_5b

    .line 312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "DisplayCompatModeInfo:"

    .line 313
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " SizeChangesSupported="

    .line 314
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget p0, p3, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->sizeChangesSupportModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "Policy="

    .line 318
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_41

    .line 320
    iget p0, p3, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    invoke-static {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->policyToString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    .line 321
    :cond_41
    iget p0, p3, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 319
    :goto_47
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 322
    iget-object p0, p3, Lcom/android/server/wm/Task;->mDisplayCompatReason:Ljava/lang/String;

    if-eqz p0, :cond_58

    const-string p0, ", CompatDisplayInsetsReason: "

    .line 323
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget-object p0, p3, Lcom/android/server/wm/Task;->mDisplayCompatReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    :cond_58
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 328
    :cond_5b
    iget-object p0, p3, Lcom/android/server/wm/Task;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz p0, :cond_62

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_62
    return-void
.end method

.method public restrictToInsetsIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 150
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p0, :cond_5

    return-void

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result p1

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    .line 157
    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-lez p1, :cond_21

    .line 158
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 160
    :cond_21
    iget p1, p0, Landroid/graphics/Rect;->left:I

    if-lez p1, :cond_29

    .line 161
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 163
    :cond_29
    iget p0, p0, Landroid/graphics/Rect;->right:I

    if-lez p0, :cond_31

    .line 164
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iput p0, p2, Landroid/graphics/Rect;->right:I

    :cond_31
    return-void
.end method

.method public updateDisplayCompatPolicyIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayCompatController;->getSizeChangesSupported(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 76
    iget v1, p1, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    if-eq v1, v0, :cond_63

    .line 77
    iput v0, p1, Lcom/android/server/wm/Task;->mSizeChangesSupported:I

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDisplayCompatPolicyIfNeeded, SizeChangesSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inMultiWindowMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFolded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 82
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", RealActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    .line 78
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_63
    iget-object v1, p1, Lcom/android/server/wm/Task;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v1, :cond_7a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7a

    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayCompatController;->clearDisplayCompatInfo(Lcom/android/server/wm/Task;)V

    return-void

    .line 91
    :cond_74
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/server/wm/DisplayCompatController;->clearSizeCompatMode(Lcom/android/server/wm/Task;ZZ)V

    .line 92
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->updateDeferCreateCompatDisplayInsets(Lcom/android/server/wm/Task;)V

    :cond_7a
    return-void
.end method
