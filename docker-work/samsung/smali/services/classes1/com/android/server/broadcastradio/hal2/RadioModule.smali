.class public Lcom/android/server/broadcastradio/hal2/RadioModule;
.super Ljava/lang/Object;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio2Srv.module"


# instance fields
.field public final mAidlTunerSessions:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/broadcastradio/hal2/TunerSession;",
            ">;"
        }
    .end annotation
.end field

.field public mAntennaConnected:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

.field public mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field public final mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

.field public mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2g9xQ-N8gxSF-AA45wXWEtO4tdc(Lcom/android/server/broadcastradio/hal2/RadioModule;I)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$getImage$6(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B8uBvcxp9XYRRUVB40Zga-Zsxf8(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dt0QOI0PALbF2cOogUb_9GtA72c(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FBoyBydoZync5i6aWIP9834Rrwg(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$lockAndFireLater$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QGJ1KnE6jA17lltX4UvEaWTDlJE(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$tryLoadingModule$0(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qvlTWy0_2a99-L5MlRpee0Fz9hk(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$addAnnouncementListener$5(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tQPlcipFggD1L1JisWY7Y1ukenc(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lambda$fanoutAidlCallback$4(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAidlTunerSessions(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentProgramInfo(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgramInfoCache(Lcom/android/server/broadcastradio/hal2/RadioModule;)Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAntennaConnected(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentProgramInfo(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlockAndFireLater(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Ljava/lang/Object;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 71
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 74
    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-direct {v1, v0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 77
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 81
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    .line 136
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 138
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 139
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$addAnnouncementListener$5(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .registers 4

    .line 385
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 386
    iput-object p3, p1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$fanoutAidlCallback$4(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 2

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method private synthetic lambda$getImage$6(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getImage(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$lockAndFireLater$3(Ljava/lang/Runnable;)V
    .registers 2

    .line 329
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 330
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 331
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public static synthetic lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .registers 4

    const-string/jumbo v0, "openSession"

    .line 178
    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 179
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$tryLoadingModule$0(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .registers 3

    if-nez p1, :cond_4

    .line 150
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static synthetic lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V
    .registers 3

    if-nez p1, :cond_4

    .line 155
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;Ljava/lang/Object;)Lcom/android/server/broadcastradio/hal2/RadioModule;
    .registers 8

    const/4 v0, 0x0

    .line 145
    :try_start_1
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    .line 148
    :cond_8
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    const/4 v3, 0x0

    .line 149
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 153
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v3}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 154
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 159
    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object v4

    iget-object v2, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    iget-object v3, v3, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 158
    invoke-static {p0, p1, v4, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert;->propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p0

    .line 161
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {v2, v1, p0, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;Ljava/lang/Object;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_38} :catch_39

    return-object v2

    :catch_39
    move-exception p0

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load module "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BcRadio2Srv.module"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    int-to-byte v3, v3

    .line 370
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 373
    :cond_16
    new-instance p1, Landroid/util/MutableInt;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 374
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 375
    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V

    .line 383
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 384
    :try_start_29
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v3, v0, v2, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 388
    monitor-exit p2
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_41

    const-string p2, "addAnnouncementListener"

    .line 389
    iget p1, p1, Landroid/util/MutableInt;->value:I

    invoke-static {p2, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 391
    new-instance p1, Lcom/android/server/broadcastradio/hal2/RadioModule$3;

    invoke-direct {p1, p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$3;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    return-object p1

    :catchall_41
    move-exception p0

    .line 388
    :try_start_42
    monitor-exit p2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;
    .registers 8

    .line 222
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v3, v0

    move-object v4, v3

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 224
    invoke-virtual {v5}, Lcom/android/server/broadcastradio/hal2/TunerSession;->getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v5

    if-nez v5, :cond_1e

    goto :goto_b

    :cond_1e
    if-nez v3, :cond_3b

    .line 230
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 231
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    .line 233
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v2

    goto :goto_b

    .line 236
    :cond_3b
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_56

    .line 237
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 238
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_56

    .line 240
    :cond_4f
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_71

    .line 245
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 246
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_71

    .line 248
    :cond_6a
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_71
    :goto_71
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v6

    or-int/2addr v1, v6

    .line 253
    invoke-virtual {v5}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result v5

    and-int/2addr v2, v5

    goto :goto_b

    :cond_7c
    if-nez v3, :cond_7f

    goto :goto_84

    .line 256
    :cond_7f
    new-instance v0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    :goto_84
    return-object v0
.end method

.method public closeSessions(Ljava/lang/Integer;)V
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 207
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 208
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 209
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_22

    const/4 p0, 0x0

    :goto_17
    if-ge p0, v1, :cond_21

    .line 210
    aget-object v0, v2, p0

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :cond_21
    return-void

    :catchall_22
    move-exception p0

    .line 209
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 3

    .line 341
    new-instance v0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->lockAndFireLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V
    .registers 7

    const-string v0, "BcRadio2Srv.module"

    .line 346
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 348
    :try_start_15
    iget-object v4, v3, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;->run(Landroid/hardware/radio/ITunerCallback;)V
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_15 .. :try_end_1a} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_9

    :catch_1b
    move-exception v3

    const-string v4, "Failed to invoke ITunerCallback: "

    .line 357
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_22
    const-string v4, "Removing dead TunerSession"

    .line 351
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2e

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    :cond_2e
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_32
    if-eqz v2, :cond_43

    .line 362
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    .line 361
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    :cond_43
    return-void
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 7

    if-eqz p1, :cond_3a

    .line 407
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_5
    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 409
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    move v3, v2

    .line 410
    :goto_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 411
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 413
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_37

    if-nez p1, :cond_32

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_32
    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catchall_37
    move-exception p0

    .line 413
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0

    .line 404
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image ID is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    return-object p0
.end method

.method public final lockAndFireLater(Ljava/lang/Runnable;)V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/TunerSession;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 307
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 263
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final onTunerSessionProgramListFilterChangedLocked(Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 5

    .line 268
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->buildUnionOfTunerSessionFiltersLocked()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object v0

    const-string v1, "BcRadio2Srv.module"

    if-nez v0, :cond_1e

    .line 271
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 276
    :try_start_10
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->stopProgramListUpdates()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    move-exception p0

    const-string/jumbo p1, "mHalTunerSession.stopProgramListUpdates() failed: "

    .line 278
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void

    .line 285
    :cond_1e
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    invoke-virtual {v0, v2}, Landroid/hardware/radio/ProgramList$Filter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz p1, :cond_2d

    .line 287
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;)V

    :cond_2d
    return-void

    .line 294
    :cond_2e
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mUnionOfAidlProgramFilters:Landroid/hardware/radio/ProgramList$Filter;

    .line 296
    :try_start_30
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result p0

    const-string/jumbo p1, "startProgramListUpdates"

    .line 298
    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_40} :catch_41

    goto :goto_48

    :catch_41
    move-exception p0

    const-string/jumbo p1, "mHalTunerSession.startProgramListUpdates() failed: "

    .line 300
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return-void
.end method

.method public final varargs onTunerSessionsClosedLocked([Lcom/android/server/broadcastradio/hal2/TunerSession;)V
    .registers 6

    .line 311
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 312
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p1, 0x0

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-eqz v0, :cond_34

    const-string v0, "BcRadio2Srv.module"

    const-string v1, "closing HAL tuner session"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_start_25
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->close()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_32

    :catch_2b
    move-exception v1

    const-string/jumbo v2, "mHalTunerSession.close() failed: "

    .line 320
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    :goto_32
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    :cond_34
    return-void
.end method

.method public openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez v1, :cond_23

    .line 176
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 177
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerCallback:Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v2, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 181
    iget-object v1, v1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 183
    :cond_23
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mHalTunerSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/server/broadcastradio/hal2/TunerSession;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;Ljava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAidlTunerSessions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    if-eqz v2, :cond_3c

    .line 190
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 192
    :cond_3c
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-eqz p0, :cond_43

    .line 193
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 196
    :cond_43
    monitor-exit v0

    return-object v1

    :catchall_45
    move-exception p0

    .line 197
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p0
.end method
