.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/impl/b$a;


# direct methods
.method public synthetic constructor <init>(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$2:[B

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$3:Lcom/samsung/android/mcf/continuity/impl/b$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$1:Ljava/net/Socket;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$2:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/b$$ExternalSyntheticLambda2;->f$3:Lcom/samsung/android/mcf/continuity/impl/b$a;

    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/mcf/continuity/impl/b;->a(ILjava/net/Socket;[BLcom/samsung/android/mcf/continuity/impl/b$a;)V

    return-void
.end method
