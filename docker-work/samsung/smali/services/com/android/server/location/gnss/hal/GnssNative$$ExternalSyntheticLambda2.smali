.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

.field public final synthetic f$1:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$1:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;->f$1:Landroid/location/GnssMeasurementsEvent;

    invoke-static {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->$r8$lambda$OGaF1kkkbW9yvGkyVM-bile2imI(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method
