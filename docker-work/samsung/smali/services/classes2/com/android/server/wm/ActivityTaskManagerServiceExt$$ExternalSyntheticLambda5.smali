.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->$r8$lambda$tRWlBol1IRNBkrXf3LASmM0qcis(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method
