.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->$r8$lambda$DM2jogNw2zqn2FJTIr0Ka-JQdtY(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V

    return-void
.end method
