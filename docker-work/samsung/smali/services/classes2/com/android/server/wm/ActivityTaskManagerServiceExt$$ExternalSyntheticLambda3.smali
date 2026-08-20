.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->$r8$lambda$4wNw4uz5tI10gdWqu2zONAWYYQk(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
