.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;->f$0:Landroid/util/ArraySet;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$e2KBSP-qASMO-qKJB36Gn_Ra_9g(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
