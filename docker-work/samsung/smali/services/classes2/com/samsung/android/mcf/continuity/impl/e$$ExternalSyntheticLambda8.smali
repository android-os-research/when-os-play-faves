.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;->f$1:Ljava/net/Socket;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda8;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$2JIYPQnlXkCnfSDe6yGZf5C0UyI(Lcom/samsung/android/mcf/continuity/impl/e;Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method
