.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/p;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/p;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/p;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/p;->$r8$lambda$xnAcAXiYjDOhuH-40y03DDi6ViE(Lcom/samsung/android/mcf/continuity/impl/p;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method
