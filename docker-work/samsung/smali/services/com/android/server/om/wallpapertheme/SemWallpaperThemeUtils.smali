.class public Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;
.super Ljava/lang/Object;
.source "SemWallpaperThemeUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SWT_Utils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageResources(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/res/Resources;
    .registers 21

    .line 41
    new-instance v15, Landroid/content/res/AssetManager;

    move-object v0, v15

    invoke-direct {v15}, Landroid/content/res/AssetManager;-><init>()V

    .line 42
    sget v18, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v18}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 44
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_49

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SWT_Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 49
    :cond_49
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 51
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v1, v0, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v3
.end method

.method public static hasWallpaperThemeMeta(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3

    if-eqz p0, :cond_1d

    .line 25
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "theming-meta"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 26
    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->hasWallpaperThemeNotSupport(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static hasWallpaperThemeNotSupport(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    if-eqz p0, :cond_1d

    .line 16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 18
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "theming-meta"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NOT_SUPPORT_COLORTHEME"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static hasWallpaperThemeTemplate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3

    if-eqz p0, :cond_1d

    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "theming-template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 34
    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->hasWallpaperThemeNotSupport(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
