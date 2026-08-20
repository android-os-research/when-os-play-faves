.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$4:Z

    iput p6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$5:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$4:Z

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;->f$5:I

    move-object v6, p1

    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$AJ98l6Vu0VhEpmfv30jgOxfPyik(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
