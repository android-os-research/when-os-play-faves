.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/location/util/identity/CallerIdentity;


# direct methods
.method public synthetic constructor <init>(Landroid/location/util/identity/CallerIdentity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$0:Landroid/location/util/identity/CallerIdentity;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;->f$0:Landroid/location/util/identity/CallerIdentity;

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->$r8$lambda$zaqnFTAVGfnC-8Z9pVrqEeV3UeM(Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method
