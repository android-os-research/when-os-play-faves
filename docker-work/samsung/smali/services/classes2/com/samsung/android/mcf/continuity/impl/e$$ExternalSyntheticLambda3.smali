.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$66CbsWqsXwOpH7NbWlEbDruqq7s(Lcom/samsung/android/mcf/continuity/impl/e;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
