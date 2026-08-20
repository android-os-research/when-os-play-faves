.class public final synthetic Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/DexDockingController$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/DexDockingController;->$r8$lambda$kkhiZm5NHsLctvqOeRcntB8baDI(ILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
