.class public Lcom/android/server/wm/DisplayCutoutController;
.super Lcom/android/server/wm/PackagesChangeAsTask;
.source "DisplayCutoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayCutoutController$CutoutPolicy;
    }
.end annotation


# static fields
.field public static final REMOVE_CUTOUT_FLAGS:I = 0x200000

.field public static final REMOVE_CUTOUT_FOR_DISPATCH_FLAGS:I = 0x400000


# instance fields
.field public mCutoutInset:Landroid/graphics/Rect;

.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

.field public mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

.field public mRemoveCutoutOfConfiguration:Z

.field public mTmpRect:Landroid/graphics/Rect;

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
.method public static synthetic $r8$lambda$WizgoiugIwrPCiGbyPA1QkPHymM(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayCutoutController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 6

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChangeAsTask;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 68
    new-instance p1, Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 70
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    const/16 v2, 0x80

    const-string v3, "DisplayCutoutPackageMap"

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    new-array p1, p1, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method

.method public static synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 69
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/DisplayCutoutController;->policyToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static policyToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "HideCameraCutout"

    return-object p0

    :cond_10
    const-string p0, "OverlapWithTheCameraCutout"

    return-object p0

    :cond_13
    const-string p0, "AppDefault"

    return-object p0
.end method


# virtual methods
.method public adjustAppBoundsIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 8

    .line 160
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    if-nez v0, :cond_a

    goto/16 :goto_b1

    .line 163
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 164
    iget v0, v0, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    goto/16 :goto_b1

    .line 167
    :cond_17
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_b1

    .line 172
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 173
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 174
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    return-void

    .line 178
    :cond_3a
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 179
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_5c

    .line 181
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_56

    .line 182
    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_5c

    .line 184
    :cond_56
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 187
    :cond_5c
    :goto_5c
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_71

    .line 188
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_6b

    .line 189
    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    goto :goto_71

    .line 191
    :cond_6b
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 194
    :cond_71
    :goto_71
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_89

    .line 195
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_83

    .line 196
    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_89

    .line 198
    :cond_83
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 201
    :cond_89
    :goto_89
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_a1

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_9b

    .line 203
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_a1

    .line 205
    :cond_9b
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 208
    :cond_a1
    :goto_a1
    iget-object p2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_aa

    return-void

    .line 211
    :cond_aa
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public adjustCutoutMode(Lcom/android/server/wm/WindowState;I)I
    .registers 5

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayCutoutController;->adjustCutoutModeByUser(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/high16 v0, 0x200000

    if-eqz p0, :cond_b

    or-int p0, p2, v0

    return p0

    .line 218
    :cond_b
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz p0, :cond_29

    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 220
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    if-eqz p0, :cond_29

    .line 221
    iget p0, p1, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    if-eqz p0, :cond_20

    const/4 v1, 0x1

    if-ne p0, v1, :cond_29

    .line 224
    :cond_20
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 p0, 0x400000

    or-int/2addr p0, p2

    return p0

    .line 230
    :cond_29
    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz p0, :cond_40

    .line 232
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_40

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_40

    or-int p0, p2, v0

    return p0

    :cond_40
    return p2
.end method

.method public final adjustCutoutModeByUser(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 243
    :cond_8
    iget v1, p0, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-nez p0, :cond_19

    .line 246
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x3

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return v2

    :cond_19
    const/4 p0, 0x2

    if-ne v1, p0, :cond_21

    .line 249
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return v2

    :cond_21
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 273
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    if-nez v0, :cond_18

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRemoveCutoutOfConfiguration=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCutoutInset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mNonDecorInsetsWithoutCutout="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 10

    .line 282
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "-setRemoveCutoutOfConfiguration"

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, " [packageName] [policy]"

    const/4 v4, 0x1

    if-eqz v0, :cond_53

    .line 287
    :try_start_12
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    iput-boolean p2, v0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2, v2, v1}, Lcom/android/server/wm/DisplayCutoutController;->printSuccessful(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3b} :catch_3c

    goto :goto_52

    :catch_3c
    move-exception p2

    .line 292
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/DisplayCutoutController;->printFail(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_52
    return v4

    :cond_53
    const-string v0, "-setCutoutPolicy"

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 299
    :try_start_5b
    aget-object v0, p2, v1

    .line 300
    aget-object v2, p2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    iget-object v5, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setCutoutPolicy(ILjava/lang/String;I)V

    .line 302
    iget-object v2, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    aget-object p2, p2, v1

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getCutoutPolicy(ILjava/lang/String;)I

    move-result p2

    .line 303
    invoke-virtual {p0, p3, p1, v0, p2}, Lcom/android/server/wm/DisplayCutoutController;->printSuccessful(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_77} :catch_78

    goto :goto_8e

    :catch_78
    move-exception p2

    .line 305
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/DisplayCutoutController;->printFail(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8e
    return v4

    :cond_8f
    const-string v0, "-getCutoutPolicy"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 312
    :try_start_97
    aget-object p2, p2, v1

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getCutoutPolicy(ILjava/lang/String;)I

    move-result v0

    .line 314
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/wm/DisplayCutoutController;->printSuccessful(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a2} :catch_a3

    goto :goto_bb

    :catch_a3
    move-exception p2

    .line 316
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/DisplayCutoutController;->printFail(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [packageName]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_bb
    return v4

    :cond_bc
    const-string p2, "-resetCutoutPolicy"

    .line 321
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d4

    .line 323
    :try_start_c4
    iget-object p2, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v0, 0x80

    invoke-virtual {p2, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resetUserPackageSettings(II)V

    .line 325
    invoke-virtual {p0, p3, p1, v2, v1}, Lcom/android/server/wm/DisplayCutoutController;->printSuccessful(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ce} :catch_cf

    goto :goto_d3

    :catch_cf
    move-exception p2

    .line 327
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/DisplayCutoutController;->printFail(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_d3
    return v4

    :cond_d4
    return v1
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

    .line 156
    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getPolicy(ILjava/lang/String;)I
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 133
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceExt;->supportsDisplayCutout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    if-eqz v0, :cond_18

    .line 137
    invoke-virtual {v0}, Lcom/android/server/wm/CustomAspectRatioLegacyController;->migrateIfNeeded()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    .line 141
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_27

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 146
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDefaultFullScreenPackagesFromScpm:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 147
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayCutoutController;->setPolicy(ILjava/lang/String;IZ)V

    return v0

    :cond_38
    return v1
.end method

.method public onConfigurationChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .registers 6

    .line 90
    iget-object p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    .line 92
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_60

    if-eqz v0, :cond_60

    .line 93
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez p2, :cond_14

    goto :goto_60

    .line 98
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    iget p2, p2, Landroid/view/DisplayInfo;->rotation:I

    .line 100
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 102
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 106
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(I)I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_44

    .line 108
    iget-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_5f

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_5f

    :cond_44
    const/4 p2, 0x2

    if-ne p1, p2, :cond_52

    .line 112
    iget-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-lez p1, :cond_5f

    .line 113
    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iput v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_5f

    :cond_52
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5f

    .line 116
    iget-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-lez p1, :cond_5f

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_5f
    :goto_5f
    return-void

    .line 94
    :cond_60
    :goto_60
    iput-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public onDumpInTask(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 263
    iget p0, p3, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    if-nez p0, :cond_5

    return-void

    .line 266
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "mCutoutPolicy="

    .line 267
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget p0, p3, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    invoke-static {p0}, Lcom/android/server/wm/DisplayCutoutController;->policyToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateValueToTask(Lcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_9

    .line 258
    iget p3, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/DisplayCutoutController;->getPolicy(ILjava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    iput p0, p1, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    return-void
.end method

.method public final printFail(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final printSuccessful(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successful: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_32

    .line 337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PackageName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Policy="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public setPolicy(ILjava/lang/String;IZ)V
    .registers 7

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz p4, :cond_1f

    if-eqz v0, :cond_17

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, p3, :cond_17

    goto :goto_1f

    .line 128
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo p3, "setCutoutPolicy"

    invoke-static {p0, p2, p1, p3}, Lcom/android/server/wm/PackagesChange;->removeTaskWithoutRemoveFromRecents(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method
