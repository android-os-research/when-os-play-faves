.class public final synthetic Lcom/android/server/wm/FlipDisplayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FlipDisplayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FlipDisplayController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FlipDisplayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FlipDisplayController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/FlipDisplayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FlipDisplayController;

    invoke-virtual {p0}, Lcom/android/server/wm/FlexibleDisplayController;->isFolded()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
