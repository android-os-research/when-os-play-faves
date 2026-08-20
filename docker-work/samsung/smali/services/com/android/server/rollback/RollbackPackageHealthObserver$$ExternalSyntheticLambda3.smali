.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->$r8$lambda$GYEEwqgCkHBN372M-pUMUTsNb8M(Ljava/util/function/Consumer;Landroid/content/Intent;)V

    return-void
.end method
