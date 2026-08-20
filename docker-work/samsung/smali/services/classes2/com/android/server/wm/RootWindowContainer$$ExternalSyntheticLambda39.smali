.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$pGASteUZRXrCwSX0HkqqwwiJOLQ(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method
