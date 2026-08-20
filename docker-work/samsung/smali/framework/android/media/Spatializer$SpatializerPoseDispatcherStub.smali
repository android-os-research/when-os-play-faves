.class final Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
.super Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;
.source "Spatializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerPoseDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/Spatializer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/Spatializer;)V
    .registers 2

    .line 1042
    iput-object p1, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerPoseDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchPoseChanged([F)V
    .registers 6
    .param p1, "pose"    # [F

    .line 1049
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmPoseListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1050
    :try_start_7
    iget-object v1, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v1}, Landroid/media/Spatializer;->-$$Nest$fgetmPoseListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;

    move-result-object v1

    .line 1051
    .local v1, "listener":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;>;"
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_31

    .line 1052
    if-nez v1, :cond_11

    .line 1053
    return-void

    .line 1055
    :cond_11
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 1056
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_15
    iget-object v2, v1, Landroid/media/CallbackUtil$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Landroid/media/Spatializer$SpatializerPoseDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerPoseDispatcherStub;Landroid/media/CallbackUtil$ListenerInfo;[F)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_25

    .line 1058
    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 1059
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_24
    return-void

    .line 1055
    .restart local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_25
    move-exception v2

    if-eqz v0, :cond_30

    :try_start_28
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw v2

    .line 1051
    .end local v0    # "ignored":Landroid/media/permission/SafeCloseable;
    .end local v1    # "listener":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;>;"
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method synthetic blacklist lambda$dispatchPoseChanged$0$android-media-Spatializer$SpatializerPoseDispatcherStub(Landroid/media/CallbackUtil$ListenerInfo;[F)V
    .registers 5
    .param p1, "listener"    # Landroid/media/CallbackUtil$ListenerInfo;
    .param p2, "pose"    # [F

    .line 1056
    iget-object v0, p1, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    check-cast v0, Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;

    iget-object v1, p0, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;->this$0:Landroid/media/Spatializer;

    .line 1057
    invoke-interface {v0, v1, p2}, Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;->onHeadToSoundstagePoseUpdated(Landroid/media/Spatializer;[F)V

    .line 1056
    return-void
.end method
