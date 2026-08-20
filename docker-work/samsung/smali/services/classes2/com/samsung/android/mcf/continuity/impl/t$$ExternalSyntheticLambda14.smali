.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:B

.field public final synthetic f$4:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;IB[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$2:I

    iput-byte p4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$3:B

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$4:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$2:I

    iget-byte v3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$3:B

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda14;->f$4:[B

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$O8bujqa7w2iG30Gnb_rdKLowmgs(Lcom/samsung/android/mcf/continuity/impl/t;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;IB[BLjava/lang/Boolean;)V

    return-void
.end method
