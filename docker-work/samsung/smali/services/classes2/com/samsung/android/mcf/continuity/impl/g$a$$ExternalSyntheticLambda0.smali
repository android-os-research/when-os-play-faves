.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/impl/g$a;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method
