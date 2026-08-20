.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:B

.field public final synthetic f$2:[B

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;B[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iput-byte p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$1:B

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$2:[B

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$3:[B

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iget-byte v1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$1:B

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$2:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda12;->f$3:[B

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/mcf/continuity/impl/o;->a(Ljava/lang/String;B[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
