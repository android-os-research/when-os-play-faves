.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;[Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda12;->f$1:[Z

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$1FygBYK5lHBsjV_3qgFGNCzl5QE(Lcom/android/server/wm/MultiTaskingController;[ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method
