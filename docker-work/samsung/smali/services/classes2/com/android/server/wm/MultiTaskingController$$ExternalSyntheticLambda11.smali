.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$0:[Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$0:[Z

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$mBoJ6y4ibxVo3KkvyBW62RN4XPM([ZLcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
