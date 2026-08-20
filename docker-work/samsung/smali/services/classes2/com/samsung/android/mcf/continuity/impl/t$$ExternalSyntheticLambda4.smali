.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:I

.field public final synthetic f$2:B

.field public final synthetic f$3:[B

.field public final synthetic f$4:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$1:I

    iput-byte p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$2:B

    iput-object p4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$3:[B

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$4:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$1:I

    iget-byte v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$2:B

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$3:[B

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda4;->f$4:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$NbSfHJsx0_8P8QG8bJBx8PyotFg(Lcom/samsung/android/mcf/continuity/impl/t;IB[BLcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    return-void
.end method
