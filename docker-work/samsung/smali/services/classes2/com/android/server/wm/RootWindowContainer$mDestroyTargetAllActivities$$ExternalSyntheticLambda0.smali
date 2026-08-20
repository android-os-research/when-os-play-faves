.class public final synthetic Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/android/server/wm/RootWindowContainer;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lcom/android/server/wm/WindowProcessController;

    check-cast p4, Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer$mDestroyTargetAllActivities;->$r8$lambda$fsJGpjphqlTeb0nRSsjQqAO7ZIA(Ljava/lang/Object;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method
