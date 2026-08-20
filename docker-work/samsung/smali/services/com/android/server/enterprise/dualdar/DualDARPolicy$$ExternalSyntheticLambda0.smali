.class public final synthetic Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[B

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    iput p2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    iput p5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    iget v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    iget p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->$r8$lambda$ZzPJ0YyPqNxtQvF_0AXRr9PR6bo(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
