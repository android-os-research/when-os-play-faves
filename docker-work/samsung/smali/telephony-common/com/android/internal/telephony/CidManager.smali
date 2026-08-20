.class public Lcom/android/internal/telephony/CidManager;
.super Ljava/lang/Object;
.source "CidManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CidManager$ConnectionId;
    }
.end annotation


# static fields
.field private static final blacklist mConnectionIdLock:Ljava/lang/Object;


# instance fields
.field blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

.field private blacklist mEndVal:I

.field private blacklist mInitialVal:I

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mLastAllocatedCid:[I

.field private blacklist mMaxInterfaceCount:I

.field private blacklist mMaxInterfaceCountForSlot:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMaxInterfaceCountForSlot(Lcom/android/internal/telephony/CidManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCountForSlot:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CidManager"

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/CidManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CidManager$1;-><init>(Lcom/android/internal/telephony/CidManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CidManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/CidManager;->mPhoneId:I

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/CidManager;->init()V

    .line 124
    iget p1, p0, Lcom/android/internal/telephony/CidManager;->mPhoneId:I

    if-nez p1, :cond_33

    .line 125
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/internal/telephony/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0, p1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_33
    return-void
.end method


# virtual methods
.method public blacklist allocateCid(IIIIII)I
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p6, v0, :cond_c

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "allocateCid: attach apn not loaded, return 0"

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocateCid: apnType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requestType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", transport : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v2, Lcom/android/internal/telephony/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v3, :cond_8a

    .line 205
    :try_start_49
    iget p2, p0, Lcom/android/internal/telephony/CidManager;->mInitialVal:I

    :goto_4b
    iget p4, p0, Lcom/android/internal/telephony/CidManager;->mEndVal:I

    if-gt p2, p4, :cond_1c5

    if-ne p3, v4, :cond_5a

    .line 208
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p4, p4, p2

    invoke-virtual {p4, v3}, Lcom/android/internal/telephony/CidManager$ConnectionId;->getApnType(I)I

    move-result p4

    goto :goto_62

    .line 210
    :cond_5a
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p4, p4, p2

    invoke-virtual {p4, v4}, Lcom/android/internal/telephony/CidManager$ConnectionId;->getApnType(I)I

    move-result p4

    :goto_62
    if-ne p4, p1, :cond_87

    .line 214
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateCid: handover, use already allocated cid : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p4, p4, p2

    if-ne p6, v4, :cond_81

    move v1, v4

    :cond_81
    invoke-virtual {p4, p5, p3, p1, v1}, Lcom/android/internal/telephony/CidManager$ConnectionId;->allocate(IIIZ)V

    move v1, p2

    goto/16 :goto_1c5

    :cond_87
    add-int/lit8 p2, p2, 0x1

    goto :goto_4b

    .line 221
    :cond_8a
    invoke-static {p4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->is1xEvdo(I)Z

    move-result p2

    if-eqz p2, :cond_b3

    const-string p2, "LGT"

    invoke-static {p5}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b3

    if-ne p3, v4, :cond_b3

    .line 223
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    const-string p4, "allocateCid: cdma cid is next attach Cid "

    invoke-static {p2, p4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    iget p4, p0, Lcom/android/internal/telephony/CidManager;->mInitialVal:I

    add-int/2addr p4, v4

    aget-object p2, p2, p4

    invoke-virtual {p2, p5, p3, p1, v1}, Lcom/android/internal/telephony/CidManager$ConnectionId;->allocate(IIIZ)V

    move p2, v1

    move p6, p2

    goto/16 :goto_149

    :cond_b3
    if-ne p6, v4, :cond_c6

    .line 228
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    const-string p4, "allocateCid: attach apn cid 1"

    invoke-static {p2, p4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    iget p4, p0, Lcom/android/internal/telephony/CidManager;->mInitialVal:I

    aget-object p2, p2, p4

    invoke-virtual {p2, p5, p3, p1, v4}, Lcom/android/internal/telephony/CidManager$ConnectionId;->allocate(IIIZ)V

    goto :goto_105

    .line 232
    :cond_c6
    iget p2, p0, Lcom/android/internal/telephony/CidManager;->mInitialVal:I

    add-int/2addr p2, v4

    :goto_c9
    iget p4, p0, Lcom/android/internal/telephony/CidManager;->mEndVal:I

    if-gt p2, p4, :cond_105

    .line 233
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p4, p4, p2

    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/CidManager$ConnectionId;->getApnType(I)I

    move-result p4

    if-ne p4, p1, :cond_102

    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p4, p4, p2

    .line 234
    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/CidManager$ConnectionId;->getSlotId(I)I

    move-result p4

    if-ne p4, p5, :cond_102

    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p4, p4, p2

    .line 235
    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/CidManager$ConnectionId;->isAllocated(I)Z

    move-result p4

    if-eqz p4, :cond_102

    .line 236
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateCid: re-use allocated cid"

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p4, p6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    :cond_102
    add-int/lit8 p2, p2, 0x1

    goto :goto_c9

    :cond_105
    :goto_105
    move p2, v1

    :goto_106
    if-nez p2, :cond_148

    .line 244
    iget p4, p0, Lcom/android/internal/telephony/CidManager;->mInitialVal:I

    add-int/2addr p4, v4

    move p6, v1

    :goto_10c
    iget v3, p0, Lcom/android/internal/telephony/CidManager;->mEndVal:I

    if-gt p4, v3, :cond_149

    .line 245
    iget-object v3, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object v3, v3, p4

    invoke-virtual {v3}, Lcom/android/internal/telephony/CidManager$ConnectionId;->isAllocated()Z

    move-result v3

    if-eqz v3, :cond_11b

    goto :goto_122

    .line 249
    :cond_11b
    iget-object v3, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    aget v3, v3, p5

    if-ne v3, p4, :cond_125

    move p6, v4

    :goto_122
    add-int/lit8 p4, p4, 0x1

    goto :goto_10c

    .line 254
    :cond_125
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocateCid: use free cid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p2, p2, p4

    invoke-virtual {p2, p5, p3, p1, v1}, Lcom/android/internal/telephony/CidManager$ConnectionId;->allocate(IIIZ)V

    .line 257
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    aput p4, p2, p5

    move p2, p4

    goto :goto_149

    :cond_148
    move p6, v1

    :cond_149
    :goto_149
    if-nez p2, :cond_18a

    if-eqz p6, :cond_18a

    .line 264
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    iget-object p6, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    aget p6, p6, p5

    aget-object p4, p4, p6

    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/CidManager$ConnectionId;->isAllocated(I)Z

    move-result p4

    if-nez p4, :cond_18a

    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    aget p4, p4, p5

    invoke-virtual {p0, p4, p3}, Lcom/android/internal/telephony/CidManager;->isAttachCid(II)Z

    move-result p4

    if-nez p4, :cond_18a

    .line 265
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "allocateCid: use mLastAllocatedCid"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    aget p6, p6, p5

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p2, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    aget p2, p2, p5

    .line 267
    iget-object p4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p4, p4, p2

    invoke-virtual {p4, p5, p3, p1, v1}, Lcom/android/internal/telephony/CidManager$ConnectionId;->allocate(IIIZ)V

    :cond_18a
    move v1, p2

    if-nez v1, :cond_1c5

    .line 272
    iget-object p1, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    aput v0, p1, p5

    .line 273
    iget-object p1, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    const-string p2, "allocateCid: No free cid, dump cids"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_198
    iget p1, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCount:I

    if-ge v4, p1, :cond_1c5

    .line 275
    iget-object p1, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "allocateCid: mConnectionId["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p3, p3, v4

    invoke-virtual {p3}, Lcom/android/internal/telephony/CidManager$ConnectionId;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_198

    .line 279
    :cond_1c5
    :goto_1c5
    monitor-exit v2
    :try_end_1c6
    .catchall {:try_start_49 .. :try_end_1c6} :catchall_1dd

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allocateCid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_1dd
    move-exception p0

    .line 279
    :try_start_1de
    monitor-exit v2
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    throw p0
.end method

.method public blacklist dispose()V
    .registers 2

    .line 132
    iget v0, p0, Lcom/android/internal/telephony/CidManager;->mPhoneId:I

    if-nez v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/CidManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_f
    return-void
.end method

.method public blacklist init()V
    .registers 7

    .line 138
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const-string v1, "ril.max_interface0"

    const/4 v2, 0x4

    .line 139
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCountForSlot:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_19

    if-ne v1, v2, :cond_19

    add-int/2addr v1, v3

    .line 143
    iput v1, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCountForSlot:I

    .line 145
    :cond_19
    iget v1, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCountForSlot:I

    mul-int v2, v1, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCount:I

    .line 147
    iput v3, p0, Lcom/android/internal/telephony/CidManager;->mInitialVal:I

    .line 148
    iget v4, p0, Lcom/android/internal/telephony/CidManager;->mPhoneId:I

    if-eqz v4, :cond_2b

    mul-int v5, v1, v4

    add-int/2addr v5, v3

    .line 149
    iput v5, p0, Lcom/android/internal/telephony/CidManager;->mInitialVal:I

    .line 151
    :cond_2b
    iput v1, p0, Lcom/android/internal/telephony/CidManager;->mEndVal:I

    if-eqz v4, :cond_33

    add-int/2addr v4, v3

    mul-int/2addr v1, v4

    .line 153
    iput v1, p0, Lcom/android/internal/telephony/CidManager;->mEndVal:I

    .line 156
    :cond_33
    new-array v1, v2, [Lcom/android/internal/telephony/CidManager$ConnectionId;

    iput-object v1, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    const/4 v1, 0x0

    move v2, v1

    .line 157
    :goto_39
    iget v3, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCount:I

    if-ge v2, v3, :cond_50

    .line 158
    sget-object v3, Lcom/android/internal/telephony/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v3

    .line 159
    :try_start_40
    iget-object v4, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    new-instance v5, Lcom/android/internal/telephony/CidManager$ConnectionId;

    invoke-direct {v5}, Lcom/android/internal/telephony/CidManager$ConnectionId;-><init>()V

    aput-object v5, v4, v2

    .line 160
    monitor-exit v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :catchall_4d
    move-exception p0

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw p0

    .line 163
    :cond_50
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    :goto_54
    if-ge v1, v0, :cond_65

    .line 165
    sget-object v2, Lcom/android/internal/telephony/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_59
    iget-object v3, p0, Lcom/android/internal/telephony/CidManager;->mLastAllocatedCid:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    .line 167
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :catchall_62
    move-exception p0

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_62

    throw p0

    :cond_65
    return-void
.end method

.method public blacklist isAttachCid(II)Z
    .registers 3

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CidManager$ConnectionId;->isAttachCid(I)Z

    move-result p0

    return p0
.end method

.method public blacklist releaseCid(II)V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_33

    .line 177
    iget v0, p0, Lcom/android/internal/telephony/CidManager;->mMaxInterfaceCount:I

    if-ge p1, v0, :cond_33

    .line 178
    sget-object v0, Lcom/android/internal/telephony/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_27
    iget-object p0, p0, Lcom/android/internal/telephony/CidManager;->mConnectionId:[Lcom/android/internal/telephony/CidManager$ConnectionId;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/CidManager$ConnectionId;->release(I)V

    .line 180
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_30

    throw p0

    :cond_33
    :goto_33
    return-void
.end method
