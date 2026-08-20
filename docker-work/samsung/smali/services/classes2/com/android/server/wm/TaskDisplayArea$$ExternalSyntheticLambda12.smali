.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;->f$1:[I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->$r8$lambda$yqUS9ZtvLHh6NsMGJ805rAtZujg(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method
