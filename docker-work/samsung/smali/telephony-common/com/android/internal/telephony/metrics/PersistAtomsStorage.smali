.class public Lcom/android/internal/telephony/metrics/PersistAtomsStorage;
.super Ljava/lang/Object;
.source "PersistAtomsStorage.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PersistAtomsStorage"

.field private static final blacklist sRandom:Ljava/security/SecureRandom;


# instance fields
.field protected final blacklist mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mMaxNumCarrierIdMismatches:I

.field private final blacklist mMaxNumCellularDataSwitches:I

.field private final blacklist mMaxNumCellularServiceStates:I

.field private final blacklist mMaxNumDataCallSessions:I

.field private final blacklist mMaxNumDedicatedBearerEventStats:I

.field private final blacklist mMaxNumDedicatedBearerListenerEventStats:I

.field private final blacklist mMaxNumGbaEventStats:I

.field private final blacklist mMaxNumImsRegistrationFeatureStats:I

.field private final blacklist mMaxNumImsRegistrationServiceDescStats:I

.field private final blacklist mMaxNumImsRegistrationStats:I

.field private final blacklist mMaxNumImsRegistrationTerminations:I

.field private final blacklist mMaxNumPresenceNotifyEventStats:I

.field private final blacklist mMaxNumRcsAcsProvisioningStats:I

.field private final blacklist mMaxNumRcsClientProvisioningStats:I

.field private final blacklist mMaxNumSipDelegateStats:I

.field private final blacklist mMaxNumSipMessageResponseStats:I

.field private final blacklist mMaxNumSipTransportFeatureTagStats:I

.field private final blacklist mMaxNumSipTransportSessionStats:I

.field private final blacklist mMaxNumSms:I

.field private final blacklist mMaxNumUceEventStats:I

.field private final blacklist mMaxNumVoiceCallSessions:I

.field protected blacklist mSaveImmediately:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private blacklist mSaveRunnable:Ljava/lang/Runnable;

.field private final blacklist mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$4BVQT5-38NQX1IMyXV8-vtavycg([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$findItemToEvict$5([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;II)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$5mOxrR3mWQ4kCQwyoDIF3Hq5NiU(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$getImsRegistrationTerminations$3(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KlVFBof4GmASDhBrIo3B-_Zxgwg(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$getCellularServiceStates$0(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V9pJ8N5oSmn8ESdiDUUexv1LwEI([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$findItemToEvict$7([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;II)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ZRyRGTSsthPAgtgyQJW_Y8kxnd4([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$findItemToEvict$8([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$aPt_CfuNpBIvX5IsT-bjUMqDCUU(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$getCellularDataServiceSwitches$1(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$beg8vKap5vIyMyQafY0KoQO_AEI(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$getImsRegistrationStats$2(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p1lEBHi1on_Q29o23MH2KHnuQ0E([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$findItemToEvict$6([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;II)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$yD_UIplaoG44Dx7TcrdcN2lGunI([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->lambda$findItemToEvict$4([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msaveAtomsToFileNow(Lcom/android/internal/telephony/metrics/PersistAtomsStorage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFileNow()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$1;-><init>(Lcom/android/internal/telephony/metrics/PersistAtomsStorage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.ram.low"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0xf

    const/16 v1, 0xa

    if-eqz p1, :cond_51

    .line 184
    sget-object p1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "Low RAM device"

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    const/4 p1, 0x5

    .line 186
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    const/16 v2, 0x8

    .line 187
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 188
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 189
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 190
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 191
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 192
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 193
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 194
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 195
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 196
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 197
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 198
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 199
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 200
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 201
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 202
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 203
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 204
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 205
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    goto :goto_81

    :cond_51
    const/16 p1, 0x32

    .line 207
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    const/16 v2, 0x19

    .line 208
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    const/16 v3, 0x28

    .line 209
    iput v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 210
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 211
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 212
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 213
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 214
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 215
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 216
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 217
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 218
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 219
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 220
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 221
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 222
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 223
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 224
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 225
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 226
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 227
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 230
    :goto_81
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->loadAtomsFromFile()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    .line 231
    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->fromProto([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 233
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "PersistAtomsThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandlerThread:Landroid/os/HandlerThread;

    .line 234
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveImmediately:Z

    return-void
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .registers 7

    .line 1303
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_36

    aget-object v2, p0, v1

    .line 1304
    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    .line 1305
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    .line 1306
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    .line 1307
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return-object v2

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 7

    .line 1286
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 1287
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    if-ne v3, v4, :cond_29

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 7

    .line 1265
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_44

    aget-object v2, p0, v1

    .line 1266
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    if-ne v3, v4, :cond_41

    return-object v2

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 7

    .line 1552
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 1553
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-ne v3, v4, :cond_23

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 7

    .line 1396
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_3e

    aget-object v2, p0, v1

    .line 1397
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    if-ne v3, v4, :cond_3b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    if-ne v3, v4, :cond_3b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    if-ne v3, v4, :cond_3b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    if-ne v3, v4, :cond_3b

    return-object v2

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 7

    .line 1378
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 1379
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    if-ne v3, v4, :cond_29

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .registers 7

    .line 1417
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 1418
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 7

    .line 1501
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2e

    aget-object v2, p0, v1

    .line 1502
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v3, v4, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    if-ne v3, v4, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    if-ne v3, v4, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    if-ne v3, v4, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 7

    .line 1319
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 1320
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-ne v3, v4, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 7

    .line 1334
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_3c

    aget-object v2, p0, v1

    .line 1335
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    if-ne v3, v4, :cond_39

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    if-ne v3, v4, :cond_39

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    if-ne v3, v4, :cond_39

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    if-ne v3, v4, :cond_39

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    if-ne v3, v4, :cond_39

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    if-ne v3, v4, :cond_39

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    .line 1341
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    return-object v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 7

    .line 1353
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 1354
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    if-ne v3, v4, :cond_17

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    if-ne v3, v4, :cond_17

    return-object v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 7

    .line 1536
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 1537
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    if-ne v3, v4, :cond_23

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 7

    .line 1448
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 1449
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    if-ne v3, v4, :cond_29

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 7

    .line 1433
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 1434
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    if-ne v3, v4, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 7

    .line 1465
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_32

    aget-object v2, p0, v1

    .line 1466
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    if-ne v3, v4, :cond_2f

    return-object v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;
    .registers 7

    .line 1569
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 1570
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 7

    .line 1483
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 1484
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 7

    .line 1518
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_32

    aget-object v2, p0, v1

    .line 1519
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    if-ne v3, v4, :cond_2f

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    if-ne v3, v4, :cond_2f

    return-object v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist findIndex(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)I
    .registers 5

    const/4 v0, 0x0

    .line 1366
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 1367
    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    if-ne v1, v2, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist findItemToEvict([Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 1604
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1606
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 1607
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda4;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V

    .line 1608
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 1609
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 1612
    :cond_1a
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-eqz v0, :cond_33

    .line 1614
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 1615
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda5;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    .line 1616
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 1617
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 1620
    :cond_33
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-eqz v0, :cond_4c

    .line 1622
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 1623
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V

    .line 1624
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 1625
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 1628
    :cond_4c
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-eqz v0, :cond_65

    .line 1630
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 1631
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda7;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V

    .line 1632
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 1633
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 1636
    :cond_65
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v0, :cond_8b

    .line 1638
    move-object v0, p0

    check-cast v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1639
    array-length v2, v0

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda8;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    .line 1640
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1641
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1642
    array-length v1, v0

    if-lez v1, :cond_8b

    .line 1643
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    aget p0, v0, p0

    return p0

    .line 1649
    :cond_8b
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    return p0
.end method

.method private static blacklist insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;I)[TT;"
        }
    .end annotation

    .line 1586
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-le v0, p2, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    if-eqz v3, :cond_c

    goto :goto_d

    :cond_c
    move p2, v0

    .line 1588
    :goto_d
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    if-ne v0, v1, :cond_16

    .line 1590
    aput-object p1, p2, v2

    goto :goto_2c

    :cond_16
    if-eqz v3, :cond_1f

    .line 1592
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findItemToEvict([Ljava/lang/Object;)I

    move-result p0

    aput-object p1, p2, p0

    goto :goto_2c

    .line 1595
    :cond_1f
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    sub-int/2addr v0, v1

    .line 1596
    aget-object v1, p2, p0

    aput-object v1, p2, v0

    .line 1597
    aput-object p1, p2, p0

    :goto_2c
    return-object p2
.end method

.method private static synthetic blacklist lambda$findItemToEvict$4([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;II)I
    .registers 7

    .line 1608
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    goto :goto_e

    :cond_d
    move p1, p2

    :goto_e
    return p1
.end method

.method private static synthetic blacklist lambda$findItemToEvict$5([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;II)I
    .registers 7

    .line 1616
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    goto :goto_e

    :cond_d
    move p1, p2

    :goto_e
    return p1
.end method

.method private static synthetic blacklist lambda$findItemToEvict$6([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;II)I
    .registers 7

    .line 1624
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    goto :goto_e

    :cond_d
    move p1, p2

    :goto_e
    return p1
.end method

.method private static synthetic blacklist lambda$findItemToEvict$7([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;II)I
    .registers 7

    .line 1632
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    goto :goto_e

    :cond_d
    move p1, p2

    :goto_e
    return p1
.end method

.method private static synthetic blacklist lambda$findItemToEvict$8([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)Z
    .registers 2

    .line 1640
    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic blacklist lambda$getCellularDataServiceSwitches$1(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 737
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    return-void
.end method

.method private static synthetic blacklist lambda$getCellularServiceStates$0(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 716
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    return-void
.end method

.method private static synthetic blacklist lambda$getImsRegistrationStats$2(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 757
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    return-void
.end method

.method private static synthetic blacklist lambda$getImsRegistrationTerminations$3(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 778
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    return-void
.end method

.method private blacklist loadAtomsFromFile()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 5

    .line 1060
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    const-string v1, "persist_atoms.pb"

    .line 1062
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 1061
    invoke-static {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object v0

    .line 1065
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1066
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "Build changed"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0

    .line 1070
    :cond_2a
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 1071
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 1072
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    .line 1073
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1077
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 1078
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 1079
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 1080
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    .line 1084
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 1085
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    .line 1089
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 1090
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 1094
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 1095
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 1099
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 1100
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 1104
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 1105
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 1109
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 1110
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 1111
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 1112
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1116
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 1117
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 1121
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 1122
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1126
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 1127
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 1131
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 1132
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 1136
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 1137
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 1141
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 1142
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    .line 1146
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 1147
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1151
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 1152
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 1156
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 1157
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1161
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 1162
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 1166
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 1167
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 1171
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 1172
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    .line 1178
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 1179
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 1180
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 1181
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 1182
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1183
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1184
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1185
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1186
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1187
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1188
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1189
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1190
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1191
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1192
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1193
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1194
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1195
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1196
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1197
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1198
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1199
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1200
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1201
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1202
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1203
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1204
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1205
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1206
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1207
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1208
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1209
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1210
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1211
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1212
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1213
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1214
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1215
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1216
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1217
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1218
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1219
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1220
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1221
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1222
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1223
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J
    :try_end_22e
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_22e} :catch_238
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22e} :catch_22f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_22e} :catch_22f

    return-object v0

    :catch_22f
    move-exception v0

    .line 1229
    sget-object v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "cannot load/parse PersistAtoms"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23f

    .line 1227
    :catch_238
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "PersistAtoms file not found"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :goto_23f
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0
.end method

.method private blacklist makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 4

    .line 1708
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;-><init>()V

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    .line 1711
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    .line 1712
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 1713
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 1714
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1715
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    const/4 p0, -0x1

    .line 1716
    iput p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    .line 1717
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1718
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1719
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1720
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1721
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1722
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsPullTimestampMillis:J

    .line 1723
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1724
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1725
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1726
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1727
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1728
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1729
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1730
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1731
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1732
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1733
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1734
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1735
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1736
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1738
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "created new PersistAtoms"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist normalizeData([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 8

    const/4 v0, 0x0

    .line 1677
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_61

    .line 1678
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 1679
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 1680
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 1681
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 1682
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 1683
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 1684
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 1685
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 1686
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 1687
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 1688
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 1689
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 1690
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 1691
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 1692
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 1693
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 1694
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 1695
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_61
    return-object p1
.end method

.method private blacklist normalizeDurationTo24H(JJ)J
    .registers 9

    const-wide/16 v0, 0x3e8

    cmp-long p0, p3, v0

    if-gez p0, :cond_9

    const-wide/16 p3, 0x1

    goto :goto_a

    .line 1702
    :cond_9
    div-long/2addr p3, v0

    .line 1703
    :goto_a
    div-long/2addr p1, v0

    const-wide/32 v2, 0x15180

    mul-long/2addr p1, v2

    div-long/2addr p1, p3

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method private blacklist sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1654
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 1659
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .line 1660
    array-length p1, p0

    if-le p1, p3, :cond_b

    .line 1661
    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_b
    return-object p0
.end method

.method private blacklist sanitizeTimestamp(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_a

    .line 1668
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    :cond_a
    return-wide p1
.end method

.method private blacklist saveAtomsToFile(I)V
    .registers 6

    if-lez p1, :cond_19

    .line 1241
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveImmediately:Z

    if-nez v0, :cond_19

    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    .line 1248
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFileNow()V

    return-void
.end method

.method private declared-synchronized blacklist saveAtomsToFileNow()V
    .registers 4

    monitor-enter p0

    .line 1253
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    const-string v1, "persist_atoms.pb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_25
    .catchall {:try_start_1 .. :try_end_a} :catchall_23

    .line 1254
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 1255
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_25
    .catchall {:try_start_13 .. :try_end_16} :catchall_23

    goto :goto_2d

    :catchall_17
    move-exception v1

    if-eqz v0, :cond_22

    .line 1253
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_25
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    goto :goto_2f

    :catch_25
    move-exception v0

    .line 1256
    :try_start_26
    sget-object v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "cannot save PersistAtoms"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    .line 1258
    :goto_2d
    monitor-exit p0

    return-void

    :goto_2f
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist addCarrierIdMismatch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Z
    .registers 8

    monitor-enter p0

    .line 350
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3a

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 351
    monitor-exit p0

    return v1

    .line 355
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v3, v2

    iget v4, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_22

    sub-int/2addr v4, v5

    .line 356
    invoke-static {v2, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iget v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    sub-int/2addr v1, v5

    aput-object p1, v0, v1

    goto :goto_33

    .line 364
    :cond_22
    array-length v1, v2

    add-int/2addr v1, v5

    .line 365
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iput-object v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    sub-int/2addr v1, v5

    aput-object p1, v0, v1

    :goto_33
    const/16 p1, 0x7530

    .line 368
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_3a

    .line 369
    monitor-exit p0

    return v5

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addCellularServiceStateAndCellularDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 8

    monitor-enter p0

    .line 297
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 299
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    goto :goto_29

    .line 302
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 304
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    :goto_29
    if-eqz p2, :cond_53

    .line 309
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 311
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    iget p2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    goto :goto_53

    .line 314
    :cond_3f
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    .line 315
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iget v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 316
    invoke-static {v0, p2, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    :cond_53
    :goto_53
    const/16 p1, 0x7530

    .line 323
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5a

    .line 324
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addCompleteSipTransportSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)V
    .registers 5

    monitor-enter p0

    .line 521
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 523
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    .line 524
    iget-boolean p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    if-eqz p1, :cond_26

    .line 525
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    goto :goto_26

    .line 528
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 529
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    :cond_26
    :goto_26
    const/16 p1, 0x7530

    .line 532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 533
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addDataCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)V
    .registers 9

    monitor-enter p0

    .line 328
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findIndex(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    aget-object v2, v1, v0

    .line 331
    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    iget-wide v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 332
    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    iget-wide v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 333
    aput-object p1, v1, v0

    goto :goto_2c

    .line 335
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 336
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    :goto_2c
    const/16 p1, 0x7530

    .line 339
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 340
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addGbaEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    .registers 5

    monitor-enter p0

    .line 606
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 608
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    goto :goto_1c

    .line 610
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 611
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    :goto_1c
    const/16 p1, 0x7530

    .line 613
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 614
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addImsDedicatedBearerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)V
    .registers 5

    monitor-enter p0

    .line 551
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 553
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    goto :goto_1c

    .line 555
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 556
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    :goto_1c
    const/16 p1, 0x7530

    .line 559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 560
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addImsDedicatedBearerListenerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)V
    .registers 5

    monitor-enter p0

    .line 538
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 540
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    goto :goto_1c

    .line 542
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 543
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    :goto_1c
    const/16 p1, 0x7530

    .line 546
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 547
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V
    .registers 7

    monitor-enter p0

    .line 447
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 449
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    goto :goto_1d

    .line 451
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 452
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    :goto_1d
    const/16 p1, 0x7530

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 456
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V
    .registers 7

    monitor-enter p0

    .line 565
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 567
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_1d

    .line 569
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 570
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    :goto_1d
    const/16 p1, 0x7530

    .line 573
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 574
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .registers 7

    monitor-enter p0

    .line 374
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 376
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 377
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 378
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 379
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 380
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 381
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 382
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 383
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 384
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    goto :goto_61

    .line 387
    :cond_4d
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 389
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    :goto_61
    const/16 p1, 0x7530

    .line 392
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_68

    .line 393
    monitor-exit p0

    return-void

    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationTermination(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .registers 5

    monitor-enter p0

    .line 397
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 399
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    goto :goto_29

    .line 402
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 404
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    :goto_29
    const/16 p1, 0x7530

    .line 409
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 410
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V
    .registers 5

    monitor-enter p0

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/16 p1, 0x7530

    .line 262
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 270
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V
    .registers 5

    monitor-enter p0

    .line 429
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 431
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    goto :goto_37

    .line 433
    :cond_f
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    .line 434
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 435
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    .line 436
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    .line 437
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 438
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 439
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    add-int/lit8 v2, v2, -0x1

    aput-object v0, p1, v2

    :goto_37
    const/16 p1, 0x7530

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 442
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addOutgoingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)V
    .registers 10

    monitor-enter p0

    .line 277
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 278
    iget-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    iget-wide v6, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1d

    iget v3, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-lt v3, v4, :cond_1d

    add-int/lit8 v3, v3, 0x1

    .line 279
    iput v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 283
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/16 p1, 0x7530

    .line 284
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 292
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addPresenceNotifyEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)V
    .registers 5

    monitor-enter p0

    .line 590
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 592
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    .line 593
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    .line 594
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    .line 595
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    goto :goto_32

    .line 597
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 598
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    :goto_32
    const/16 p1, 0x7530

    .line 601
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 602
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V
    .registers 7

    monitor-enter p0

    .line 473
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 475
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 476
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    goto :goto_25

    .line 479
    :cond_15
    iput v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 481
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    :goto_25
    const/16 p1, 0x7530

    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 485
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addRcsClientProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)V
    .registers 5

    monitor-enter p0

    .line 460
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 462
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    goto :goto_1c

    .line 464
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 465
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    :goto_1c
    const/16 p1, 0x7530

    .line 468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 469
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addSipDelegateStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)V
    .registers 5

    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/16 p1, 0x7530

    .line 491
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 492
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addSipMessageResponse(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)V
    .registers 5

    monitor-enter p0

    .line 509
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 511
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    goto :goto_1c

    .line 513
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    :goto_1c
    const/16 p1, 0x7530

    .line 516
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 517
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addSipTransportFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)V
    .registers 7

    monitor-enter p0

    .line 496
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 498
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    goto :goto_1d

    .line 500
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 501
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    :goto_1d
    const/16 p1, 0x7530

    .line 504
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 505
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addUceEventStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)V
    .registers 5

    monitor-enter p0

    .line 578
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 580
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    goto :goto_1c

    .line 582
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 583
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    :goto_1c
    const/16 p1, 0x7530

    .line 585
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 586
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addVoiceCallRatUsage(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V
    .registers 3

    monitor-enter p0

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mergeWith(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 255
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->toProto()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/16 p1, 0x7530

    .line 256
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 257
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist addVoiceCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V
    .registers 5

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    .line 242
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/16 p1, 0x7530

    .line 243
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 250
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist flushAtoms()V
    .registers 3

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1053
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFileNow()V

    :cond_14
    return-void
.end method

.method public declared-synchronized blacklist getCellularDataServiceSwitches(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 8

    monitor-enter p0

    .line 732
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_32

    .line 734
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 735
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 736
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda1;-><init>()V

    .line 737
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 738
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    const/16 p2, 0x1f4

    .line 739
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_35

    .line 740
    monitor-exit p0

    return-object p1

    :cond_32
    const/4 p1, 0x0

    .line 742
    monitor-exit p0

    return-object p1

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getCellularServiceStates(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 8

    monitor-enter p0

    .line 712
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_32

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 715
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 716
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 717
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const/16 p2, 0x1f4

    .line 718
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_35

    .line 719
    monitor-exit p0

    return-object p1

    :cond_32
    const/4 p1, 0x0

    .line 721
    monitor-exit p0

    return-object p1

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getDataCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 8

    monitor-enter p0

    .line 691
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_31

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 693
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    .line 694
    iput-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/16 p1, 0x1f4

    .line 695
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 696
    array-length p1, p2

    :goto_23
    if-ge v0, p1, :cond_2f

    aget-object v1, p2, v0

    .line 698
    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 700
    :cond_2f
    monitor-exit p0

    return-object p2

    :cond_31
    const/4 p1, 0x0

    .line 702
    monitor-exit p0

    return-object p1

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getGbaEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 8

    monitor-enter p0

    .line 1038
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 1039
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1040
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    .line 1041
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const/16 p1, 0x1f4

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 1043
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 1045
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getImsDedicatedBearerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 8

    monitor-enter p0

    .line 964
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 967
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 969
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const/16 p1, 0x1f4

    .line 970
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 971
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 973
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getImsDedicatedBearerListenerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 8

    monitor-enter p0

    .line 944
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 946
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 947
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 949
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const/16 p1, 0x1f4

    .line 950
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 951
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 953
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .registers 8

    monitor-enter p0

    .line 811
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 813
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 814
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 816
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const/16 p1, 0x1f4

    .line 817
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 818
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 820
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationServiceDescStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 8

    monitor-enter p0

    .line 984
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 986
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 987
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 989
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    const/16 p1, 0x1f4

    .line 990
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 991
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 993
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 8

    monitor-enter p0

    .line 753
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_36

    .line 755
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 756
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 757
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 758
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object v2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const/16 p2, 0x1f4

    .line 759
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 760
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeData([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_39

    monitor-exit p0

    return-object p1

    :cond_36
    const/4 p1, 0x0

    .line 762
    monitor-exit p0

    return-object p1

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationTerminations(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 8

    monitor-enter p0

    .line 773
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_32

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 776
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 777
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda0;-><init>()V

    .line 778
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 779
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    const/16 p2, 0x1f4

    .line 780
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_35

    .line 781
    monitor-exit p0

    return-object p1

    :cond_32
    const/4 p1, 0x0

    .line 783
    monitor-exit p0

    return-object p1

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getIncomingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 8

    monitor-enter p0

    .line 657
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 659
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 660
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/16 p1, 0x1f4

    .line 661
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 662
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 664
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getNetworkRequestsV2(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 8

    monitor-enter p0

    .line 793
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 795
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 796
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/16 p1, 0x1f4

    .line 797
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 798
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 800
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getOutgoingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 8

    monitor-enter p0

    .line 674
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 676
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 677
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/16 p1, 0x1f4

    .line 678
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 679
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 681
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getPresenceNotifyEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 8

    monitor-enter p0

    .line 1020
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 1022
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1023
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 1024
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const/16 p1, 0x1f4

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 1026
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 1028
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getRcsAcsProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 8

    monitor-enter p0

    .line 850
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 852
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 853
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 854
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    const/16 p1, 0x1f4

    .line 855
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 856
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 858
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getRcsClientProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 8

    monitor-enter p0

    .line 831
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 833
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 834
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 835
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const/16 p1, 0x1f4

    .line 836
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 837
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 839
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getSipDelegateStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 8

    monitor-enter p0

    .line 868
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 870
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 871
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 872
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/16 p1, 0x1f4

    .line 873
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 874
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 876
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getSipMessageResponse(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 8

    monitor-enter p0

    .line 905
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 908
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 910
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const/16 p1, 0x1f4

    .line 911
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 912
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 914
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getSipTransportFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;
    .registers 8

    monitor-enter p0

    .line 887
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 889
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 890
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 891
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    const/16 p1, 0x1f4

    .line 892
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 893
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 895
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getSipTransportSession(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 8

    monitor-enter p0

    .line 924
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 926
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 927
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    .line 929
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const/16 p1, 0x1f4

    .line 930
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 931
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 933
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getUceEventStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 8

    monitor-enter p0

    .line 1003
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 1004
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1005
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 1006
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const/16 p1, 0x1f4

    .line 1007
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 1008
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 1010
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getVoiceCallRatUsages(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 8

    monitor-enter p0

    .line 639
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_2b

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 641
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 642
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->clear()V

    .line 643
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/16 p2, 0x1f4

    .line 644
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    .line 645
    monitor-exit p0

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    .line 647
    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getVoiceCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .registers 8

    monitor-enter p0

    .line 622
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_24

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 624
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 625
    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/16 p1, 0x1f4

    .line 626
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 627
    monitor-exit p0

    return-object p2

    :cond_24
    const/4 p1, 0x0

    .line 629
    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist getWallTimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist setCarrierIdTableVersion(I)Z
    .registers 4

    monitor-enter p0

    .line 418
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    if-ge v1, p1, :cond_11

    .line 419
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    const/16 p1, 0x7530

    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    const/4 p1, 0x1

    .line 421
    monitor-exit p0

    return p1

    :cond_11
    const/4 p1, 0x0

    .line 423
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method
