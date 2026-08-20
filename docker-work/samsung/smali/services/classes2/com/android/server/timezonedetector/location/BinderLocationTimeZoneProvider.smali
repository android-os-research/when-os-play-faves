.class public Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;
.super Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
.source "BinderLocationTimeZoneProvider.java"


# instance fields
.field public final mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleOnProviderBound(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->handleOnProviderBound()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;Lcom/android/server/timezonedetector/location/ThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;Z)V
    .registers 12

    .line 50
    new-instance v4, Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;

    invoke-direct {v4}, Lcom/android/server/timezonedetector/location/ZoneInfoDbTimeZoneProviderEventPreProcessor;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;Lcom/android/server/timezonedetector/location/ThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;Z)V

    .line 52
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "{BinderLocationTimeZoneProvider}"

    .line 133
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProviderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "State history:"

    .line 138
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 140
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 141
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Proxy details:"

    .line 143
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 145
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 147
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final handleOnProviderBound()V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 84
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 86
    iget v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v2, :pswitch_data_9e

    .line 108
    new-instance p0, Ljava/lang/IllegalStateException;

    goto :goto_85

    .line 101
    :pswitch_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnProviderBound, mProviderName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentState="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": No state change required, provider is terminated."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    goto :goto_83

    .line 95
    :pswitch_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnProviderBound mProviderName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentState="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Provider is stopped."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    goto :goto_83

    .line 90
    :pswitch_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnProviderBound mProviderName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentState="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Provider is started."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 111
    :goto_83
    monitor-exit v0

    return-void

    .line 108
    :goto_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_9a
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_8 .. :try_end_9c} :catchall_9a

    throw p0

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_3c
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->destroy()V

    return-void
.end method

.method public onInitialize()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    new-instance v1, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;-><init>(Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$Listener;)V

    return-void
.end method

.method public onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V
    .registers 3

    .line 119
    invoke-static {p1, p2}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->createStartUpdatesRequest(Ljava/time/Duration;Ljava/time/Duration;)Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    move-result-object p1

    .line 121
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V

    return-void
.end method

.method public onStopUpdates()V
    .registers 2

    .line 126
    invoke-static {}, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->createStopUpdatesRequest()Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    move-result-object v0

    .line 127
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;->setRequest(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinderLocationTimeZoneProvider{mProviderName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mProxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;->mProxy:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_31
    move-exception p0

    .line 158
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method
