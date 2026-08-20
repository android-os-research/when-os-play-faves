.class public final synthetic Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PinnedTaskController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PinnedTaskController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PinnedTaskController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PinnedTaskController;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/PinnedTaskController;->$r8$lambda$B9kbo5A9bax0DLJI2IXSMTgkAtM(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
