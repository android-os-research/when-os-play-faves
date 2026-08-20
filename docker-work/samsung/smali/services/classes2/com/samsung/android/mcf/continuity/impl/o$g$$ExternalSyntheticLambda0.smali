.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$g$$ExternalSyntheticLambda0;->f$2:[B

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/o$g;->a(Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
