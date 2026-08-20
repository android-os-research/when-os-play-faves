.class public Lcom/android/server/appop/AppOpsService$8;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/app/AppOpsManager$HistoricalOps;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic val$candidates:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .registers 3

    .line 7291
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 10

    .line 7294
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_39

    .line 7296
    invoke-virtual {p1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v3

    .line 7298
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v4

    move v5, v1

    :goto_11
    if-ge v5, v4, :cond_36

    .line 7300
    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v6

    .line 7301
    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 7302
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_33

    .line 7306
    :cond_24
    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v7

    .line 7307
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v7

    if-eqz v7, :cond_33

    .line 7308
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_33
    :goto_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7312
    :cond_39
    monitor-enter p0

    .line 7313
    :try_start_3a
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    :goto_44
    if-ge v1, p1, :cond_5a

    .line 7315
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 7317
    :cond_5a
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-static {p1, v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fputmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    .line 7318
    monitor-exit p0

    return-void

    :catchall_63
    move-exception p1

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_3a .. :try_end_65} :catchall_63

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 7291
    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$8;->accept(Landroid/app/AppOpsManager$HistoricalOps;)V

    return-void
.end method
