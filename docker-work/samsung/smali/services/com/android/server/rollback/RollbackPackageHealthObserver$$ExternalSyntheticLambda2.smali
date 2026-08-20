.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->$r8$lambda$kStGuZ40fNjAhoNA1qyHamSTmIQ(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/function/Consumer;Landroid/content/Intent;)V

    return-void
.end method
