.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/g;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/g;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/g;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/impl/g;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/g;->$r8$lambda$dMfpvonehAsFBue-fhtUlOJI0yM(Lcom/samsung/android/mcf/continuity/impl/g;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    return-void
.end method
