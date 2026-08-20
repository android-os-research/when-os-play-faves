.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CountryDetectorService$Receiver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

.field public mHandler:Landroid/os/Handler;

.field public mLocationBasedDetectorListener:Landroid/location/CountryListener;

.field public final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/CountryDetectorService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemReady:Z


# direct methods
.method public static synthetic $r8$lambda$GuhZH7A_aehxVbgO-4H_eNK2Ucw(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->lambda$setCountryListener$3(Landroid/location/CountryListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XFPMrB8atD3SrSeh4aH5xJ7jpAE(Lcom/android/server/CountryDetectorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/CountryDetectorService;->lambda$systemRunning$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cSY6CsDcSahJl-RhnYJdIQclGU4(Lcom/android/server/CountryDetectorService;Landroid/location/Country;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->lambda$initialize$1(Landroid/location/Country;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ovIJ1C5IPvLu1cVC9mnVGfLbHwg(Lcom/android/server/CountryDetectorService;Landroid/location/Country;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->lambda$initialize$2(Landroid/location/Country;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveListener(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 104
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 111
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/location/Country;)V
    .registers 2

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->notifyReceivers(Landroid/location/Country;)V

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/location/Country;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/Country;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setCountryListener$3(Landroid/location/CountryListener;)V
    .registers 2

    .line 209
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    invoke-virtual {p0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    return-void
.end method

.method private synthetic lambda$systemRunning$0()V
    .registers 2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return-void
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_8

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    return-void

    .line 130
    :cond_8
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final addListener(Landroid/location/ICountryListener;)V
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 148
    :try_start_3
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3a

    .line 150
    :try_start_8
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 151
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_38

    const-string p1, "CountryDetector"

    const-string v1, "The first listener is added"

    .line 153
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2e} :catch_2f
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    goto :goto_38

    :catch_2f
    move-exception p0

    :try_start_30
    const-string p1, "CountryDetector"

    const-string/jumbo v1, "linkToDeath failed:"

    .line 157
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_6
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/CountryDetectorBase;->detectCountry()Landroid/location/Country;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 242
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const-string p1, "CountryDetector"

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    return-void
.end method

.method public getCountryDetector()Lcom/android/server/location/countrydetector/CountryDetectorBase;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 214
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    return-object p0
.end method

.method public initialize()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const v1, 0x104030a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/CountryDetectorService;->loadCustomCountryDetectorIfAvailable(Ljava/lang/String;)Lcom/android/server/location/countrydetector/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 201
    :cond_15
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    if-nez v0, :cond_29

    const-string v0, "CountryDetector"

    const-string v1, "Using default country detector"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/countrydetector/CountryDetectorBase;

    .line 205
    :cond_29
    new-instance v0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CountryDetectorService;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    return-void
.end method

.method public isSystemReady()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 219
    iget-boolean p0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return p0
.end method

.method public final loadCustomCountryDetectorIfAvailable(Ljava/lang/String;)Lcom/android/server/location/countrydetector/CountryDetectorBase;
    .registers 7

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using custom country detector class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountryDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_16
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    aput-object p0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_38} :catch_39
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_38} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_38} :catch_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_38} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    const-string p0, "Could not instantiate the custom country detector class"

    .line 233
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_3f
    return-object p0
.end method

.method public notifyReceivers(Landroid/location/Country;)V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object p0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2d

    .line 176
    :try_start_19
    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2d

    goto :goto_d

    :catch_21
    move-exception v1

    :try_start_22
    const-string v2, "CountryDetector"

    const-string/jumbo v3, "notifyReceivers failed:"

    .line 179
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 182
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_c

    .line 143
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void

    .line 141
    :cond_c
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final removeListener(Landroid/os/IBinder;)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    const-string p0, "CountryDetector"

    const-string p1, "No listener is left"

    .line 167
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemRunning()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/CountryDetectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
