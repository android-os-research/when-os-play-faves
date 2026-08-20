.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;->f$1:[I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$9DIUOYGEcbU3ctR_iQnKw68NAUA(Lcom/android/server/wm/Task;[ILcom/android/server/wm/Task;)V

    return-void
.end method
