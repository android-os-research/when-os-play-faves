.class public abstract Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.super Ljava/lang/Object;
.source "AbsCocktailPolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;


# instance fields
.field public mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    return-void
.end method


# virtual methods
.method public changeResumePackage(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 3

    return-void
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method
