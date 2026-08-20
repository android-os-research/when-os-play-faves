.class public final synthetic Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioner;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskPositioner;

    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskPositioner;

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p0}, Lcom/android/server/wm/TaskPositioner;->$r8$lambda$lfe4lMBr2fnZNYWuiFAMc0f7e1o(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
