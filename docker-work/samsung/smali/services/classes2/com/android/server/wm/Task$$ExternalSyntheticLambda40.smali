.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$C79vZmcNLmVC27hgaOnJza99zto(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    return-void
.end method
