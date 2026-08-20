.class public Lcom/samsung/android/mcf/continuity/impl/g$a;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/g;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/g;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/g;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g$a;->b:Lcom/samsung/android/mcf/continuity/impl/g;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/g$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;->onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    return-void
.end method


# virtual methods
.method public onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .registers 4
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g$a;->a:Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/impl/g$a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
