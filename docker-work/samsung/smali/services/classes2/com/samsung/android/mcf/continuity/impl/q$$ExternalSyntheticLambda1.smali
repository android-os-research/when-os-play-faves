.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/q;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/q;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/q;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/q$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/q;->$r8$lambda$rdcX2mMaz6FnALy3YtUk_b07ZCQ(Lcom/samsung/android/mcf/continuity/impl/q;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;)V

    return-void
.end method
