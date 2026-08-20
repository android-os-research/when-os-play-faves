.class public final synthetic Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    check-cast p1, Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;->$r8$lambda$pGxtDpooimbzURoTivbeDe-1huc(Lcom/android/server/knox/dar/ddar/proxy/DualDARPlatformProxy;Landroid/os/Bundle;Lcom/samsung/android/knox/ddar/IDualDARPolicy;)V

    return-void
.end method
