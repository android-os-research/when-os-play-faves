.class public Lcom/android/server/location/provider/MockableLocationProvider;
.super Lcom/android/server/location/provider/AbstractLocationProvider;
.source "MockableLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;
    }
.end annotation


# instance fields
.field public mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOwnerLock"
        }
    .end annotation
.end field

.field public final mOwnerLock:Ljava/lang/Object;

.field public mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOwnerLock"
        }
    .end annotation
.end field

.field public mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOwnerLock"
        }
    .end annotation
.end field

.field public mRequest:Landroid/location/provider/ProviderRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOwnerLock"
        }
    .end annotation
.end field

.field public mStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOwnerLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$T5QgKuhRPr5-_Da8uSfZWytIGpw(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->lambda$setProviderLocked$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProvider(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5

    .line 77
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/location/util/identity/CallerIdentity;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 78
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 79
    sget-object p1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method

.method public static synthetic lambda$setProviderLocked$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 2

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 287
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_e
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    .line 294
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_85

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz v0, :cond_46

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "identity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    :cond_46
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra attribution tags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    :cond_64
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    if-eqz v0, :cond_7f

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "properties="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7f
    if-eqz v1, :cond_84

    .line 310
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_84
    return-void

    :catchall_85
    move-exception p0

    .line 294
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public getCurrentRequest()Landroid/location/provider/ProviderRequest;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 209
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getProvider()Lcom/android/server/location/provider/AbstractLocationProvider;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isMock()Z
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-ne p0, v1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 274
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz p0, :cond_e

    .line 276
    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderController;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 278
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onFlush(Ljava/lang/Runnable;)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz p0, :cond_f

    .line 265
    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/location/provider/LocationProviderController;->flush(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 267
    :cond_f
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 269
    :goto_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    if-ne p1, v1, :cond_9

    .line 250
    monitor-exit v0

    return-void

    .line 253
    :cond_9
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 255
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz p0, :cond_16

    .line 256
    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 258
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onStart()V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 217
    iput-boolean v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    .line 219
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_30

    .line 220
    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    .line 221
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 222
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-interface {v1, p0}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 225
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public onStop()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v1, 0x0

    .line 233
    iput-boolean v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    .line 235
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v1, :cond_2d

    .line 236
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, v2}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 237
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    sget-object v2, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-interface {v1, v2}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 239
    :cond_24
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    .line 242
    :cond_2d
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 243
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-ne v1, p1, :cond_9

    .line 120
    monitor-exit v0

    return-void

    .line 123
    :cond_9
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    if-eqz p1, :cond_11

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_16

    .line 127
    :cond_11
    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 129
    :goto_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setMockProviderAllowed(Z)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 189
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockLocationProvider;->setProviderAllowed(Z)V

    .line 190
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 199
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/provider/MockLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockLocationProvider;->setProviderLocation(Landroid/location/Location;)V

    .line 200
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOwnerLock"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-ne v0, p1, :cond_5

    return-void

    .line 139
    :cond_5
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz v0, :cond_2b

    .line 144
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/location/provider/LocationProviderController;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 146
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-interface {p1, v1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 147
    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    .line 152
    :cond_2b
    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eqz p1, :cond_84

    .line 153
    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    invoke-interface {p1, v0}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p1

    .line 154
    iget-boolean v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mStarted:Z

    if-eqz v0, :cond_63

    .line 155
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/provider/LocationProviderController;->isStarted()Z

    move-result v0

    if-nez v0, :cond_57

    .line 156
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    .line 158
    :cond_57
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    invoke-interface {v0, v1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_86

    .line 160
    :cond_63
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/provider/LocationProviderController;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 161
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-interface {v0, v1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    goto :goto_86

    .line 166
    :cond_84
    sget-object p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 169
    :cond_86
    :goto_86
    new-instance v0, Lcom/android/server/location/provider/MockableLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/MockableLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-ne v1, p1, :cond_9

    .line 101
    monitor-exit v0

    return-void

    .line 104
    :cond_9
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result p1

    if-nez p1, :cond_16

    .line 106
    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 108
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method
