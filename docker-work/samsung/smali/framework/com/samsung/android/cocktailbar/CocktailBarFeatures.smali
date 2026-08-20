.class public Lcom/samsung/android/cocktailbar/CocktailBarFeatures;
.super Ljava/lang/Object;
.source "CocktailBarFeatures.java"


# static fields
.field public static final blacklist CATEGORY_NORMAL:Ljava/lang/String; = "normal"

.field public static final blacklist COCKTAIL_ENABLED:Z = true

.field private static final blacklist FEATURE_COCKTAIL_BAR:I = 0x1

.field private static final blacklist FEATURE_COCKTAIL_PANEL:I = 0x2

.field private static final blacklist FEATURE_NONE:I

.field private static blacklist sCocktailFeature:I

.field private static blacklist sQueriedTypeCocktail:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    .line 47
    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensureCocktailFeature(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    sget-boolean v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    if-nez v0, :cond_23

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_e

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    :cond_e
    :try_start_e
    const-string v2, "com.sec.feature.cocktailbar"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    .line 62
    if-nez v0, :cond_21

    .line 63
    const/4 v0, 0x2

    const-string v2, "com.sec.feature.cocktailpanel"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_22

    .line 67
    :cond_21
    goto :goto_23

    .line 66
    :catch_22
    move-exception v0

    .line 69
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_23
    :goto_23
    return-void
.end method

.method public static blacklist isSupportCocktailPanel(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->ensureCocktailFeature(Landroid/content/Context;)V

    .line 94
    sget v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public static blacklist isSystemBarType(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I
    .registers 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "feature"    # I
    .param p2, "systemFeature"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "result":I
    const/4 v1, 0x0

    if-eqz p0, :cond_d

    .line 75
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v1, p1

    :cond_b
    move v0, v1

    goto :goto_34

    .line 78
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "system/etc/permissions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_33

    move v1, p1

    :cond_33
    move v0, v1

    .line 81
    .end local v2    # "fileName":Ljava/lang/String;
    :goto_34
    return v0
.end method
