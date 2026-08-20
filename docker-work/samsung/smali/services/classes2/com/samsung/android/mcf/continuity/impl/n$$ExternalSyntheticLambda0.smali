.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/n$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/n;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/n;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/n$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/n;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/n$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/n$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/n;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/n$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/n;->$r8$lambda$vz_g8vP2Wy2VvttyTT-QUJTB1Gg(Lcom/samsung/android/mcf/continuity/impl/n;Ljava/util/function/Consumer;)V

    return-void
.end method
