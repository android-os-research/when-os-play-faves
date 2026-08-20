.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-boolean p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$YdcfJl3O2YqrlNJRwWqKWFODsFc(Lcom/android/server/wm/MultiTaskingController;Z)V

    return-void
.end method
