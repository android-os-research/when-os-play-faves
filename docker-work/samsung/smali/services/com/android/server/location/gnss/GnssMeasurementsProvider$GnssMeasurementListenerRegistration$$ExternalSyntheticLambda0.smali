.class public final synthetic Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/location/IGnssMeasurementsListener;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->$r8$lambda$7wBkZa2Myjg-BTiMZDgN5wkHuY4(Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method
