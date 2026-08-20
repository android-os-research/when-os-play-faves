.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;->f$1:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda16;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$DMAOqzLJfO0BLFyZguev0LCgIVw(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
