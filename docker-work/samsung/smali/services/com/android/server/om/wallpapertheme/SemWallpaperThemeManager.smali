.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;
.super Ljava/lang/Object;
.source "SemWallpaperThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;
    }
.end annotation


# static fields
.field public static sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# instance fields
.field public TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mCurrentMonetOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/om/FabricatedOverlay;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentThemeOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/om/FabricatedOverlay;",
            ">;"
        }
    .end annotation
.end field

.field public mExceptionHandler:Landroid/os/Handler;

.field public mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

.field public mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

.field public mTemplate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;",
            ">;"
        }
    .end annotation
.end field

.field public mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static synthetic $r8$lambda$IuiSqLQE5fL2nE6wG6WXAnVq-ak(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->lambda$saveWallpaperThemeState$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$L-B3CfzNy2_psXHEPJljhXuNpv8(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->lambda$saveWallpaperThemeColor$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tlfZF1gwTtOegnrTxPfukvHsnBc(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->lambda$syncWallpaperThemeStateForUser$2(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindBestOpacity(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;II)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->findBestOpacity(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetColorFromTheme(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getColorFromTheme(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetColorResIdFromTheme(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getColorResIdFromTheme(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_ThemeManager"

    .line 55
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-direct {v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplate:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    invoke-direct {v0}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    .line 84
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 85
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 86
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method

.method public static getInstance()Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;
    .registers 1

    .line 77
    sget-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-direct {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;-><init>()V

    sput-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 80
    :cond_b
    sget-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    return-object v0
.end method

.method private synthetic lambda$saveWallpaperThemeColor$1()V
    .registers 2

    .line 721
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    .line 722
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "saveWallpaperThemeColor done"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$saveWallpaperThemeState$0(I)V
    .registers 2

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    .line 692
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "saveWallpaperThemeState done"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$syncWallpaperThemeStateForUser$2(I)V
    .registers 2

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->syncWallpaperThemeStateForUser(I)V

    .line 748
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "syncWallpaperThemeStateForUser done"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearCurrentThemeOverlays()V
    .registers 2

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 680
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    return-void
.end method

.method public disableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .registers 12

    const-string v0, "android"

    const-wide/16 v1, 0x2000

    :try_start_4
    const-string v3, "SWT:disableMonetOverlay"

    .line 648
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 649
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_12
    if-ge v6, v4, :cond_2d

    aget v7, v3, v6

    .line 650
    new-instance v8, Landroid/content/om/OverlayIdentifier;

    const-string v9, "SemWT_MonetPalette"

    invoke-direct {v8, v0, v9}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v8, v5, v7}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 651
    new-instance v8, Landroid/content/om/OverlayIdentifier;

    const-string v9, "SemWT_G_MonetPalette"

    invoke-direct {v8, v0, v9}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v8, v5, v7}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 653
    :cond_2d
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string p1, "disable palette theme overlay"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_38

    .line 655
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_38
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 656
    throw p0
.end method

.method public disableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .registers 12

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:disableThemeOverlay"

    .line 628
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    if-nez v2, :cond_e

    .line 630
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateThemeOverlay()V

    .line 633
    :cond_e
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 634
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/FabricatedOverlay;

    .line 635
    array-length v6, v2

    move v7, v5

    :goto_29
    if-ge v7, v6, :cond_1a

    aget v8, v2, v7

    .line 636
    invoke-virtual {v4}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v9

    invoke-virtual {p1, v9, v5, v8}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 639
    :cond_37
    invoke-virtual {p0, v5}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    .line 640
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string p1, "disable color theme overlay"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_45

    .line 642
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_45
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 643
    throw p0
.end method

.method public enableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .registers 12

    const-string v0, "android"

    const-wide/16 v1, 0x2000

    :try_start_4
    const-string v3, "SWT:enableMonetOverlay"

    .line 611
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v3}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 613
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateMonetOverlay()V

    .line 616
    :cond_18
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_3c

    aget v6, v3, v5

    .line 617
    new-instance v7, Landroid/content/om/OverlayIdentifier;

    const-string v8, "SemWT_MonetPalette"

    invoke-direct {v7, v0, v8}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8, v6}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 618
    new-instance v7, Landroid/content/om/OverlayIdentifier;

    const-string v9, "SemWT_G_MonetPalette"

    invoke-direct {v7, v0, v9}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8, v6}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 620
    :cond_3c
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string p1, "enable palette theme overlay"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_47

    .line 622
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_47
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 623
    throw p0
.end method

.method public enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .registers 12

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:enableThemeOverlay"

    .line 593
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    if-nez v2, :cond_e

    .line 595
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateThemeOverlay()V

    .line 597
    :cond_e
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 598
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/FabricatedOverlay;

    .line 599
    array-length v5, v2

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_1a

    aget v7, v2, v6

    .line 600
    invoke-virtual {v4}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9, v7}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 603
    :cond_37
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string p1, "enable color theme overlay"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_42

    .line 605
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_42
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    throw p0
.end method

.method public final findBestOpacity(II)I
    .registers 13

    mul-int/2addr p1, p2

    const/16 p0, 0x64

    .line 372
    div-int/2addr p1, p0

    if-ne p1, p0, :cond_7

    return p0

    .line 376
    :cond_7
    rem-int/lit8 p2, p1, 0xa

    const/4 v0, 0x5

    if-le p2, v0, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    const/16 v1, 0xa

    .line 378
    div-int/2addr p1, v1

    const/16 v2, 0x50

    const/16 v3, 0x46

    const/16 v4, 0x3c

    const/16 v5, 0x32

    const/16 v6, 0x28

    const/16 v7, 0x1e

    const/16 v8, 0x14

    const/16 v9, 0x5a

    packed-switch p1, :pswitch_data_52

    return p0

    :pswitch_26
    return v9

    :pswitch_27
    if-eqz p2, :cond_2a

    move v2, v9

    :cond_2a
    return v2

    :pswitch_2b
    if-eqz p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    return v2

    :pswitch_30
    if-eqz p2, :cond_33

    goto :goto_34

    :cond_33
    move v3, v4

    :goto_34
    return v3

    :pswitch_35
    if-eqz p2, :cond_38

    goto :goto_39

    :cond_38
    move v4, v5

    :goto_39
    return v4

    :pswitch_3a
    if-eqz p2, :cond_3d

    goto :goto_3e

    :cond_3d
    move v5, v6

    :goto_3e
    return v5

    :pswitch_3f
    if-eqz p2, :cond_42

    goto :goto_43

    :cond_42
    move v6, v7

    :goto_43
    return v6

    :pswitch_44
    if-eqz p2, :cond_47

    goto :goto_48

    :cond_47
    move v7, v8

    :goto_48
    return v7

    :pswitch_49
    if-eqz p2, :cond_4c

    move v1, v8

    :cond_4c
    return v1

    :pswitch_4d
    if-eqz p2, :cond_50

    move v0, v1

    :cond_50
    return v0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method

.method public generateMonetOverlay()V
    .registers 5

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:generateMonetOverlay"

    .line 582
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "generate palette theme overlay"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v2, v3}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createMonetOverlay(Lcom/android/server/om/wallpapertheme/ThemePalette;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 585
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {p0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->writeLastPalette(Lcom/android/server/om/wallpapertheme/ThemePalette;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_21

    .line 587
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 588
    throw p0
.end method

.method public generateThemeOverlay()V
    .registers 5

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:generateThemeOverlay"

    .line 572
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "generate color theme overlay"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    const-string v3, "SemWT"

    invoke-virtual {v2, v3}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createThemeOverlays(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1c

    .line 576
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 577
    throw p0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 341
    new-instance v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$1;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->search(Ljava/lang/String;ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getColor(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 406
    new-instance v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$4;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->search(Ljava/lang/String;ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final getColorFromTheme(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1a

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1a

    :cond_a
    const-string v0, "#"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public getColorResId(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4

    .line 352
    new-instance v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$2;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->search(Ljava/lang/String;ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getColorResIdForMW(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4

    .line 362
    new-instance v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$3;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->search(Ljava/lang/String;ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final getColorResIdFromTheme(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4

    if-eqz p1, :cond_21

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_21

    :cond_9
    const/16 v0, 0x64

    if-eq p2, v0, :cond_16

    .line 422
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getResIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_1c

    .line 424
    :cond_16
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getResIdByName(Ljava/lang/String;)I

    move-result p0

    .line 426
    :goto_1c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    .line 436
    new-instance v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$5;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->search(Ljava/lang/String;ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getPackageList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/wallpapertheme/Package;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPackageNameList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object p0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/Package;

    .line 97
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method public getPalette()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 451
    new-instance v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$6;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->search(Ljava/lang/String;ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public initInstalledPackageMetadata(Landroid/content/Context;)V
    .registers 9

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string p1, "SWT:initInstalledPackageMetadata"

    .line 755
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 756
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p1}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 757
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 758
    invoke-static {v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->hasWallpaperThemeTemplate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 759
    invoke-virtual {p0, v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateTemplateFromPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 761
    :cond_2c
    invoke-static {v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->hasWallpaperThemeMeta(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 762
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update installed package\'s metadata "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {v2, v3}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->update(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_54
    .catchall {:try_start_2 .. :try_end_4d} :catchall_52

    goto :goto_11

    .line 769
    :cond_4e
    :goto_4e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_6d

    :catchall_52
    move-exception p0

    goto :goto_6e

    :catch_54
    move-exception p1

    .line 767
    :try_start_55
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "metadata, error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_52

    goto :goto_4e

    :goto_6d
    return-void

    .line 769
    :goto_6e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 770
    throw p0
.end method

.method public initTemplateAndMetadata(Landroid/content/Context;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:initTemplateAndMetadata"

    .line 112
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_c8

    .line 116
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_33
    .catchall {:try_start_d .. :try_end_18} :catchall_c8

    .line 117
    :try_start_18
    invoke-virtual {p0, v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 118
    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplate:Ljava/util/List;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->parseJsonObject(Ljava/lang/String;Ljava/util/List;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_27

    if-eqz v4, :cond_4b

    .line 119
    :try_start_23
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_33
    .catchall {:try_start_23 .. :try_end_26} :catchall_c8

    goto :goto_4b

    :catchall_27
    move-exception v5

    if-eqz v4, :cond_32

    .line 116
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v4

    :try_start_2f
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v5
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_c8

    :catch_33
    move-exception v4

    .line 120
    :try_start_34
    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loading template, error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_4b
    :goto_4b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 123
    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplate:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " items loaded, dur:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v2, Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-direct {v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;
    :try_end_77
    .catchall {:try_start_34 .. :try_end_77} :catchall_c8

    .line 128
    :try_start_77
    invoke-virtual {v2, p1}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->load(Landroid/content/Context;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_c8

    goto :goto_93

    :catch_7b
    move-exception p1

    .line 130
    :try_start_7c
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loading metadata, error = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_93
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load metadata, package count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {v3}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dur:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->writeResIdTable()V
    :try_end_c4
    .catchall {:try_start_7c .. :try_end_c4} :catchall_c8

    .line 136
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_c8
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 137
    throw p0
.end method

.method public final parseJsonObject(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "opacity"

    .line 260
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 261
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "template"

    .line 262
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 264
    :goto_13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 265
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 266
    new-instance v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    invoke-direct {v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;-><init>()V

    const-string/jumbo v4, "theme"

    .line 267
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    const-string/jumbo v4, "uid"

    .line 268
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->uid:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v2, 0x64

    goto :goto_41

    :cond_3d
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->opacity:Ljava/lang/Integer;

    .line 270
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_4a} :catch_4d

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_4d
    move-exception p1

    .line 273
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "loading template, error = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-void
.end method

.method public final readFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 315
    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    const-string p1, "UTF-8"

    .line 318
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readLastPalette()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/wallpapertheme/last_palette.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x0

    .line 222
    :try_start_13
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "UTF-8"

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_41

    .line 225
    :goto_24
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 228
    :cond_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3d} :catch_3e

    goto :goto_4f

    :catch_3e
    move-exception v0

    move-object v1, v2

    goto :goto_42

    :catch_41
    move-exception v0

    .line 230
    :goto_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_4f

    .line 233
    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4f
    :goto_4f
    return-object p0
.end method

.method public registerMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .registers 6

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:registerMonetOverlay"

    .line 538
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateMonetOverlay()V

    .line 541
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/FabricatedOverlay;

    .line 542
    invoke-virtual {p1, v3}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    goto :goto_10

    .line 544
    :cond_20
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "register palette theme overlay"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_2c

    .line 546
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 547
    throw p0
.end method

.method public registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .registers 6

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:registerThemeOverlay"

    .line 463
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    if-nez v2, :cond_e

    .line 465
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->generateThemeOverlay()V

    .line 467
    :cond_e
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/FabricatedOverlay;

    .line 468
    invoke-virtual {p1, v3}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    goto :goto_14

    .line 470
    :cond_24
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "register color theme overlay"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_30

    .line 472
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_30
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 473
    throw p0
.end method

.method public restoreMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayInfo;)V
    .registers 11

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:restoreMonetOverlay"

    .line 552
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_5b

    const-string v2, "android"

    if-eqz p2, :cond_15

    .line 554
    :try_start_b
    new-instance p2, Landroid/content/om/OverlayIdentifier;

    const-string v3, "MonetPalette"

    invoke-direct {p2, v2, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/om/OverlayManagerTransaction$Builder;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 557
    :cond_15
    iget-object p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {p2, v3}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createMonetOverlay(Lcom/android/server/om/wallpapertheme/ThemePalette;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 558
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/FabricatedOverlay;

    .line 559
    invoke-virtual {p1, v3}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    goto :goto_23

    .line 561
    :cond_33
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    array-length p2, p0

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, p2, :cond_57

    aget v4, p0, v3

    .line 562
    new-instance v5, Landroid/content/om/OverlayIdentifier;

    const-string v6, "SemWT_MonetPalette"

    invoke-direct {v5, v2, v6}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 563
    new-instance v5, Landroid/content/om/OverlayIdentifier;

    const-string v7, "SemWT_G_MonetPalette"

    invoke-direct {v5, v2, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_5b

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 566
    :cond_57
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 567
    throw p0
.end method

.method public saveWallpaperThemeColor()V
    .registers 11

    .line 701
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getPaletteGG()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 702
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 703
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getPaletteGG()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    iget-boolean v3, v3, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    goto :goto_2e

    :cond_2c
    move v3, v1

    move-object v0, v2

    .line 712
    :goto_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 713
    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v6, v5

    :goto_3b
    if-ge v1, v6, :cond_7f

    aget v7, v5, v1

    const-string/jumbo v8, "wallpapertheme_color"

    .line 714
    invoke-static {v4, v8, v2, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v8, "wallpapertheme_color_for_g"

    .line 715
    invoke-static {v4, v8, v0, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v8, "wallpapertheme_color_isgray"

    if-eqz v3, :cond_53

    const-string v9, "1"

    goto :goto_55

    :cond_53
    const-string v9, "0"

    .line 716
    :goto_55
    invoke-static {v4, v8, v9, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_58} :catch_5b

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :catch_5b
    move-exception v0

    .line 719
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveWallpaperThemeColor posted delay, due: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7f
    return-void
.end method

.method public saveWallpaperThemeState(I)V
    .registers 8

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_3f

    aget v3, v0, v2

    .line 686
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wallpapertheme_state"

    invoke-static {v4, v5, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_1b
    move-exception v0

    .line 689
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveWallpaperThemeState posted delay, due: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3f
    return-void
.end method

.method public final search(Ljava/lang/String;ZLjava/util/function/Function;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Function<",
            "Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_1
    const/16 v0, 0x14

    const/4 v1, 0x0

    if-ge p2, v0, :cond_31

    .line 326
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    .line 327
    iget-object v3, v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->uid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 328
    invoke-interface {p3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 331
    :cond_25
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->getRefUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2e

    return-object v1

    :cond_2e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_31
    return-object v1
.end method

.method public setPalette(Ljava/util/List;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/wallpapertheme/ThemePalette;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public setPermissionsDirIfExisted()V
    .registers 4

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/wallpapertheme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v1, 0x1ff

    const/4 v2, -0x1

    .line 208
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 209
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "success to change color theme directory permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_33

    :catch_1c
    move-exception v0

    .line 212
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed setPermissionsDirIfExisted, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return-void
.end method

.method public splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x41

    if-le p0, v1, :cond_28

    .line 246
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 p0, 0x82

    .line 247
    invoke-interface {p1, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_27

    move v0, p1

    :cond_27
    return v0

    .line 252
    :cond_28
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return v0
.end method

.method public syncWallpaperThemeStateForUser(I)V
    .registers 11

    const-string/jumbo v0, "wallpapertheme_color_isgray"

    const-string/jumbo v1, "wallpapertheme_color_for_g"

    const-string/jumbo v2, "wallpapertheme_color"

    const-string/jumbo v3, "wallpapertheme_state"

    .line 729
    :try_start_c
    iget-object v4, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x1

    .line 730
    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7c

    .line 732
    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 733
    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 734
    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 736
    invoke-static {v4, v3, v5, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v6, :cond_38

    if-eqz v7, :cond_38

    if-eqz v8, :cond_38

    .line 738
    invoke-static {v4, v2, v6, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 739
    invoke-static {v4, v1, v7, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 740
    invoke-static {v4, v0, v8, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 742
    :cond_38
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncWallpaperThemeStateForUser for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_57} :catch_58

    goto :goto_7c

    :catch_58
    move-exception v0

    .line 745
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncWallpaperThemeStateForUser posted delay, due: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mExceptionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7c
    :goto_7c
    return-void
.end method

.method public unregisterNotExistedOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayManagerTransaction$Builder;",
            "Ljava/util/ArrayList<",
            "Landroid/content/om/OverlayIdentifier;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "SWT:unregisterNotExistedOverlay"

    .line 510
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 512
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayIdentifier;

    .line 513
    invoke-virtual {v4}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    const-string v6, "SemWT_MonetPalette"

    .line 514
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "SemWT_G_MonetPalette"

    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_f

    :cond_32
    const/4 v6, 0x0

    .line 519
    iget-object v7, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/om/FabricatedOverlay;

    .line 520
    invoke-virtual {v8}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/om/OverlayIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/4 v6, 0x1

    :cond_50
    if-nez v6, :cond_f

    .line 526
    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregister not existed overlay : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p1, v4}, Landroid/content/om/OverlayManagerTransaction$Builder;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;

    goto :goto_f

    .line 530
    :cond_6d
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unregisterNotExistedOverlay, dur:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_2 .. :try_end_89} :catchall_8d

    .line 532
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_8d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 533
    throw p0
.end method

.method public updateInstalledPackageMetadata(Ljava/lang/String;)V
    .registers 8

    const-wide/16 v0, 0x2000

    .line 775
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SWT:updateInstalledPackageMetadata, pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 776
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 777
    invoke-static {v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->hasWallpaperThemeNotSupport(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 778
    sget-object p1, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_81
    .catchall {:try_start_2 .. :try_end_2b} :catchall_7f

    .line 795
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 781
    :cond_2f
    :try_start_2f
    sget-object v3, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 783
    invoke-static {v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->hasWallpaperThemeTemplate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 784
    invoke-virtual {p0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateTemplateFromPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 786
    :cond_41
    invoke-static {v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->hasWallpaperThemeMeta(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 787
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update installed package\'s metadata "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Lcom/android/server/om/wallpapertheme/MetaDataManager;

    invoke-virtual {p1, v2}, Lcom/android/server/om/wallpapertheme/MetaDataManager;->update(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    goto :goto_99

    .line 790
    :cond_63
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have metadata"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_7e} :catch_81
    .catchall {:try_start_2f .. :try_end_7e} :catchall_7f

    goto :goto_99

    :catchall_7f
    move-exception p0

    goto :goto_9d

    :catch_81
    move-exception p1

    .line 793
    :try_start_82
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "metadata, error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_82 .. :try_end_99} :catchall_7f

    .line 795
    :goto_99
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_9d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 796
    throw p0
.end method

.method public final updateJsonObject(Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "opacity"

    const-string v1, "-"

    const-string/jumbo v2, "uid"

    .line 279
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "template"

    .line 280
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v3, 0x0

    .line 283
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 284
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    .line 286
    iget-object v5, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update template, pkgUId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_43
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    .line 290
    iget-object v8, v7, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->uid:Ljava/lang/String;

    if-eqz v8, :cond_43

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 291
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 294
    :cond_6c
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    .line 295
    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_70

    .line 298
    :cond_80
    :goto_80
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_cf

    .line 299
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 300
    new-instance v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;

    invoke-direct {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;-><init>()V

    const-string/jumbo v5, "theme"

    .line 301
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->theme:Ljava/lang/String;

    .line 302
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->uid:Ljava/lang/String;

    .line 303
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const/16 v1, 0x64

    goto :goto_ab

    :cond_a7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_ab
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager$Item;->opacity:Ljava/lang/Integer;

    .line 304
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_b4} :catch_b7

    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :catch_b7
    move-exception p1

    .line 307
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updating template, error = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    return-void
.end method

.method public updateTemplateFromPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    .line 800
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update installed package\'s template "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :try_start_1a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    .line 803
    invoke-static {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->getPackageResources(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_25

    return-void

    :cond_25
    const-string/jumbo v2, "theming-template"

    .line 805
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_40

    const-string/jumbo v2, "theming-meta"

    .line 807
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "raw"

    .line 808
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_40} :catch_7a

    :cond_40
    if-lez v2, :cond_92

    .line 811
    :try_start_42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_61
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_7a

    .line 812
    :try_start_46
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 813
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplate:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateJsonObject(Ljava/lang/String;Ljava/util/List;)V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_55

    if-eqz p1, :cond_92

    .line 814
    :try_start_51
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_61
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_7a

    goto :goto_92

    :catchall_55
    move-exception v0

    if-eqz p1, :cond_60

    .line 811
    :try_start_58
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception p1

    :try_start_5d
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    throw v0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_7a

    :catch_61
    move-exception p1

    .line 815
    :try_start_62
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading template from apk, error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_79} :catch_7a

    goto :goto_92

    :catch_7a
    move-exception p1

    .line 819
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTemplateFromPkg, error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    return-void
.end method

.method public updateThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/lang/String;I)V
    .registers 13

    const-wide/16 v0, 0x2000

    .line 478
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SWT:updateThemeOverlay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, -0x1

    if-eq p3, v2, :cond_b6

    .line 480
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mOverlayGenerator:Lcom/android/server/om/wallpapertheme/OverlayGenerator;

    const-string v3, "SemWT"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/om/wallpapertheme/OverlayGenerator;->createThemeOverlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay;

    move-result-object v2

    .line 481
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update color theme overlay, pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", overlay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b6

    .line 483
    invoke-virtual {p1, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p3, v4, :cond_5f

    .line 485
    iget-object p3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p3

    array-length v5, p3

    move v6, v3

    :goto_51
    if-ge v6, v5, :cond_5f

    aget v7, p3, v6

    .line 486
    invoke-virtual {v2}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v8

    invoke-virtual {p1, v8, v4, v7}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 489
    :cond_5f
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    if-eqz p1, :cond_b6

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SemWT_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 491
    :goto_74
    iget-object p3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_b1

    .line 492
    iget-object p3, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/om/FabricatedOverlay;

    .line 493
    invoke-virtual {p3}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ae

    .line 494
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove old one from array, pkg = "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    :cond_ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 499
    :cond_b1
    :goto_b1
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catchall {:try_start_2 .. :try_end_b6} :catchall_ba

    .line 504
    :cond_b6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_ba
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 505
    throw p0
.end method

.method public final writeLastPalette(Lcom/android/server/om/wallpapertheme/ThemePalette;)V
    .registers 7

    const/4 v0, 0x0

    .line 178
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/wallpapertheme/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/16 v2, 0x1ff

    const/4 v3, -0x1

    .line 181
    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 183
    :cond_17
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/wallpapertheme/last_palette.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_a1
    .catchall {:try_start_1 .. :try_end_2a} :catchall_9f

    .line 185
    :try_start_2a
    iget-object v0, p1, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_30

    .line 188
    :cond_57
    iget-object v0, p1, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_5d

    .line 191
    :cond_84
    iget-boolean p1, p1, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    if-eqz p1, :cond_8b

    const-string p1, "1"

    goto :goto_8d

    :cond_8b
    const-string p1, "0"

    :goto_8d
    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {v1, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_95} :catch_9c
    .catchall {:try_start_2a .. :try_end_95} :catchall_99

    .line 197
    :try_start_95
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_ad

    goto :goto_b3

    :catchall_99
    move-exception p1

    move-object v0, v2

    goto :goto_b4

    :catch_9c
    move-exception p1

    move-object v0, v2

    goto :goto_a2

    :catchall_9f
    move-exception p1

    goto :goto_b4

    :catch_a1
    move-exception p1

    .line 194
    :goto_a2
    :try_start_a2
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_9f

    if-eqz v0, :cond_b3

    .line 197
    :try_start_a9
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_b3

    :catch_ad
    move-exception p1

    .line 199
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b3
    :goto_b3
    return-void

    :goto_b4
    if-eqz v0, :cond_c0

    .line 197
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_c0

    :catch_ba
    move-exception v0

    .line 199
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :cond_c0
    :goto_c0
    throw p1
.end method

.method public final writeResIdTable()V
    .registers 16

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    invoke-static {}, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->values()[Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_52

    aget-object v5, v1, v4

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v5, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->resId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    sget-object v6, Landroid/content/om/WallpaperThemeConstants;->OPACITY_RES_TABLE:[I

    if-eqz v6, :cond_4f

    .line 147
    array-length v8, v6

    move v9, v3

    :goto_2c
    if-ge v9, v8, :cond_4f

    aget v10, v6, v9

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Lcom/android/server/om/wallpapertheme/ThemePalette;

    iget-object v13, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    iget-object v14, v5, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v10}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getResIdByName(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_52
    const/4 v1, 0x0

    .line 155
    :try_start_53
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/overlays/wallpapertheme/"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_69

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    .line 158
    invoke-static {v2, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 160
    :cond_69
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/overlays/wallpapertheme/res_id_table.txt"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7c} :catch_93
    .catchall {:try_start_53 .. :try_end_7c} :catchall_91

    .line 162
    :try_start_7c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 163
    invoke-virtual {v2, v0, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_87} :catch_8e
    .catchall {:try_start_7c .. :try_end_87} :catchall_8b

    .line 168
    :try_start_87
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_9f

    goto :goto_a5

    :catchall_8b
    move-exception v0

    move-object v1, v4

    goto :goto_a6

    :catch_8e
    move-exception v0

    move-object v1, v4

    goto :goto_94

    :catchall_91
    move-exception v0

    goto :goto_a6

    :catch_93
    move-exception v0

    .line 165
    :goto_94
    :try_start_94
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_91

    if-eqz v1, :cond_a5

    .line 168
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_a5

    :catch_9f
    move-exception v0

    .line 170
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a5
    :goto_a5
    return-void

    :goto_a6
    if-eqz v1, :cond_b2

    .line 168
    :try_start_a8
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_b2

    :catch_ac
    move-exception v1

    .line 170
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_b2
    :goto_b2
    throw v0
.end method
