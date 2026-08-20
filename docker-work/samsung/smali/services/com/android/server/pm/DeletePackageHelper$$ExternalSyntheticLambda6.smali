.class public final synthetic Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Computer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Computer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/Computer;

    iput p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/Computer;

    iget p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->$r8$lambda$nQUWhRJhGzLd0SCnxYJ7OdkZotI(Lcom/android/server/pm/Computer;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
