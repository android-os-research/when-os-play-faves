.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:I

.field public final synthetic f$2:B

.field public final synthetic f$3:[B

.field public final synthetic f$4:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;IB[B[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$1:I

    iput-byte p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$2:B

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$3:[B

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$4:[B

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$1:I

    iget-byte v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$2:B

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$3:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda13;->f$4:[B

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$Nu42sHzTFr5LPdiT-Z0f6SKFJb8(Lcom/samsung/android/mcf/continuity/impl/t;IB[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
