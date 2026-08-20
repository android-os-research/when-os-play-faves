.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:[Ljava/lang/Integer;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->$r8$lambda$qZlwXtrHgHYUS7bwVAZLhM6UPgk(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
