.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/l;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/l;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/l;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/l;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/l$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/l;->$r8$lambda$3GApVAZ1lCIsh_8NksiPW5x5Nwo(Lcom/samsung/android/mcf/continuity/impl/l;II)V

    return-void
.end method
