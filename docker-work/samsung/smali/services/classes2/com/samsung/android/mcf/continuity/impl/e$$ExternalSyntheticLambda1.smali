.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/net/Socket;

.field public final synthetic f$4:[B

.field public final synthetic f$5:Ljava/io/InputStream;

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$3:Ljava/net/Socket;

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$4:[B

    iput-object p6, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$5:Ljava/io/InputStream;

    iput-wide p7, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$6:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$3:Ljava/net/Socket;

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$4:[B

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$5:Ljava/io/InputStream;

    iget-wide v6, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda1;->f$6:J

    move-object v8, p1

    check-cast v8, [B

    move-object v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$-TD479UPqs3ZoVTDs7nmNZg_vQk(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ILjava/net/Socket;[BLjava/io/InputStream;J[BLjava/lang/Integer;)V

    return-void
.end method
