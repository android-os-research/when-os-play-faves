.class public Lcom/android/server/wm/CustomAspectRatioController;
.super Lcom/android/server/wm/PackagesChange;
.source "CustomAspectRatioController.java"

# interfaces
.implements Lcom/android/server/wm/AspectRatioController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CustomAspectRatioController$AspectRatioPolicy;
    }
.end annotation


# static fields
.field public static final RESIZEABLE_FLAGS:I = 0x1400


# instance fields
.field public mDefaultDisplayAspectRatio:F

.field public mDisplayMaxAspectRatio:F

.field public mDisplayMaxAspectRatioWithCutout:F

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

.field public mPackageWithAspectRatioApplied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSupportsMaxAspectRatio:Z

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
.method public static synthetic $r8$lambda$157OqcIzn_QpaiVLErRLRR6ZSh0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/CustomAspectRatioController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 6

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 88
    new-instance p1, Lcom/android/server/wm/CustomAspectRatioController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/CustomAspectRatioController$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 90
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->CONVENTIONAL_MODE_DIRECTORY:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "CustomAspectRatioPackageMap"

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    iput-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method

.method public static isFullScreenMode(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 89
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/CustomAspectRatioController;->policyToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static policyToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 268
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "UnchangeableAspectRatio"

    return-object p0

    :cond_13
    const-string p0, "UnchangeableFullScreen"

    return-object p0

    :cond_16
    const-string p0, "FullScreen"

    return-object p0

    :cond_19
    const-string p0, "Default"

    return-object p0
.end method


# virtual methods
.method public adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 4

    .line 235
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->canMaxAspectRatioApplied()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 236
    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->adjustBoundsAsMaxAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    goto :goto_f

    .line 238
    :cond_c
    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/AspectRatioController;->adjustBoundsAsMinAspectRatio(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    :goto_f
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayMaxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayMaxAspectRatioWithCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatioWithCutout:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultDisplayAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDefaultDisplayAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mSupportsMaxAspectRatio:Z

    if-eqz v0, :cond_63

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSupportsMaxAspectRatio=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    :cond_63
    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/List;

    if-eqz v0, :cond_ab

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPackageWithAspectRatioApplied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_87
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_87

    :cond_ab
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

    .line 230
    iget-object p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getMaxAspectRatioPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .registers 11

    .line 125
    iget-boolean v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mSupportsMaxAspectRatio:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    if-eqz v0, :cond_10

    .line 129
    invoke-virtual {v0}, Lcom/android/server/wm/CustomAspectRatioLegacyController;->migrateIfNeeded()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mLegacyController:Lcom/android/server/wm/CustomAspectRatioLegacyController;

    .line 133
    :cond_10
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 134
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_27

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 139
    :cond_27
    iget-object v2, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDefaultFullScreenPackagesFromScpm:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 140
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 141
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/CustomAspectRatioController;->setMaxAspectRatioPolicy(Ljava/lang/String;IZIZ)V

    const/4 p0, 0x1

    return p0

    :cond_3e
    if-eqz p2, :cond_57

    .line 146
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result v2

    if-nez v2, :cond_56

    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 147
    invoke-virtual {p2, v2}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_57

    :cond_56
    return v1

    .line 150
    :cond_57
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/CustomAspectRatioController;->isUnchangeableFullScreenMode(ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_5e

    const/4 v1, 0x2

    :cond_5e
    return v1
.end method

.method public isCustomLetterboxEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isUnchangeableFullScreenMode(ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)Z
    .registers 7

    .line 156
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 158
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v2

    :cond_e
    if-eqz p3, :cond_1b

    .line 165
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_4a

    return v2

    .line 169
    :cond_1b
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getLauncherApps()Landroid/content/pm/LauncherApps;

    move-result-object p3

    if-eqz p3, :cond_4a

    .line 171
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 171
    invoke-virtual {p3, v0, p1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/LauncherActivityInfo;

    .line 173
    invoke-virtual {p3}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p3

    if-eqz p3, :cond_2f

    return v2

    .line 180
    :cond_4a
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 p1, p1, 0x1400

    const/4 p3, 0x1

    if-eqz p1, :cond_52

    return p3

    .line 183
    :cond_52
    iget p1, p2, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p1

    if-nez p1, :cond_72

    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_6b

    const-string v0, "android.max_aspect"

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CustomAspectRatioController;->isUsableAspectRatio(F)Z

    move-result p0

    if-eqz p0, :cond_6b

    goto :goto_72

    .line 187
    :cond_6b
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_72

    move v2, p3

    :cond_72
    :goto_72
    return v2
.end method

.method public final isUsableAspectRatio(F)Z
    .registers 3

    .line 191
    invoke-static {p1}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result v0

    if-eqz v0, :cond_e

    iget p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onAspectRatioApplied(Lcom/android/server/wm/ActivityRecord;FF)V
    .registers 5

    .line 202
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    invoke-interface {p0, v0, p2, p3}, Lcom/android/server/wm/AspectRatioController;->setControllerAndAspectRatio(Lcom/android/server/wm/BoundsCompatRecord;FF)V

    .line 204
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 205
    iget-object p2, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/List;

    if-nez p2, :cond_14

    .line 206
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/List;

    .line 208
    :cond_14
    iget-object p2, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mPackageWithAspectRatioApplied:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    return-void
.end method

.method public onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 112
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayAspectRatio:F

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDefaultDisplayAspectRatio:F

    .line 114
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerServiceExt;->getDisplayMaxAspectRatioLocked()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    .line 116
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerServiceExt;->getDisplayMaxAspectRatioWithCutoutLocked()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatioWithCutout:F

    .line 118
    iget-object p1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerServiceExt;->supportsMaxAspectRatio()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mSupportsMaxAspectRatio:Z

    .line 120
    iget p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    iget v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDefaultDisplayAspectRatio:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/CustomAspectRatioController;->mDisplayMaxAspectRatio:F

    return-void
.end method

.method public setMaxAspectRatioPolicy(Ljava/lang/String;IZIZ)V
    .registers 8

    .line 216
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/CustomAspectRatioController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz p5, :cond_1c

    if-eqz v0, :cond_1a

    .line 219
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p5

    if-eq p5, p3, :cond_1c

    :cond_1a
    const/4 p5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p5, 0x0

    :goto_1d
    if-eqz p5, :cond_27

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo v0, "setMaxAspectRatioPolicy"

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wm/PackagesChange;->removeTaskWithoutRemoveFromRecents(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setMaxAspectRatioPolicy: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_37

    const-string p2, "enabled"

    goto :goto_39

    :cond_37
    const-string p2, "disabled"

    :goto_39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", package="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", restartTaskId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", updated="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageSettingsManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
