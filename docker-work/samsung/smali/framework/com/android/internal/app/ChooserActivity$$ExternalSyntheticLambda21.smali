.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity;->lambda$semIsOnlyOneCheckedItem$17(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
