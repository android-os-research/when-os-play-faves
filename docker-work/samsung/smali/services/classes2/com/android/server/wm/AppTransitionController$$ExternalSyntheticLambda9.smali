.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->$r8$lambda$h-XqqftDtzOR0XNJ84PR9J7j6Xc(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
