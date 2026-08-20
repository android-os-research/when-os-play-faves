.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnabledPackageMap"
.end annotation


# instance fields
.field public mEnabledPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3026
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledCount(Ljava/lang/String;)I
    .registers 2

    .line 3029
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    .line 3030
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_10
    return p0
.end method

.method public putEnabledProvider(Landroid/content/ComponentName;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3037
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3038
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 3039
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1e

    .line 3041
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3042
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 3044
    :cond_1e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 3045
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3048
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeEnabledProvider(Landroid/content/ComponentName;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3055
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3056
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 3057
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_16

    return-void

    .line 3061
    :cond_16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3062
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3065
    :cond_1f
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
