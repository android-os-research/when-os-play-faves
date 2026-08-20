.class public final synthetic Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioningController;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskPositioningController;

    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    iput p3, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskPositioningController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    iget v2, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$3:I

    iget-boolean p0, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$4:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/wm/TaskPositioningController;->$r8$lambda$ktgXZoM8RRH6OMjexjzJjO1_B14(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;IIZ)V

    return-void
.end method
