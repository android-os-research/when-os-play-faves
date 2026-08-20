.class public Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;
.super Ljava/lang/Object;
.source "PackageStateImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/PackageStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStateImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl$Booleans;
    }
.end annotation


# instance fields
.field public mBooleans:I

.field public final mCeDataInode:J

.field public final mDisabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDistractionFlags:I

.field public final mEnabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledState:I

.field public final mFirstInstallTime:J

.field public final mHarmfulAppWarning:Ljava/lang/String;

.field public final mInstallReason:I

.field public final mLastDisableAppCaller:Ljava/lang/String;

.field public final mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

.field public final mSharedLibraryOverlayPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation
.end field

.field public final mSplashScreenTheme:Ljava/lang/String;

.field public final mUninstallReason:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pkg/PackageUserState;)V
    .registers 4

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mCeDataInode:J

    .line 357
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDisabledComponents:Landroid/util/ArraySet;

    .line 358
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDistractionFlags:I

    .line 359
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledComponents:Landroid/util/ArraySet;

    .line 360
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledState:I

    .line 361
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 362
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mInstallReason:I

    .line 363
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 364
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 365
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    .line 366
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mUninstallReason:I

    .line 367
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 368
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 369
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 370
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 371
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 372
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 373
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 374
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->setBoolean(IZ)V

    .line 375
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mFirstInstallTime:J

    return-void
.end method

.method public static copy(Lcom/android/server/pm/pkg/PackageUserState;)Lcom/android/server/pm/pkg/PackageUserState;
    .registers 2

    .line 292
    new-instance v0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;-><init>(Lcom/android/server/pm/pkg/PackageUserState;)V

    return-object v0
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 428
    :cond_a
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 429
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 430
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    if-eqz p0, :cond_30

    .line 431
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/overlay/OverlayPaths;

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_20

    .line 435
    :cond_30
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public final getBoolean(I)Z
    .registers 2
    .param p1    # I
        .annotation build Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl$Booleans$Flags;
        .end annotation
    .end param

    .line 328
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public getBooleans()I
    .registers 1

    .line 455
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    return p0
.end method

.method public getCeDataInode()J
    .registers 3

    .line 460
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mCeDataInode:J

    return-wide v0
.end method

.method public getDisabledComponents()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDisabledComponents:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getDistractionFlags()I
    .registers 1

    .line 471
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDistractionFlags:I

    return p0
.end method

.method public getEnabledComponents()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledComponents:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getEnabledState()I
    .registers 1

    .line 481
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledState:I

    return p0
.end method

.method public getFirstInstallTime()J
    .registers 3

    .line 521
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mFirstInstallTime:J

    return-wide v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .registers 1

    .line 486
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallReason()I
    .registers 1

    .line 491
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mInstallReason:I

    return p0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 1

    .line 501
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    return-object p0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSharedLibraryOverlayPaths:Ljava/util/Map;

    return-object p0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .registers 1

    .line 516
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    return-object p0
.end method

.method public getUninstallReason()I
    .registers 1

    .line 511
    iget p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mUninstallReason:I

    return p0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .registers 2

    .line 420
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mDisabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 415
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mEnabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .registers 2

    const/4 v0, 0x1

    .line 380
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isInstalled()Z
    .registers 2

    const/4 v0, 0x2

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isInstantApp()Z
    .registers 2

    const/4 v0, 0x4

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isNotLaunched()Z
    .registers 2

    const/16 v0, 0x8

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isStopped()Z
    .registers 2

    const/16 v0, 0x10

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isSuspended()Z
    .registers 2

    const/16 v0, 0x20

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public isVirtualPreload()Z
    .registers 2

    const/16 v0, 0x40

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final setBoolean(IZ)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl$Booleans$Flags;
        .end annotation
    .end param

    if-eqz p2, :cond_8

    .line 321
    iget p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    goto :goto_e

    .line 323
    :cond_8
    iget p2, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    :goto_e
    return-void
.end method

.method public setBooleans(I)Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;
    .registers 2

    .line 526
    iput p1, p0, Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;->mBooleans:I

    return-object p0
.end method
