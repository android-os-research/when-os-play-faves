.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->$r8$lambda$9xkcokzUhiYQY_6mZv1HWL4smVk(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
