.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
.super Ljava/lang/Object;
.source "CocktailPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpadatableCocktailInfo"
.end annotation


# instance fields
.field public mCocktailList:Landroid/util/SparseBooleanArray;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    .line 206
    iput p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mUserId:I

    return-void
.end method


# virtual methods
.method public disableUpdate(I)V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public enableUpdate(I)V
    .registers 3

    .line 214
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public getUserId()I
    .registers 1

    .line 210
    iget p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mUserId:I

    return p0
.end method

.method public isUpdatedCocktail(I)Z
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->mCocktailList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method
