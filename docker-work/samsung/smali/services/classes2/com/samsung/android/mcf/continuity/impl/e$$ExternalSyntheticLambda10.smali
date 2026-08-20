.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;->f$1:I

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda10;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$lq_qx_ALj-Bufu6mGVyPIlrpkTc(Lcom/samsung/android/mcf/continuity/impl/e;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
