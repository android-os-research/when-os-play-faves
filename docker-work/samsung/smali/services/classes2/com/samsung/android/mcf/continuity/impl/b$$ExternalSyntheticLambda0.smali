.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/impl/b$a;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$2:[B

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/impl/b$a;

    iput p5, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$1:Ljava/net/Socket;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$2:[B

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/mcf/continuity/impl/b$a;

    iget v4, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/b;->a(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;II)V

    return-void
.end method
