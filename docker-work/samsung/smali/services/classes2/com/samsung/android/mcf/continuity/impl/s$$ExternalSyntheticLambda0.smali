.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/s;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/s;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/s;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/s;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/s$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/s;->$r8$lambda$ukuOG7Xbc0g0LOj-_qpeHXiVuj4(Lcom/samsung/android/mcf/continuity/impl/s;Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method
