.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

.field public final synthetic f$1:Landroid/location/provider/ProviderRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Landroid/location/provider/ProviderRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$1:Landroid/location/provider/ProviderRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda0;->f$1:Landroid/location/provider/ProviderRequest;

    invoke-static {v0, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->$r8$lambda$GLH1DNNADjwa-B3wIHoxrYOY54U(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;Landroid/location/provider/ProviderRequest;)V

    return-void
.end method
