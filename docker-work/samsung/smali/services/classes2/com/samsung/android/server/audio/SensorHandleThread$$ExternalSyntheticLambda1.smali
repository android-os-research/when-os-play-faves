.class public final synthetic Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/SensorHandleThread;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/SensorHandleThread;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/SensorHandleThread;

    return-void
.end method


# virtual methods
.method public final onCurrentDeviceChanged(Ljava/util/Set;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/SensorHandleThread;

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/SensorHandleThread;->$r8$lambda$RLR6o1i34D_2gnM-pYqYLiEyJOs(Lcom/samsung/android/server/audio/SensorHandleThread;Ljava/util/Set;)V

    return-void
.end method
