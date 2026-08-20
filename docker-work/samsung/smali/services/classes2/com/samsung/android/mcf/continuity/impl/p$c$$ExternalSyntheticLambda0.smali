.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/p$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/p$c$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/p$c$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/samsung/android/mcf/continuity/impl/p$c$$ExternalSyntheticLambda0;->f$2:D

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/p$c$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/p$c$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/samsung/android/mcf/continuity/impl/p$c$$ExternalSyntheticLambda0;->f$2:D

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/p$c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;ID)V

    return-void
.end method
