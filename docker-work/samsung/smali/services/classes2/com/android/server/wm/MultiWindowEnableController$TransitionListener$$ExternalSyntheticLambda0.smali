.class public final synthetic Lcom/android/server/wm/MultiWindowEnableController$TransitionListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;->$r8$lambda$qqzrmYV9NnTGnBj6OB6oNMhxGEU(Lcom/android/server/wm/Task;)V

    return-void
.end method
