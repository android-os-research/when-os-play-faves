.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$1:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$jUyRSTTbV7R48fMYbKlQDGoimpo(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
