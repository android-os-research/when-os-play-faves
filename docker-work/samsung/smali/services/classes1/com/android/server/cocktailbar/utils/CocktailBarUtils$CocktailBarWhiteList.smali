.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarWhiteList"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z
    .registers 3

    .line 37
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isCategoryOfWhiteList(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38
    iget-object p0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isCategoryOfWhiteList(I)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_a

    const/16 v0, 0x80

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static isSystemApplication(Ljava/lang/String;I)Z
    .registers 6

    .line 53
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 55
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can not get PM"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    const-wide/16 v2, 0x40

    .line 59
    :try_start_13
    invoke-interface {v0, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 61
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_23

    const/4 p0, 0x1

    return p0

    .line 65
    :cond_23
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "isSystemApplication: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_36

    const-string p0, " is no signature app"

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    :cond_36
    const-string p0, " f="

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 71
    :goto_42
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4d} :catch_4e

    return v1

    :catch_4e
    move-exception p0

    .line 75
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method
