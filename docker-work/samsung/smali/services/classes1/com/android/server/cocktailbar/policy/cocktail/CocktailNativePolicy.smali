.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailNativePolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CocktailNativePolicy"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    if-eqz p4, :cond_d

    .line 51
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-interface {p0, p1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onDisableUpdatableCocktail(II)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    if-eqz p4, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .registers 7

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1a

    .line 30
    invoke-virtual {p2}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result p2

    const/high16 v0, 0x10000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1a

    .line 31
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-interface {p0, p1, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V

    return p3

    :cond_1a
    if-eqz p5, :cond_1d

    return p3

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_c

    .line 60
    sget-object p1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isMatchedPolicy: cocktail is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 63
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 65
    iget p1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/16 v0, 0x20

    if-eq p1, v0, :cond_20

    const/16 v0, 0x80

    if-eq p1, v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 p0, 0x1

    :cond_21
    :goto_21
    return p0
.end method
