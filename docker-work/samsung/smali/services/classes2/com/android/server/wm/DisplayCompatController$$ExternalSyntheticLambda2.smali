.class public final synthetic Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;->f$1:Z

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayCompatController$$ExternalSyntheticLambda2;->f$2:Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/DisplayCompatController;->$r8$lambda$sukCZiT0r-H2aMuxezCtiHRYLkQ(Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
