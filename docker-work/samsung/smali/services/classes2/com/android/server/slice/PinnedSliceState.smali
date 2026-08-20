.class public Lcom/android/server/slice/PinnedSliceState;
.super Ljava/lang/Object;
.source "PinnedSliceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
    }
.end annotation


# static fields
.field public static final SLICE_TIMEOUT:J = 0x1388L

.field public static final TAG:Ljava/lang/String; = "PinnedSliceState"


# instance fields
.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/slice/PinnedSliceState$ListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPinnedPkgs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPkg:Ljava/lang/String;

.field public final mService:Lcom/android/server/slice/SliceManagerService;

.field public mSlicePinned:Z

.field public mSupportedSpecs:[Landroid/app/slice/SliceSpec;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$8PpN4rPvmAFHBo8-AMOxIfBPgPw(I)[Landroid/app/slice/SliceSpec;
    .registers 1

    invoke-static {p0}, Lcom/android/server/slice/PinnedSliceState;->lambda$mergeSpecs$2(I)[Landroid/app/slice/SliceSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ERd_d_JS6RbheGBSXebEeuMrqiQ(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/PinnedSliceState;->lambda$mergeSpecs$0([Landroid/app/slice/SliceSpec;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GPHzsVzQrFovXYdDpqangr_EisQ(Lcom/android/server/slice/PinnedSliceState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->handleRecheckListeners()V

    return-void
.end method

.method public static synthetic $r8$lambda$MPBILTkBeFQUvCUH0InA99pZsdg(Landroid/app/slice/SliceSpec;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/slice/PinnedSliceState;->lambda$mergeSpecs$1(Landroid/app/slice/SliceSpec;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MwobWwKdlIfDl3rSs94MZQb8xJI(Lcom/android/server/slice/PinnedSliceState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->handleSendPinned()V

    return-void
.end method

.method public static synthetic $r8$lambda$SQzZQ-4v_riZaVmzcSSOK1h8Fsw(Lcom/android/server/slice/PinnedSliceState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->handleSendUnpinned()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 57
    new-instance v0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 61
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 62
    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 63
    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/android/server/slice/SliceManagerService;->getLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$mergeSpecs$0([Landroid/app/slice/SliceSpec;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .registers 4

    .line 82
    invoke-virtual {p2}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/slice/PinnedSliceState;->findSpec([Landroid/app/slice/SliceSpec;Ljava/lang/String;)Landroid/app/slice/SliceSpec;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_c
    invoke-virtual {p0}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result p1

    invoke-virtual {p2}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v0

    if-ge p1, v0, :cond_17

    return-object p0

    :cond_17
    return-object p2
.end method

.method public static synthetic lambda$mergeSpecs$1(Landroid/app/slice/SliceSpec;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static synthetic lambda$mergeSpecs$2(I)[Landroid/app/slice/SliceSpec;
    .registers 1

    .line 88
    new-array p0, p0, [Landroid/app/slice/SliceSpec;

    return-object p0
.end method


# virtual methods
.method public final checkSelfRemove()V
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    if-nez v0, :cond_d

    .line 167
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V

    :cond_d
    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    return-void
.end method

.method public final findSpec([Landroid/app/slice/SliceSpec;Ljava/lang/String;)Landroid/app/slice/SliceSpec;
    .registers 6

    .line 94
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_14

    aget-object v1, p1, v0

    .line 95
    invoke-virtual {v1}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClient()Landroid/content/ContentProviderClient;
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 158
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    const-wide/16 v0, 0x1388

    .line 160
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getSpecs()[Landroid/app/slice/SliceSpec;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final handleRecheckListeners()V
    .registers 4

    .line 172
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_a
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_2e

    .line 175
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    .line 176
    invoke-static {v2}, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->-$$Nest$fgettoken(Lcom/android/server/slice/PinnedSliceState$ListenerInfo;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 177
    iget-object v2, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 180
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->checkSelfRemove()V

    .line 181
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final handleSendPinned()V
    .registers 6

    .line 185
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_c

    if-eqz v0, :cond_b

    .line 194
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_b
    return-void

    .line 187
    :cond_c
    :try_start_c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "slice_uri"

    .line 188
    iget-object v3, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_3e

    :try_start_19
    const-string/jumbo v2, "pin"

    const/4 v3, 0x0

    .line 190
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_3e

    goto :goto_3a

    :catch_21
    move-exception v1

    :try_start_22
    const-string v2, "PinnedSliceState"

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_3e

    .line 194
    :goto_3a
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    return-void

    :catchall_3e
    move-exception p0

    .line 185
    :try_start_3f
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
.end method

.method public final handleSendUnpinned()V
    .registers 6

    .line 198
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->getClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_c

    if-eqz v0, :cond_b

    .line 207
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_b
    return-void

    .line 200
    :cond_c
    :try_start_c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "slice_uri"

    .line 201
    iget-object v3, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_3e

    :try_start_19
    const-string/jumbo v2, "unpin"

    const/4 v3, 0x0

    .line 203
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_3e

    goto :goto_3a

    :catch_21
    move-exception v1

    :try_start_22
    const-string v2, "PinnedSliceState"

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_3e

    .line 207
    :goto_3a
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    return-void

    :catchall_3e
    move-exception p0

    .line 198
    :try_start_3f
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
.end method

.method public hasPinOrListener()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 153
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public isListening()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 146
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public mergeSpecs([Landroid/app/slice/SliceSpec;)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    if-nez v1, :cond_a

    .line 78
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    goto :goto_31

    .line 80
    :cond_a
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda2;-><init>()V

    .line 88
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/app/slice/SliceSpec;

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    .line 90
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .registers 14

    .line 123
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    new-instance v9, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;

    const/4 v6, 0x1

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;-><init>(Lcom/android/server/slice/PinnedSliceState;Landroid/os/IBinder;Ljava/lang/String;ZII)V

    .line 124
    invoke-virtual {v1, p3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_29

    .line 127
    :try_start_1a
    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p3, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_29

    .line 130
    :catch_20
    :try_start_20
    invoke-virtual {p0, p2}, Lcom/android/server/slice/PinnedSliceState;->mergeSpecs([Landroid/app/slice/SliceSpec;)V

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/slice/PinnedSliceState;->setSlicePinned(Z)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final setSlicePinned(Z)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    if-ne v1, p1, :cond_9

    monitor-exit v0

    return-void

    .line 113
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    if-eqz p1, :cond_1c

    .line 115
    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p1}, Lcom/android/server/slice/SliceManagerService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 117
    :cond_1c
    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p1}, Lcom/android/server/slice/SliceManagerService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public unpin(Ljava/lang/String;Landroid/os/IBinder;)Z
    .registers 5

    .line 136
    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 137
    :try_start_3
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 138
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_16

    .line 140
    invoke-virtual {p0}, Lcom/android/server/slice/PinnedSliceState;->hasPinOrListener()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_16
    move-exception p0

    .line 139
    :try_start_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method
