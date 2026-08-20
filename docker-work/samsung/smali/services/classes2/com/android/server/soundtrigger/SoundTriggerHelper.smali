.class public Lcom/android/server/soundtrigger/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;,
        Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;
    }
.end annotation


# static fields
.field public static final CALL_INACTIVE_MSG_DELAY_MS:I = 0x3e8

.field public static final DBG:Z = false

.field public static final INVALID_VALUE:I = -0x80000000

.field public static final MSG_CALL_STATE_CHANGED:I = 0x0

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field public mCallActive:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyphraseUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mModelDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;",
            ">;"
        }
    .end annotation
.end field

.field public mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field public final mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

.field public final mModuleProvider:Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;

.field public final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

.field public mRecognitionRequested:Z

.field public mSoundTriggerPowerSaveMode:I

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monCallStateChangedLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPowerSaveModeChangedLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onPowerSaveModeChangedLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;)V
    .registers 6

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 109
    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mSoundTriggerPowerSaveMode:I

    .line 113
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;

    .line 151
    invoke-interface {p2, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;->listModuleProperties(Ljava/util/ArrayList;)I

    move-result p2

    .line 152
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 153
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "power"

    .line 154
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 155
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    .line 156
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    if-nez p2, :cond_55

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_55

    .line 163
    :cond_4c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_7b

    .line 158
    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listModules status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", # of modules="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SoundTriggerHelper"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 160
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 166
    :goto_7b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-nez p2, :cond_85

    .line 168
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    .line 170
    :cond_85
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v0, p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz p2, :cond_96

    .line 172
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mHandler:Landroid/os/Handler;

    goto :goto_98

    .line 189
    :cond_96
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mHandler:Landroid/os/Handler;

    :goto_98
    return-void
.end method


# virtual methods
.method public final cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .registers 4

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result p0

    if-eqz p0, :cond_21

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to stop or unload previous model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundTriggerHelper"

    .line 285
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return p0
.end method

.method public final computeRecognitionRequestedLocked()Z
    .registers 4

    .line 1447
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_a

    goto :goto_2d

    .line 1451
    :cond_a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1452
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    .line 1453
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    return v0

    .line 1457
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    return v1

    .line 1448
    :cond_2d
    :goto_2d
    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    return v1
.end method

.method public final createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 5

    .line 1282
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createKeyphraseModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p2

    .line 1286
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public detach()V
    .registers 5

    .line 1156
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1157
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1158
    invoke-virtual {p0, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_d

    .line 1160
    :cond_1e
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 1162
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_2f

    .line 1163
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 1164
    iput-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 1166
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1099
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    const-string p3, "  module properties="

    .line 1100
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    iget-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez p3, :cond_e

    const-string p3, "null"

    :cond_e
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p3, "  call active="

    .line 1102
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    iget-boolean p3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1104
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  SoundTrigger Power State="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mSoundTriggerPowerSaveMode:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    monitor-exit p1

    return-void

    :catchall_33
    move-exception p0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final dumpModelStateLocked()V
    .registers 5

    .line 1438
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 1439
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundTriggerHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_39
    return-void
.end method

.method public final forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x0

    .line 1176
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    return-void
.end method

.method public final forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V
    .registers 6

    const-string v0, "SoundTriggerHelper"

    if-eqz p2, :cond_9

    const-string v1, "forceStopAndUnloadModel"

    .line 1193
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :cond_9
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez p2, :cond_e

    return-void

    .line 1198
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isStopPending()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1200
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    goto :goto_62

    .line 1201
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result p2

    if-eqz p2, :cond_62

    .line 1202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping previously started dangling model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result p2

    if-nez p2, :cond_4a

    .line 1204
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    const/4 p2, 0x0

    .line 1205
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    goto :goto_62

    .line 1207
    :cond_4a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to stop model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_62
    :goto_62
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result p2

    if-eqz p2, :cond_df

    .line 1211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading previously loaded dangling model "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result p2

    if-nez p2, :cond_c7

    if-eqz p3, :cond_92

    .line 1215
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_9b

    .line 1217
    :cond_92
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :goto_9b
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1220
    :cond_a5
    :goto_a5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c3

    .line 1221
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1222
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 1223
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_a5

    .line 1226
    :cond_c3
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    goto :goto_df

    .line 1228
    :cond_c7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to unload model "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    :goto_df
    return-void
.end method

.method public getGenericModelState(Ljava/util/UUID;)I
    .registers 6

    .line 645
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_get_generic_model_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-eqz p1, :cond_86

    .line 647
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_15

    goto :goto_86

    .line 650
    :cond_15
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz v2, :cond_6e

    .line 651
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_6e

    .line 656
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    if-nez v3, :cond_44

    const-string p0, "SoundTriggerHelper"

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGenericModelState: Given generic model is not loaded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    monitor-exit v0

    return v1

    .line 660
    :cond_44
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_62

    const-string p0, "SoundTriggerHelper"

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGenericModelState: Given generic model is not started:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    monitor-exit v0

    return v1

    .line 665
    :cond_62
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getModelState(I)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_6e
    :goto_6e
    const-string p0, "SoundTriggerHelper"

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGenericModelState error: Invalid generic model id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    monitor-exit v0

    return v1

    .line 648
    :cond_86
    :goto_86
    monitor-exit v0

    return v1

    :catchall_88
    move-exception p0

    .line 666
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public final getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I
    .registers 4

    const/high16 p0, -0x80000000

    const-string v0, "SoundTriggerHelper"

    if-nez p1, :cond_c

    const-string p1, "Null RecognitionEvent received."

    .line 937
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 940
    :cond_c
    iget-object p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    if-eqz p1, :cond_1a

    .line 942
    array-length v1, p1

    if-nez v1, :cond_14

    goto :goto_1a

    :cond_14
    const/4 p0, 0x0

    .line 947
    aget-object p0, p1, p0

    iget p0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    return p0

    :cond_1a
    :goto_1a
    const-string p1, "Invalid keyphrase recognition event!"

    .line 943
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3

    .line 1272
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 1276
    :cond_10
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    return-object p0
.end method

.method public getKeyphraseModelState(Ljava/util/UUID;)I
    .registers 2

    const-string p0, "SoundTriggerHelper"

    const-string p1, "GetKeyphraseModelState error: Not implemented"

    .line 670
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x80000000

    return p0
.end method

.method public getKeyphraseParameter(II)I
    .registers 4
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 707
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 709
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 4

    .line 1295
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1296
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_a

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 1

    .line 566
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    return-object p0
.end method

.method public final getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;
    .registers 3

    .line 1251
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-nez v0, :cond_14

    .line 1253
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->createGenericModelData(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    .line 1254
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 1255
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "SoundTriggerHelper"

    const-string p1, "UUID already used for non-generic model."

    .line 1256
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_23
    :goto_23
    return-object v0
.end method

.method public getParameter(Ljava/util/UUID;I)I
    .registers 5
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 701
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 703
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final getParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)I
    .registers 6
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 713
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_get_parameter"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 714
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_37

    .line 721
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 725
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->getParameter(II)I

    move-result p0

    return p0

    .line 722
    :cond_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Given model is not loaded:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 719
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid model id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 715
    :cond_3f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SoundTriggerModule not initialized"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initializeDeviceStateListeners()V
    .registers 8

    .line 1109
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    if-eqz v0, :cond_5

    return-void

    .line 1112
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1115
    :try_start_9
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_15

    move v2, v4

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    iput-boolean v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 1118
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1122
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v2, :cond_38

    .line 1123
    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 1124
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1127
    :cond_38
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mSoundTriggerPowerSaveMode:I

    .line 1129
    iput-boolean v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_46

    .line 1131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_46
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1132
    throw p0
.end method

.method public final internalClearGlobalStateLocked()V
    .registers 6

    .line 1038
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1040
    :try_start_4
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1e

    .line 1042
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v0, :cond_1b

    .line 1047
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1048
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/soundtrigger/SoundTriggerHelper$PowerSaveModeListener;

    .line 1050
    :cond_1b
    iput-boolean v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    return-void

    :catchall_1e
    move-exception p0

    .line 1042
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1043
    throw p0
.end method

.method public final internalClearModelStateLocked()V
    .registers 2

    .line 1055
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1056
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z
    .registers 2

    .line 798
    instance-of p0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    return p0
.end method

.method public final isRecognitionAllowedByDeviceState(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z
    .registers 6

    .line 1316
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mRecognitionRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    .line 1317
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 1318
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mSoundTriggerPowerSaveMode:I

    .line 1321
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-nez v0, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowedByPowerState(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1
.end method

.method public isRecognitionAllowedByPowerState(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z
    .registers 3

    .line 1332
    iget p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mSoundTriggerPowerSaveMode:I

    const/4 v0, 0x1

    if-eqz p0, :cond_f

    if-ne p0, v0, :cond_e

    .line 1334
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->shouldRunInBatterySaverMode()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method

.method public isRecognitionRequested(Ljava/util/UUID;)Z
    .registers 3

    .line 638
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz p0, :cond_15

    .line 640
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 641
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final onCallStateChangedLocked(Z)V
    .registers 3

    .line 875
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 880
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mCallActive:Z

    .line 881
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    return-void
.end method

.method public final onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 7

    .line 802
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_generic_recognition_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 803
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->status:I

    if-eqz v0, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    return-void

    .line 807
    :cond_11
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v0

    const-string v1, "SoundTriggerHelper"

    if-eqz v0, :cond_81

    .line 808
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_81

    .line 814
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 816
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generic recognition event: Null callback for model handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 821
    :cond_3f
    iget-boolean v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->recognitionStillActive:Z

    if-nez v4, :cond_46

    .line 822
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 826
    :cond_46
    :try_start_46
    invoke-interface {v3, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    :try_end_49
    .catch Landroid/os/DeadObjectException; {:try_start_46 .. :try_end_49} :catch_7c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_50

    :catch_4a
    move-exception v3

    const-string v4, "RemoteException in onGenericSoundTriggerDetected"

    .line 831
    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    :goto_50
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v3

    if-nez v3, :cond_6d

    .line 836
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generic recognition event: Null RecognitionConfig for model handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 841
    :cond_6d
    iget-boolean p1, v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 843
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 844
    invoke-virtual {p0, v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    :cond_7b
    return-void

    :catch_7c
    move-exception p1

    .line 828
    invoke-virtual {p0, v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    return-void

    .line 809
    :cond_81
    :goto_81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generic recognition event: Model does not exist for handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 7

    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition success"

    .line 951
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_keyphrase_recognition_event"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseIdFromEvent(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)I

    move-result v1

    .line 954
    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 956
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_5c

    .line 961
    :cond_21
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    if-nez v1, :cond_2d

    const-string p0, "Received onRecognition event without callback for keyphrase model."

    .line 962
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 966
    :cond_2d
    iget-boolean v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->recognitionStillActive:Z

    if-nez v1, :cond_34

    .line 967
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 971
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_3b
    .catch Landroid/os/DeadObjectException; {:try_start_34 .. :try_end_3b} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_42

    :catch_3c
    move-exception p1

    const-string v1, "RemoteException in onKeyphraseDetected"

    .line 976
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    :goto_42
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 982
    iget-boolean p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    invoke-virtual {v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 985
    :cond_4d
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 986
    invoke-virtual {p0, v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    :cond_56
    return-void

    :catch_57
    move-exception p1

    .line 973
    invoke-virtual {p0, v2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    return-void

    .line 957
    :cond_5c
    :goto_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Keyphase model data does not exist for ID:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModelUnloaded(I)V
    .registers 6

    .line 851
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_sound_model_updated"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onModelUnloadedLocked(I)V

    .line 854
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final onModelUnloadedLocked(I)V
    .registers 2

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 896
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setNotLoaded()V

    :cond_9
    return-void
.end method

.method public final onPowerSaveModeChangedLocked(I)V
    .registers 3

    .line 886
    iget v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mSoundTriggerPowerSaveMode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 889
    :cond_5
    iput p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mSoundTriggerPowerSaveMode:I

    .line 890
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    return-void
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 5

    if-nez p1, :cond_a

    const-string p0, "SoundTriggerHelper"

    const-string p1, "Null recognition event!"

    .line 765
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 769
    :cond_a
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-nez v0, :cond_1a

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    if-nez v0, :cond_1a

    const-string p0, "SoundTriggerHelper"

    const-string p1, "Invalid recognition event type (not one of generic or keyphrase)!"

    .line 771
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 776
    :cond_1a
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_1d
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eqz v1, :cond_33

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    goto :goto_44

    .line 783
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionFailureLocked()V

    goto :goto_44

    .line 779
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    goto :goto_44

    .line 787
    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isKeyphraseRecognitionEvent(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 788
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onKeyphraseRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    goto :goto_44

    .line 790
    :cond_3f
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onGenericRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 794
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_46

    throw p0
.end method

.method public final onRecognitionAbortLocked(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .registers 6

    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition aborted"

    .line 905
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_recognition_aborted"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 907
    iget p1, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModelDataForLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 908
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isStopPending()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 909
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopped()V

    .line 911
    :try_start_27
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 913
    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_30
    .catch Landroid/os/DeadObjectException; {:try_start_27 .. :try_end_30} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_3c

    :catch_31
    move-exception v1

    const-string v2, "RemoteException in onRecognitionPaused"

    .line 918
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    :catch_38
    move-exception v0

    .line 916
    invoke-virtual {p0, p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    .line 920
    :cond_3c
    :goto_3c
    invoke-virtual {p0, p1, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    :cond_3f
    return-void
.end method

.method public final onRecognitionFailureLocked()V
    .registers 4

    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition failure"

    .line 925
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_recognition_failure_event"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v0, -0x80000000

    .line 928
    :try_start_12
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1c

    .line 930
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    return-void

    :catchall_1c
    move-exception v0

    .line 930
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 932
    throw v0
.end method

.method public onResourcesAvailable()V
    .registers 2

    .line 860
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onResourcesAvailableLocked()V

    .line 862
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final onResourcesAvailableLocked()V
    .registers 1

    .line 901
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    return-void
.end method

.method public onServiceDied()V
    .registers 4

    const-string v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    .line 867
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_service_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 869
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->onServiceDiedLocked()V

    .line 871
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final onServiceDiedLocked()V
    .registers 5

    const/4 v0, 0x0

    .line 1023
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_service_died"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1024
    sget v1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    invoke-virtual {p0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->sendErrorCallbacksToAllLocked(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1f

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 1028
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1e

    .line 1029
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 1030
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_1e
    return-void

    :catchall_1f
    move-exception v1

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearModelStateLocked()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 1028
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_2f

    .line 1029
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 1030
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 1032
    :cond_2f
    throw v1
.end method

.method public final prepareForRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    const-string v1, "SoundTriggerHelper"

    if-nez v0, :cond_1f

    .line 293
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProvider:Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v2

    invoke-interface {v0, v2, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$SoundTriggerModuleProvider;->getModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_1f

    const-string/jumbo p0, "prepareForRecognition: cannot attach to sound trigger module"

    .line 295
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x80000000

    return p0

    .line 300
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_58

    .line 305
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopAndUnloadDeadModelsLocked()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    .line 307
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result p0

    if-eqz p0, :cond_50

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepareForRecognition: loadSoundModel failed with status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_50
    aget p0, v0, v2

    .line 312
    invoke-virtual {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setHandle(I)V

    .line 313
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    :cond_58
    return v2
.end method

.method public queryKeyphraseParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 4
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 737
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 739
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 5
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 730
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 732
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final queryParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 6
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 745
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_query_parameter"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 746
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const-string v0, "SoundTriggerHelper"

    if-nez p1, :cond_1a

    const-string/jumbo p0, "queryParameter: Invalid model id"

    .line 750
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 753
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_36

    .line 754
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryParameter: Given model is not loaded:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 758
    :cond_36
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p0

    return-object p0
.end method

.method public final removeKeyphraseModelLocked(I)V
    .registers 4

    .line 1263
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    if-nez v0, :cond_f

    return-void

    .line 1267
    :cond_f
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mKeyphraseUuidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final sendErrorCallbacksToAllLocked(I)V
    .registers 6

    .line 1137
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1138
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1141
    :try_start_1c
    invoke-interface {v1, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_a

    :catch_20
    move-exception v1

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException sendErrorCallbacksToAllLocked for model handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerHelper"

    .line 1143
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_3c
    return-void
.end method

.method public setKeyphraseParameter(III)I
    .registers 5
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 681
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 683
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public setParameter(Ljava/util/UUID;II)I
    .registers 6
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 675
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 677
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setParameterLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;II)I
    .registers 7
    .param p2    # I
        .annotation build Landroid/hardware/soundtrigger/ModelParams;
        .end annotation
    .end param

    .line 688
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_set_parameter"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 689
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_10

    .line 690
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    return p0

    :cond_10
    if-eqz p1, :cond_24

    .line 692
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_24

    .line 697
    :cond_19
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->setParameter(III)I

    move-result p0

    return p0

    .line 693
    :cond_24
    :goto_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SetParameter: Given model is not loaded:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundTriggerHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    sget p0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    return p0
.end method

.method public startGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 15

    .line 207
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sth_start_recognition"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    if-eqz p3, :cond_36

    if-nez p4, :cond_14

    goto :goto_36

    .line 214
    :cond_14
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_17
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getOrCreateGenericModelDataLocked(Ljava/util/UUID;)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v4

    if-nez v4, :cond_26

    const-string p0, "SoundTriggerHelper"

    const-string p1, "Irrecoverable error occurred, check UUID / sound model data."

    .line 217
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    monitor-exit v1

    return v0

    :cond_26
    const/high16 v7, -0x80000000

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    .line 220
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;IZ)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_33
    move-exception p0

    .line 222
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw p0

    :cond_36
    :goto_36
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Passed in bad data to startGenericRecognition()."

    .line 210
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .registers 14

    .line 237
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_start_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5d

    if-eqz p3, :cond_5d

    if-nez p4, :cond_15

    goto :goto_5d

    .line 252
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 253
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_2a

    const-string p0, "SoundTriggerHelper"

    const-string p1, "Generic model with same UUID exists."

    .line 254
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v0

    return v1

    :cond_2a
    if-eqz v2, :cond_46

    .line 259
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->cleanUpExistingKeyphraseModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I

    move-result v1

    if-eqz v1, :cond_42

    .line 263
    monitor-exit v0

    return v1

    .line 265
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    const/4 v2, 0x0

    :cond_46
    if-nez v2, :cond_50

    .line 272
    invoke-virtual {p2}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->createKeyphraseModelDataLocked(Ljava/util/UUID;I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    :cond_50
    move-object v3, v2

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p1

    move v7, p5

    .line 275
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;IZ)I

    move-result p0

    monitor-exit v0

    return p0

    .line 240
    :cond_5d
    :goto_5d
    monitor-exit v0

    return v1

    :catchall_5f
    move-exception p0

    .line 277
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;IZ)I
    .registers 12

    .line 338
    iget-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter p5

    .line 339
    :try_start_3
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_12

    const-string p0, "SoundTriggerHelper"

    const-string p1, "Attempting startRecognition without the capability"

    .line 340
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit p5

    return v1

    .line 344
    :cond_12
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 345
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_4b

    const-string v2, "SoundTriggerHelper"

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling previous recognition for model id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getModelId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_c1

    .line 349
    :try_start_3c
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_c1

    goto :goto_48

    :catch_40
    move-exception v0

    :try_start_41
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onDetectionStopped"

    .line 351
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    :goto_48
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    .line 363
    :cond_4b
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a1

    .line 366
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v1

    move v3, v2

    goto :goto_7b

    .line 371
    :cond_66
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 374
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v0

    .line 375
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    goto :goto_7b

    :cond_79
    move v0, v2

    move v3, v0

    :goto_7b
    if-nez v0, :cond_7f

    if-eqz v3, :cond_a1

    .line 378
    :cond_7f
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I

    move-result v0

    if-eqz v0, :cond_a1

    const-string p0, "SoundTriggerHelper"

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to stop or unload previous model: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit p5

    return v0

    .line 387
    :cond_a1
    invoke-virtual {p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setCallback(Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)V

    .line 388
    invoke-virtual {p2, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 389
    invoke-virtual {p2, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 390
    invoke-virtual {p2, p6}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRunInBatterySaverMode(Z)V

    .line 391
    invoke-virtual {p2, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)V

    .line 393
    invoke-virtual {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowedByDeviceState(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    move-result p1

    if-nez p1, :cond_bb

    .line 394
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->initializeDeviceStateListeners()V

    .line 395
    monitor-exit p5

    return v2

    .line 398
    :cond_bb
    invoke-virtual {p0, p2, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p0

    monitor-exit p5

    return p0

    :catchall_c1
    move-exception p0

    .line 400
    monitor-exit p5
    :try_end_c3
    .catchall {:try_start_41 .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public final startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .registers 10

    .line 1340
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1341
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v1

    const/high16 v2, -0x80000000

    const-string/jumbo v3, "sth_start_recognition_error"

    const/4 v4, 0x1

    const-string v5, "SoundTriggerHelper"

    if-eqz v0, :cond_90

    .line 1342
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v6

    if-eqz v6, :cond_90

    if-nez v1, :cond_1c

    goto/16 :goto_90

    .line 1349
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowedByDeviceState(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    move-result v6

    if-nez v6, :cond_32

    const-string/jumbo p1, "startRecognition requested but not allowed."

    .line 1351
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "sth_start_recognition_not_allowed"

    invoke-static {p0, p1, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    .line 1356
    :cond_32
    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v6, :cond_37

    return v2

    .line 1359
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v1

    if-eqz v1, :cond_6d

    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRecognition failed with "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_8f

    .line 1366
    :try_start_5d
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_60
    .catch Landroid/os/DeadObjectException; {:try_start_5d .. :try_end_60} :catch_68
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_8f

    :catch_61
    move-exception p0

    const-string p1, "RemoteException in onError"

    .line 1370
    invoke-static {v5, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :catch_68
    move-exception p2

    .line 1368
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_8f

    :cond_6d
    const-string/jumbo v2, "startRecognition successful."

    .line 1374
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sth_start_recognition_success"

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1376
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStarted()V

    if-eqz p2, :cond_8f

    .line 1380
    :try_start_80
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_83
    .catch Landroid/os/DeadObjectException; {:try_start_80 .. :try_end_83} :catch_8b
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_8f

    :catch_84
    move-exception p0

    const-string p1, "RemoteException in onRecognitionResumed"

    .line 1384
    invoke-static {v5, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    :catch_8b
    move-exception p2

    .line 1382
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    :cond_8f
    :goto_8f
    return v1

    :cond_90
    :goto_90
    const-string/jumbo p1, "startRecognition: Bad data passed in."

    .line 1344
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return v2
.end method

.method public final stopAndUnloadDeadModelsLocked()V
    .registers 5

    .line 1234
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1235
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    .line 1237
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_a

    .line 1240
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1241
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1242
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1244
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that has no clients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundTriggerHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1245
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;Ljava/util/Iterator;)V

    goto :goto_a

    :cond_65
    return-void
.end method

.method public stopGenericRecognition(Ljava/util/UUID;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 414
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-eqz p2, :cond_5b

    if-nez p1, :cond_13

    goto :goto_5b

    .line 422
    :cond_13
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz v2, :cond_43

    .line 423
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_43

    .line 428
    :cond_24
    invoke-virtual {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p0

    if-eqz p0, :cond_41

    const-string p1, "SoundTriggerHelper"

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopGenericRecognition failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_41
    monitor-exit v0

    return p0

    :cond_43
    :goto_43
    const-string p0, "SoundTriggerHelper"

    .line 424
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting stopRecognition on invalid model with id:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit v0

    return v1

    :cond_5b
    :goto_5b
    const-string p0, "SoundTriggerHelper"

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null callbackreceived for stopGenericRecognition() for modelid:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    monitor-exit v0

    return v1

    :catchall_73
    move-exception p0

    .line 433
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 447
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_stop_recognition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-nez p2, :cond_28

    const-string p0, "SoundTriggerHelper"

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null callback received for stopKeyphraseRecognition() for keyphraseId:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    monitor-exit v0

    return v1

    .line 455
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 456
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_3f

    .line 468
    :cond_35
    invoke-virtual {p0, v2, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p0

    if-eqz p0, :cond_3d

    .line 470
    monitor-exit v0

    return p0

    .line 473
    :cond_3d
    monitor-exit v0

    return p0

    :cond_3f
    :goto_3f
    const-string p0, "SoundTriggerHelper"

    .line 457
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No model exists for given keyphrase Id "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    monitor-exit v0

    return v1

    :catchall_57
    move-exception p0

    .line 474
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final stopRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 7

    .line 485
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/high16 v1, -0x80000000

    if-nez p2, :cond_9

    .line 487
    :try_start_7
    monitor-exit v0

    return v1

    .line 489
    :cond_9
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModuleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_12

    goto :goto_62

    .line 494
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 496
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_59

    .line 502
    :cond_25
    invoke-interface {v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eq v2, p2, :cond_38

    const-string p0, "SoundTriggerHelper"

    const-string p1, "Attempting stopRecognition for another recognition"

    .line 505
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v0

    return v1

    :cond_38
    const/4 p2, 0x0

    .line 510
    invoke-virtual {p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p2

    if-eqz p2, :cond_44

    .line 513
    monitor-exit v0

    return p2

    .line 518
    :cond_44
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setLoaded()V

    .line 519
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearCallback()V

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->computeRecognitionRequestedLocked()Z

    move-result p1

    if-nez p1, :cond_57

    .line 523
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->internalClearGlobalStateLocked()V

    .line 526
    :cond_57
    monitor-exit v0

    return p2

    :cond_59
    :goto_59
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Attempting stopRecognition without a successful startRecognition"

    .line 498
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    monitor-exit v0

    return v1

    :cond_62
    :goto_62
    const-string p0, "SoundTriggerHelper"

    const-string p1, "Attempting stopRecognition without the capability"

    .line 490
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    monitor-exit v0

    return v1

    :catchall_6b
    move-exception p0

    .line 527
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public final stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .registers 9

    .line 1395
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v0, :cond_7

    const/high16 p0, -0x80000000

    return p0

    .line 1399
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getCallback()Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v0

    .line 1403
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "SoundTriggerHelper"

    if-eqz v1, :cond_49

    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_stop_recognition_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_65

    .line 1410
    :try_start_39
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_39 .. :try_end_3c} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_65

    :catch_3d
    move-exception p0

    const-string p1, "RemoteException in onError"

    .line 1414
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    :catch_44
    move-exception p2

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    goto :goto_65

    .line 1418
    :cond_49
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setStopPending()V

    .line 1419
    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sth_stop_recognition_success"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_65

    .line 1423
    :try_start_56
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_59
    .catch Landroid/os/DeadObjectException; {:try_start_56 .. :try_end_59} :catch_61
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_65

    :catch_5a
    move-exception p0

    const-string p1, "RemoteException in onRecognitionPaused"

    .line 1427
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    :catch_61
    move-exception p2

    .line 1425
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->forceStopAndUnloadModelLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Ljava/lang/Exception;)V

    :cond_65
    :goto_65
    return v1
.end method

.method public final tryStopAndUnloadLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;ZZ)I
    .registers 6

    .line 536
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelNotLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "SoundTriggerHelper"

    if-eqz p2, :cond_2e

    .line 539
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 540
    invoke-virtual {p0, p1, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v1

    if-eqz v1, :cond_2e

    .line 543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "stopRecognition failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2e
    if-eqz p3, :cond_74

    .line 548
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result p2

    if-nez p2, :cond_3c

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isStopPending()Z

    move-result p2

    if-eqz p2, :cond_74

    :cond_3c
    const-string p2, "Unloading previously loaded stale model."

    .line 549
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez p2, :cond_48

    const/high16 p0, -0x80000000

    return p0

    .line 553
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    .line 554
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    const-string/jumbo p3, "sth_unloading_stale_model"

    invoke-static {p0, p3, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz v1, :cond_71

    .line 556
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unloadSoundModel call failed with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 559
    :cond_71
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->clearState()V

    :cond_74
    :goto_74
    return v1
.end method

.method public unloadGenericSoundModel(Ljava/util/UUID;)I
    .registers 9

    .line 597
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_generic_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/high16 v1, -0x80000000

    if-eqz p1, :cond_b7

    .line 599
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v2, :cond_16

    goto/16 :goto_b7

    .line 602
    :cond_16
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    if-eqz v2, :cond_9f

    .line 603
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isGenericModel()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_9f

    .line 608
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_46

    const-string p0, "SoundTriggerHelper"

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unload: Given generic model is not loaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    monitor-exit v0

    return v4

    .line 613
    :cond_46
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 614
    invoke-virtual {p0, v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v3

    if-eqz v3, :cond_69

    const-string v4, "SoundTriggerHelper"

    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopGenericRecognition failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_69
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v3, :cond_6f

    .line 622
    monitor-exit v0

    return v1

    .line 624
    :cond_6f
    invoke-virtual {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    if-eqz v1, :cond_98

    const-string v2, "SoundTriggerHelper"

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadGenericSoundModel() call failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SoundTriggerHelper"

    const-string/jumbo v3, "unloadGenericSoundModel() force-marking model as unloaded."

    .line 627
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_98
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit v0

    return v1

    :cond_9f
    :goto_9f
    const-string p0, "SoundTriggerHelper"

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unload error: Attempting unload invalid generic model with id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    monitor-exit v0

    return v1

    .line 600
    :cond_b7
    :goto_b7
    monitor-exit v0

    return v1

    :catchall_b9
    move-exception p0

    .line 634
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_3 .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method public unloadKeyphraseSoundModel(I)I
    .registers 8

    .line 570
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sth_unload_keyphrase_sound_model"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getKeyphraseModelDataLocked(I)Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    move-result-object v1

    .line 573
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_6b

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelLoaded()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 574
    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isKeyphraseModel()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_6b

    :cond_23
    const/4 v2, 0x0

    .line 579
    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->setRequested(Z)V

    .line 580
    invoke-virtual {p0, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result v2

    if-eqz v2, :cond_43

    const-string v3, "SoundTriggerHelper"

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop recognition failed for keyphrase ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_43
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->getHandle()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v1

    if-eqz v1, :cond_66

    const-string v2, "SoundTriggerHelper"

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unloadKeyphraseSoundModel call failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_66
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->removeKeyphraseModelLocked(I)V

    .line 592
    monitor-exit v0

    return v1

    :cond_6b
    :goto_6b
    const/high16 p0, -0x80000000

    .line 575
    monitor-exit v0

    return p0

    :catchall_6f
    move-exception p0

    .line 593
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public final updateAllRecognitionsLocked()V
    .registers 4

    .line 992
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mModelDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 993
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;

    const/4 v2, 0x1

    .line 994
    invoke-virtual {p0, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    goto :goto_f

    :cond_20
    return-void
.end method

.method public final updateRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I
    .registers 6

    .line 999
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->isRecognitionAllowedByDeviceState(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v1

    .line 1000
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isModelStarted()Z

    move-result v2

    if-eq v0, v2, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;->isStopPending()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_3d

    :cond_1d
    if-eqz v0, :cond_38

    .line 1005
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->prepareForRecognition(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;)I

    move-result v0

    if-eqz v0, :cond_2e

    const-string p0, "SoundTriggerHelper"

    const-string/jumbo p1, "startRecognition failed to prepare model for recognition"

    .line 1007
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1010
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p1

    if-nez p1, :cond_37

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->initializeDeviceStateListeners()V

    :cond_37
    return p1

    .line 1017
    :cond_38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopRecognitionLocked(Lcom/android/server/soundtrigger/SoundTriggerHelper$ModelData;Z)I

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    return v1
.end method
