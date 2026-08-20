.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

.field public final synthetic f$4:B

.field public final synthetic f$5:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;B[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    iput-byte p5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$4:B

    iput-object p6, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$5:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$2:I

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$3:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    iget-byte v4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$4:B

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda10;->f$5:[B

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$BwODJwP28iT3YjPkIXq6Fsg06hA(Lcom/samsung/android/mcf/continuity/impl/t;IILcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;B[B)V

    return-void
.end method
