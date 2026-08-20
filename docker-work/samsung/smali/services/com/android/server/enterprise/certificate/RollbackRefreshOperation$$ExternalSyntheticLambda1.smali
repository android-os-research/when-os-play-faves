.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda1;->f$4:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->$r8$lambda$1Y84xOmbQ0vMVoeraESnu3OXe70(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
