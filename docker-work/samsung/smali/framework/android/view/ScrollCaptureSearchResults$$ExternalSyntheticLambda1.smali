.class public final synthetic Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/view/ScrollCaptureTarget;

    check-cast p2, Landroid/view/ScrollCaptureTarget;

    invoke-static {p1, p2}, Landroid/view/ScrollCaptureSearchResults;->lambda$static$1(Landroid/view/ScrollCaptureTarget;Landroid/view/ScrollCaptureTarget;)I

    move-result p1

    return p1
.end method
