.class public Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;
.super Ljava/lang/Object;
.source "CocktailOrderManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CocktailOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mEnabledPanelInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOrderInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/settings/CocktailOrderManager;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->this$0:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iget-object p1, p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 286
    :try_start_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    .line 287
    iput-object p3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mEnabledPanelInfoArray:Landroid/util/SparseArray;

    .line 288
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p3, :cond_4e

    .line 290
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    if-eqz v1, :cond_4b

    .line 291
    iget-object v2, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_4b

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    iget v1, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 296
    :cond_4e
    monitor-exit p1

    return-void

    :catchall_50
    move-exception p0

    monitor-exit p1
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_50

    throw p0
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 7

    const/4 v0, 0x0

    .line 302
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mEnabledPanelInfoArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mEnabledPanelInfoArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_34

    :cond_2e
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    :goto_34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 305
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_53

    :cond_4d
    iget-object p0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    :goto_53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz v1, :cond_65

    if-eqz p0, :cond_65

    .line 307
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_63} :catch_66

    sub-int/2addr v1, p0

    return v1

    :cond_65
    return v0

    .line 312
    :catch_66
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CocktailOrderComparator: no order info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 280
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method
