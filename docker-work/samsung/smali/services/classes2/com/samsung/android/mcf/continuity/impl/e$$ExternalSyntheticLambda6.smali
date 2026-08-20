.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:D


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;IID)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$2:I

    iput-wide p4, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$3:D

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$1:I

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$2:I

    iget-wide v3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda6;->f$3:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$9bf2ZIFyd2GKATZed65MhHBht98(Lcom/samsung/android/mcf/continuity/impl/e;IID)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
