.class public Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
.super Ljava/lang/Object;
.source "CocktailOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailOrderInfo"
.end annotation


# instance fields
.field public mCocktailId:I

.field public mComponentName:Landroid/content/ComponentName;

.field public mOrder:I

.field public mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;II)V
    .registers 5

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    .line 245
    iput-object p2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    .line 246
    iput p4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    .line 247
    iput p3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/Cocktail;II)V
    .registers 5

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 236
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    .line 239
    :cond_17
    iput p3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    .line 240
    iput p2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CocktailOrderInfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " order="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
