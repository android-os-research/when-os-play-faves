.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$1:Landroid/app/appsearch/AppSearchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/infra/AndroidFuture;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$1:Landroid/app/appsearch/AppSearchSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/infra/AndroidFuture;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$1:Landroid/app/appsearch/AppSearchSession;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$KbRzzeRREps8hnu-lcjYjhUUhb0(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method
