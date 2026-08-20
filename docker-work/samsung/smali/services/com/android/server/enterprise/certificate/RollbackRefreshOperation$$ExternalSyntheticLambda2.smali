.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->$r8$lambda$NXvlHyzvWHrZUK0eIZbJ31HY65g(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
