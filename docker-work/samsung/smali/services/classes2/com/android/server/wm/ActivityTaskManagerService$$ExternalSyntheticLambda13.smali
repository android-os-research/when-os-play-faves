.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$2Ae9rOhU_rxjDvbfiEcZnfsYND4(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V

    return-void
.end method
