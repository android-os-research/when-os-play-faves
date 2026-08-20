.class Landroid/hardware/radio/TunerAdapter;
.super Landroid/hardware/radio/RadioTuner;
.source "TunerAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BroadcastRadio.TunerAdapter"


# instance fields
.field private blacklist mBand:I

.field private final blacklist mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

.field private blacklist mIsClosed:Z

.field private blacklist mLegacyListFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLegacyListProxy:Landroid/hardware/radio/ProgramList;

.field private final blacklist mTuner:Landroid/hardware/radio/ITuner;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/radio/ITuner;Landroid/hardware/radio/TunerCallbackAdapter;I)V
    .registers 5
    .param p1, "tuner"    # Landroid/hardware/radio/ITuner;
    .param p2, "callback"    # Landroid/hardware/radio/TunerCallbackAdapter;
    .param p3, "band"    # I

    .line 45
    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ITuner;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    .line 47
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    .line 48
    iput p3, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    .line 49
    return-void
.end method

.method static synthetic blacklist lambda$getDynamicProgramList$2()V
    .registers 0

    .line 287
    return-void
.end method

.method static synthetic blacklist lambda$getProgramList$0()V
    .registers 0

    .line 247
    return-void
.end method


# virtual methods
.method public whitelist cancel()I
    .registers 4

    .line 183
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->cancel()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    .line 190
    nop

    .line 191
    const/4 v0, 0x0

    return v0

    .line 187
    :catch_a
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/16 v0, -0x20

    return v0

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t cancel"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist cancelAnnouncement()V
    .registers 4

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->cancelAnnouncement()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 200
    nop

    .line 201
    return-void

    .line 198
    :catch_7
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist close()V
    .registers 4

    .line 53
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    if-eqz v1, :cond_10

    .line 55
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Tuner is already closed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    monitor-exit v0

    return-void

    .line 58
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    .line 59
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_1d

    .line 60
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 63
    :cond_1d
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->close()V

    .line 64
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_32

    .line 66
    :try_start_23
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->close()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    .line 69
    goto :goto_31

    .line 67
    :catch_29
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Exception trying to close tuner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void

    .line 64
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public whitelist getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 5
    .param p1, "config"    # [Landroid/hardware/radio/RadioManager$BandConfig;

    .line 90
    if-eqz p1, :cond_1b

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 94
    :try_start_6
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 95
    return v1

    .line 96
    :catch_10
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/16 v1, -0x20

    return v1

    .line 91
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument must be an array of length 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;
    .registers 8
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 263
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    monitor-enter v0

    .line 264
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 265
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramList;->close()V

    .line 266
    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 268
    :cond_d
    iput-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    .line 270
    new-instance v1, Landroid/hardware/radio/ProgramList;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramList;-><init>()V

    .line 271
    .local v1, "list":Landroid/hardware/radio/ProgramList;
    iget-object v3, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    new-instance v4, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/TunerAdapter;)V

    invoke-virtual {v3, v1, v4}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_43

    .line 282
    :try_start_1e
    iget-object v3, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v3, p1}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1e .. :try_end_23} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_26
    .catchall {:try_start_1e .. :try_end_23} :catchall_43

    .line 289
    nop

    .line 291
    :try_start_24
    monitor-exit v0

    return-object v1

    .line 286
    :catch_26
    move-exception v3

    .line 287
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    new-instance v5, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, v2, v5}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    .line 288
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "service died"

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "filter":Landroid/hardware/radio/ProgramList$Filter;
    throw v2

    .line 283
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "filter":Landroid/hardware/radio/ProgramList$Filter;
    :catch_39
    move-exception v3

    .line 284
    .local v3, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v4, "BroadcastRadio.TunerAdapter"

    const-string v5, "Program list is not supported with this hardware"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit v0

    return-object v2

    .line 292
    .end local v1    # "list":Landroid/hardware/radio/ProgramList;
    .end local v3    # "ex":Ljava/lang/UnsupportedOperationException;
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public blacklist getMetadataImage(I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "id"    # I

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 223
    :catch_7
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getMute()Z
    .registers 4

    .line 119
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isMuted()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 120
    :catch_7
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->getParameters(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 353
    :catch_d
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
    .registers 5
    .param p1, "info"    # [Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 205
    const-string v0, "BroadcastRadio.TunerAdapter"

    if-eqz p1, :cond_1d

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    goto :goto_1d

    .line 210
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->getCurrentProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v1

    .line 211
    .local v1, "current":Landroid/hardware/radio/RadioManager$ProgramInfo;
    if-nez v1, :cond_19

    .line 212
    const-string v2, "Didn\'t get program info yet"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v0, -0x26

    return v0

    .line 215
    :cond_19
    const/4 v0, 0x0

    aput-object v1, p1, v0

    .line 216
    return v0

    .line 206
    .end local v1    # "current":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :cond_1d
    :goto_1d
    const-string v1, "The argument must be an array of length 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v0, -0x16

    return v0
.end method

.method public whitelist getProgramList(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 240
    .local p1, "vendorFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 242
    :cond_f
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Program list filter has changed, requesting new list"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Landroid/hardware/radio/ProgramList;

    invoke-direct {v1}, Landroid/hardware/radio/ProgramList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    .line 244
    iput-object p1, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListFilter:Ljava/util/Map;

    .line 246
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->clearLastCompleteList()V

    .line 247
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mLegacyListProxy:Landroid/hardware/radio/ProgramList;

    new-instance v3, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/radio/TunerAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/radio/TunerCallbackAdapter;->setProgramListObserver(Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_56

    .line 249
    :try_start_30
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    new-instance v2, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {v2, p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Landroid/hardware/radio/ITuner;->startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3a} :catch_4d
    .catchall {:try_start_30 .. :try_end_3a} :catchall_56

    .line 252
    nop

    .line 255
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v1}, Landroid/hardware/radio/TunerCallbackAdapter;->getLastCompleteList()Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    if-eqz v1, :cond_45

    .line 257
    monitor-exit v0

    return-object v1

    .line 256
    :cond_45
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Program list is not ready yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "vendorFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v2

    .line 250
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "vendorFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4d
    move-exception v1

    .line 251
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "service died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .end local p1    # "vendorFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v2

    .line 258
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/radio/TunerAdapter;
    .restart local p1    # "vendorFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3b .. :try_end_58} :catchall_56

    throw v1
.end method

.method public whitelist hasControl()Z
    .registers 3

    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->isClosed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_9

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 368
    :catch_9
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isAnalogForced()Z
    .registers 3

    .line 298
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/hardware/radio/TunerAdapter;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    .line 299
    :catch_6
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isAntennaConnected()Z
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mCallback:Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-virtual {v0}, Landroid/hardware/radio/TunerCallbackAdapter;->isAntennaConnected()Z

    move-result v0

    return v0
.end method

.method public whitelist isConfigFlagSet(I)Z
    .registers 5
    .param p1, "flag"    # I

    .line 325
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->isConfigFlagSet(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 326
    :catch_7
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isConfigFlagSupported(I)Z
    .registers 5
    .param p1, "flag"    # I

    .line 316
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->isConfigFlagSupported(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 317
    :catch_7
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic blacklist lambda$getDynamicProgramList$1$android-hardware-radio-TunerAdapter()V
    .registers 4

    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->stopProgramListUpdates()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    .line 276
    :catch_6
    move-exception v0

    .line 277
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "BroadcastRadio.TunerAdapter"

    const-string v2, "Couldn\'t stop program list updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 274
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 278
    :goto_10
    nop

    .line 279
    :goto_11
    return-void
.end method

.method public whitelist scan(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 143
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->scan(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 150
    nop

    .line 151
    return v2

    .line 147
    :catch_f
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/16 v0, -0x20

    return v0

    .line 144
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t scan"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist setAnalogForced(Z)V
    .registers 4
    .param p1, "isForced"    # Z

    .line 307
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/hardware/radio/TunerAdapter;->setConfigFlag(IZ)V
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_4} :catch_6

    .line 310
    nop

    .line 311
    return-void

    .line 308
    :catch_6
    move-exception v0

    .line 309
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setConfigFlag(IZ)V
    .registers 6
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/ITuner;->setConfigFlag(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 337
    nop

    .line 338
    return-void

    .line 335
    :catch_7
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 6
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .line 74
    const-string v0, "BroadcastRadio.TunerAdapter"

    const/16 v1, -0x16

    if-nez p1, :cond_7

    return v1

    .line 76
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v2, p1}, Landroid/hardware/radio/ITuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 77
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_12} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_14

    .line 78
    const/4 v0, 0x0

    return v0

    .line 82
    :catch_14
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/16 v0, -0x20

    return v0

    .line 79
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1d
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Can\'t set configuration"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return v1
.end method

.method public whitelist setMute(Z)I
    .registers 5
    .param p1, "mute"    # Z

    .line 105
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->setMuted(Z)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_7} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    .line 112
    nop

    .line 113
    const/4 v0, 0x0

    return v0

    .line 109
    :catch_a
    move-exception v1

    .line 110
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/16 v0, -0x20

    return v0

    .line 106
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t set muted"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 344
    :catch_d
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist startBackgroundScan()Z
    .registers 4

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0}, Landroid/hardware/radio/ITuner;->startBackgroundScan()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 232
    :catch_7
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist step(IZ)I
    .registers 7
    .param p1, "direction"    # I
    .param p2, "skipSubChannel"    # Z

    .line 129
    const-string v0, "BroadcastRadio.TunerAdapter"

    :try_start_2
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_9

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-interface {v1, v3, p2}, Landroid/hardware/radio/ITuner;->step(ZZ)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_d} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    .line 136
    nop

    .line 137
    return v2

    .line 133
    :catch_f
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "service died"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/16 v0, -0x20

    return v0

    .line 130
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Can\'t step"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist tune(II)I
    .registers 7
    .param p1, "channel"    # I
    .param p2, "subChannel"    # I

    .line 157
    const-string v0, "Can\'t tune"

    const-string v1, "BroadcastRadio.TunerAdapter"

    :try_start_4
    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    iget v3, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    invoke-static {v3, p1, p2}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_f} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_f} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    .line 167
    nop

    .line 168
    const/4 v0, 0x0

    return v0

    .line 164
    :catch_12
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/16 v1, -0x20

    return v1

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/16 v0, -0x16

    return v0

    .line 158
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_22
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/16 v0, -0x26

    return v0
.end method

.method public whitelist tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 177
    nop

    .line 178
    return-void

    .line 175
    :catch_7
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
