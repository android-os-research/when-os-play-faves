.class public final synthetic Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PopOverController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PopOverController;

    iput-object p2, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$1:[Z

    iput-boolean p3, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PopOverController;

    iget-object v1, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$1:[Z

    iget-boolean v2, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$2:Z

    iget-object p0, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/WindowState;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/PopOverController;->$r8$lambda$qvEXaljtkT-0EzeWWt3xPP5Av1Q(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
