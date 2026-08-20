.class abstract Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetPresentationGetter"
.end annotation


# instance fields
.field private final blacklist mAi:Landroid/content/pm/ApplicationInfo;

.field private blacklist mCtx:Landroid/content/Context;

.field final blacklist mHasSubstitutePermission:Z

.field private final blacklist mIconDpi:I

.field protected blacklist mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "iconDpi"    # I
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    .line 1404
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    .line 1405
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    .line 1406
    iput p2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mIconDpi:I

    .line 1407
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.permission.SUBSTITUTE_SHARE_TARGET_APP_NAME_AND_ICON"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    .line 1410
    return-void
.end method

.method private blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1544
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_c

    .line 1545
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1548
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1549
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1548
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1550
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1551
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1552
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1554
    return-object v0
.end method


# virtual methods
.method abstract blacklist getAppLabelForSubstitutePermission()Ljava/lang/String;
.end method

.method abstract blacklist getAppSubLabelInternal()Ljava/lang/String;
.end method

.method public blacklist getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1413
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public blacklist getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-eqz v1, :cond_9

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1422
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    instance-of v2, v1, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    if-eqz v2, :cond_40

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 1423
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsOverlayThemesEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mCtx:Landroid/content/Context;

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    .line 1424
    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semGetAppIconTheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 1425
    if-nez v0, :cond_2c

    .line 1426
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_7b

    .line 1428
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1429
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_7b

    .line 1433
    :cond_40
    if-nez v0, :cond_5b

    .line 1435
    :try_start_42
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_59

    .line 1437
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_58} :catch_5a

    move-object v0, v1

    .line 1440
    :cond_59
    goto :goto_5b

    .line 1439
    :catch_5a
    move-exception v1

    .line 1444
    :cond_5b
    :goto_5b
    if-nez v0, :cond_65

    .line 1445
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1451
    :cond_65
    if-eqz v0, :cond_7b

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1452
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1458
    :cond_7b
    :goto_7b
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1460
    invoke-static {}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$sfgetsSProtect()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->isLock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_ab

    .line 1461
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1470
    :cond_ab
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1473
    .local v1, "icon":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method abstract blacklist getIconSubstituteInternal()Landroid/graphics/drawable/Drawable;
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .registers 6

    .line 1487
    const/4 v0, 0x0

    .line 1490
    .local v0, "label":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->isSecureFolderComponent()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1491
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getAppLabelForSubstitutePermission()Ljava/lang/String;

    move-result-object v0

    .line 1495
    :cond_f
    if-nez v0, :cond_37

    .line 1496
    sget-object v1, Lcom/android/internal/app/ResolverListAdapter;->sSemChooserAppSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;

    .line 1497
    .local v2, "chooserApp":Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1498
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getLabel()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1500
    .end local v2    # "chooserApp":Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;
    :cond_36
    goto :goto_17

    .line 1503
    :cond_37
    if-nez v0, :cond_44

    .line 1504
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mAi:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1507
    :cond_44
    return-object v0
.end method

.method public blacklist getSubLabel()Ljava/lang/String;
    .registers 3

    .line 1513
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mHasSubstitutePermission:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->isSecureFolderComponent()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 1522
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1514
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getAppSubLabelInternal()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, "appSubLabel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1517
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1518
    return-object v0

    .line 1520
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getUserHandle(I)Landroid/os/UserHandle;
    .registers 3
    .param p1, "uid"    # I

    .line 1478
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isSecureFolderComponent()Z
    .registers 2

    .line 1482
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist loadIconFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 1533
    :try_start_0
    iget v0, p0, Lcom/android/internal/app/ResolverListAdapter$TargetPresentationGetter;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1534
    :catch_7
    move-exception v0

    .line 1535
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadIconFromResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResolverListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist loadLabelFromResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 1526
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
