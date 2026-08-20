.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:B

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda1;->f$0:B

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-byte v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda1;->f$0:B

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/mcf/continuity/impl/e;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/o$d;->a(BILjava/lang/String;Lcom/samsung/android/mcf/continuity/impl/e;)Lcom/samsung/android/mcf/continuity/impl/e;

    move-result-object p0

    return-object p0
.end method
