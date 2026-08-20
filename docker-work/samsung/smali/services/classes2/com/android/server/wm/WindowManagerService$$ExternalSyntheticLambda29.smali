.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/wm/WindowManagerService;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$DC1INtvhApMWRZT2_Zy2-pq6rng(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
