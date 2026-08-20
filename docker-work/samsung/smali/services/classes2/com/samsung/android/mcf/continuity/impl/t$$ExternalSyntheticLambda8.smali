.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:[B

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/function/BiConsumer;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;[BILjava/util/function/BiConsumer;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$2:[B

    iput p4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$4:Ljava/util/function/BiConsumer;

    iput p6, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$1:Ljava/net/Socket;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$2:[B

    iget v3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$3:I

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$4:Ljava/util/function/BiConsumer;

    iget v5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda8;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$PPTiFHTBGJVSqi-unu5oA6Xxn4Q(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;[BILjava/util/function/BiConsumer;I)V

    return-void
.end method
