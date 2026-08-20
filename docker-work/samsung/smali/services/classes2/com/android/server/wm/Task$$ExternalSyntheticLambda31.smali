.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/TaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/TaskInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;->f$0:Landroid/app/TaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;->f$0:Landroid/app/TaskInfo;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$yW9T00UlVRz3MVcms7hUk8nlkNY(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
