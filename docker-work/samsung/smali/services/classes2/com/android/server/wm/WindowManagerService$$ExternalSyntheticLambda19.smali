.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$yNniIM2dqYNd8A0doXGh-TpwIK0(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
