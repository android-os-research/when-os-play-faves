.class public Lcom/android/server/pm/ShortcutPackage$3;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShortcutPackage;->lambda$saveShortcutsAsync$46(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
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

    .line 2642
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$3;->this$0:Lcom/android/server/pm/ShortcutPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchBatchResult<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2646
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result p0

    if-nez p0, :cond_28

    .line 2647
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 2648
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_28
    return-void
.end method

.method public onSystemError(Ljava/lang/Throwable;)V
    .registers 3

    const-string p0, "ShortcutService"

    const-string v0, "Error persisting shortcuts"

    .line 2654
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
