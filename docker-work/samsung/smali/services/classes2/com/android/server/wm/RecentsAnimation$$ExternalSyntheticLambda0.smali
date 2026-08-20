.class public final synthetic Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/RecentsAnimation;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/RecentsAnimation;->$r8$lambda$rlVkoJ_usUn95Q8zT-IqZfw2ZB8(Lcom/android/server/wm/RecentsAnimation;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
