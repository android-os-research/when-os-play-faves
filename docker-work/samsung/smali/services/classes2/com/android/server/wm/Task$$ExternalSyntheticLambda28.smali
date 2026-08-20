.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/server/wm/Task;->$r8$lambda$_YAN_EG0Y0WkTCuARoZLSgGq8-A(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    return-void
.end method
