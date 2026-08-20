.class public final synthetic Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iput-object p2, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->$r8$lambda$vl7rcaLnhYKlnupU8sH7OIKbVso(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method
