.class public Lcom/android/server/pm/ShortcutPackage$2;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShortcutPackage;->lambda$removeShortcutAsync$44(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/appsearch/BatchResultCallback<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 2

    .line 2589
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$2;->this$0:Lcom/android/server/pm/ShortcutPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2593
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p0

    if-nez p0, :cond_47

    .line 2595
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    .line 2596
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchResult;

    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    .line 2597
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_47
    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .registers 3

    const-string p0, "ShortcutService"

    const-string v0, "Error removing shortcuts"

    .line 2604
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
