.class public final synthetic Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/android/server/wm/RunningTasks;

    check-cast p2, Lcom/android/server/wm/Task;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/android/server/wm/RunningTasks;->$r8$lambda$B-cYKGGJt1O3p9QNbYkyuf7SfPA(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/Task;Z)V

    return-void
.end method
