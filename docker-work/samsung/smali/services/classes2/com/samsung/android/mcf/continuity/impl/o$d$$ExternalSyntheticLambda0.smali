.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-byte p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;->f$1:B

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;->f$1:B

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$d$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/o$d;->b(Ljava/lang/String;BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
