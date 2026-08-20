.class public Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssMeasurementListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Landroid/location/GnssMeasurementRequest;",
        "Landroid/location/IGnssMeasurementsListener;",
        "Landroid/location/GnssMeasurementRequest;",
        ">.Gnss",
        "ListenerRegistration;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;


# direct methods
.method public static synthetic $r8$lambda$7wBkZa2Myjg-BTiMZDgN5wkHuY4(Landroid/location/IGnssMeasurementsListener;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->lambda$onGnssListenerRegister$0(Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .registers 5

    .line 60
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method

.method public static synthetic lambda$onGnssListenerRegister$0(Landroid/location/IGnssMeasurementsListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 66
    invoke-interface {p0, v0}, Landroid/location/IGnssMeasurementsListener;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public onActive()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->-$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 74
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method

.method public onGnssListenerRegister()V
    .registers 2

    .line 66
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onInactive()V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->-$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method
