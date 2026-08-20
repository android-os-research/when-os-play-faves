.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(IID)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;->f$0:I

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;->f$1:I

    iput-wide p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;->f$2:D

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;->f$0:I

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;->f$1:I

    iget-wide v2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda9;->f$2:D

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/e;->b(IID)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
