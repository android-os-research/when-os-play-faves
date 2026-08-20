.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailContextualPolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CocktailContextualPolicy"


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

    const/4 p0, 0x2

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
    .registers 6

    .line 28
    invoke-virtual {p3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_c

    if-eqz p5, :cond_a

    return p3

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 35
    :cond_c
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result p1

    invoke-interface {p0, p1, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V

    return p3
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_c

    .line 60
    sget-object p1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isMatchedPolicy: cocktail is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 63
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object p1

    if-eqz v0, :cond_2a

    .line 66
    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    if-eqz p1, :cond_29

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_28

    return v0

    :cond_28
    return p0

    :cond_29
    return v0

    :cond_2a
    return p0
.end method
