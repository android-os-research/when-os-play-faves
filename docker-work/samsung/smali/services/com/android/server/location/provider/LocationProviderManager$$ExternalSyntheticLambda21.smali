.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic f$1:[Landroid/location/LocationManagerInternal$ProviderEnabledListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$1:[Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    iput p3, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$1:[Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/location/provider/LocationProviderManager;->$r8$lambda$fGZnX5lK5rYY0AGlEt3QAvn8lDI(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    return-void
.end method
