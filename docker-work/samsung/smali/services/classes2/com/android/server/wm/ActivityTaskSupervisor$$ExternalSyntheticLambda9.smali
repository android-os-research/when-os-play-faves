.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/wm/WindowProcessController;

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->$r8$lambda$SLFfYd66jnu4qXg9c8D5f-CcjWM(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method
