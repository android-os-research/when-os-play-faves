.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailNormalPolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz p4, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz p4, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .registers 6

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz p5, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_c

    .line 51
    sget-object p1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isMatchedPolicy: cocktail is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 54
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 56
    iget p1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/lit16 p1, p1, 0x101

    if-eqz p1, :cond_19

    const/4 p0, 0x1

    :cond_19
    return p0
.end method
