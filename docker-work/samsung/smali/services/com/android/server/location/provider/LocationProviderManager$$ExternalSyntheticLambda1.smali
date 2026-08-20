.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic f$1:Landroid/location/provider/ProviderRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;->f$1:Landroid/location/provider/ProviderRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;->f$1:Landroid/location/provider/ProviderRequest;

    invoke-static {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->$r8$lambda$iEZNuv75erhlabky0qpaexP4XKA(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    return-void
.end method
