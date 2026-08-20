.class public final Lcom/android/location/provider/ActivityRecognitionProvider;
.super Ljava/lang/Object;
.source "ActivityRecognitionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;,
        Lcom/android/location/provider/ActivityRecognitionProvider$Sink;
    }
.end annotation


# static fields
.field public static final ACTIVITY_IN_VEHICLE:Ljava/lang/String; = "android.activity_recognition.in_vehicle"

.field public static final ACTIVITY_ON_BICYCLE:Ljava/lang/String; = "android.activity_recognition.on_bicycle"

.field public static final ACTIVITY_RUNNING:Ljava/lang/String; = "android.activity_recognition.running"

.field public static final ACTIVITY_STILL:Ljava/lang/String; = "android.activity_recognition.still"

.field public static final ACTIVITY_TILTING:Ljava/lang/String; = "android.activity_recognition.tilting"

.field public static final ACTIVITY_WALKING:Ljava/lang/String; = "android.activity_recognition.walking"

.field public static final EVENT_TYPE_ENTER:I = 0x1

.field public static final EVENT_TYPE_EXIT:I = 0x2

.field public static final EVENT_TYPE_FLUSH_COMPLETE:I


# instance fields
.field private final mService:Landroid/hardware/location/IActivityRecognitionHardware;

.field private final mSinkSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/location/provider/ActivityRecognitionProvider$Sink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSinkSet(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .registers 4
    .param p1, "service"    # Landroid/hardware/location/IActivityRecognitionHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    .line 63
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    .line 65
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;-><init>(Lcom/android/location/provider/ActivityRecognitionProvider;Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport-IA;)V

    invoke-interface {p1, v0}, Landroid/hardware/location/IActivityRecognitionHardware;->registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IActivityRecognitionHardware;->disableActivityEvent(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .registers 6
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/location/IActivityRecognitionHardware;->enableActivityEvent(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public flush()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0}, Landroid/hardware/location/IActivityRecognitionHardware;->flush()Z

    move-result v0

    return v0
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0}, Landroid/hardware/location/IActivityRecognitionHardware;->getSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .registers 3
    .param p1, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IActivityRecognitionHardware;->isActivitySupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerSink(Lcom/android/location/provider/ActivityRecognitionProvider$Sink;)V
    .registers 4
    .param p1, "sink"    # Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 79
    :try_start_6
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public unregisterSink(Lcom/android/location/provider/ActivityRecognitionProvider$Sink;)V
    .registers 4
    .param p1, "sink"    # Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    .line 86
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 88
    :try_start_6
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method
