.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/o;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o;ZLcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    iput-boolean p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/mcf/continuity/impl/o;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;->f$1:Z

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$$ExternalSyntheticLambda15;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/o;->$r8$lambda$MRSAVZE5JDLXmJIeIXxug_ziZG0(Lcom/samsung/android/mcf/continuity/impl/o;ZLcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)V

    return-void
.end method
