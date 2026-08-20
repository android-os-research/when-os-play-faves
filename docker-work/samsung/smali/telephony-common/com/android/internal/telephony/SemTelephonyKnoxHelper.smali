.class public Lcom/android/internal/telephony/SemTelephonyKnoxHelper;
.super Ljava/lang/Object;
.source "SemTelephonyKnoxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerDummy;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelper$RestrictionPolicyDummy;,
        Lcom/android/internal/telephony/SemTelephonyKnoxHelper$DeviceInventoryDummy;
    }
.end annotation


# static fields
.field protected static final blacklist DEVICE_INFO_DROPPED_CALL:Ljava/lang/String; = "dropped"

.field protected static final blacklist DEVICE_INFO_MISSED_CALL:Ljava/lang/String; = "missed"

.field protected static final blacklist DEVICE_INFO_SUCCESS_CALL:Ljava/lang/String; = "success"


# instance fields
.field private blacklist mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

.field private blacklist mConnWaitActive:[Ljava/lang/Boolean;

.field private final blacklist mConnWaitActiveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

.field private blacklist mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActiveMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->init()V

    return-void
.end method

.method private blacklist getPreconditionForCallStateChangedIntent()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->getProKioskState()Z

    move-result p0

    goto :goto_d

    :cond_c
    move p0, v0

    .line 97
    :goto_d
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->getInstance()Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 99
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->getExtendedCallInfoState()Z

    move-result v0

    .line 102
    :cond_17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private blacklist init()V
    .registers 2

    .line 74
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    .line 75
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 76
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationRestrictionsManager()Landroid/sec/enterprise/ApplicationRestrictionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string p0, "SemTelephonyKnoxHelper"

    .line 319
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static blacklist sendPhoneReadyInternalIntent(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 132
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addImsPhoneConnection(Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 5

    .line 301
    invoke-virtual {p2}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v0

    if-nez v0, :cond_54

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActiveMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActiveMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_15
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_54

    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActiveMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 306
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActiveMap:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Knox increment call count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "INCOMING"

    goto :goto_43

    :cond_41
    const-string v0, "OUTGOING"

    :goto_43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->log(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->addNumberOfCalls(Z)V

    :cond_54
    return-void
.end method

.method public blacklist addNumberOfCalls(Z)V
    .registers 2

    .line 149
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_b

    .line 154
    invoke-virtual {p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    goto :goto_e

    .line 156
    :cond_b
    invoke-virtual {p0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    :goto_e
    return-void
.end method

.method protected blacklist getApplicationRestrictionsManager(Landroid/content/Context;)Landroid/sec/enterprise/ApplicationRestrictionsManager;
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    return-object p0
.end method

.method protected blacklist getRestrictionPolicy(Landroid/content/Context;)Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mRestrictionPolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    return-object p0
.end method

.method protected blacklist isApplicationRestrictedForCall(I)Z
    .registers 5

    .line 232
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mApplicationRestrictionsManager:Landroid/sec/enterprise/ApplicationRestrictionsManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    const-string v1, "com.samsung.android.app.telephonyui"

    .line 233
    invoke-virtual {p0, v1, v0}, Landroid/sec/enterprise/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 234
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "telephonyui_simcard_manager_call_preference"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 235
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    const-string v1, "0"

    .line 236
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz p1, :cond_3d

    :cond_31
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_3c

    if-eq p1, v1, :cond_3d

    :cond_3c
    return v1

    :cond_3d
    return v0
.end method

.method public blacklist logCallDisconnect(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V
    .registers 20

    move/from16 v0, p2

    if-eqz p1, :cond_8f

    if-eqz v0, :cond_8f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_78

    const/16 v1, 0x8

    if-eq v0, v1, :cond_60

    const/16 v1, 0x9

    if-eq v0, v1, :cond_60

    const/16 v1, 0xc

    if-eq v0, v1, :cond_60

    const/16 v1, 0xd

    if-eq v0, v1, :cond_60

    const/16 v1, 0x12

    if-eq v0, v1, :cond_60

    const/16 v1, 0x24

    if-eq v0, v1, :cond_60

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_8f

    const/16 v1, 0x33

    if-eq v0, v1, :cond_8f

    packed-switch v0, :pswitch_data_90

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ConnectionExt;->isEmergencyImsConnection()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_40

    const/16 v1, 0x10

    if-eq v0, v1, :cond_48

    .line 200
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_8f

    .line 201
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v8

    const-string v2, "success"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto :goto_8f

    .line 183
    :cond_60
    :pswitch_60
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v16

    const-string v10, "dropped"

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto :goto_8f

    .line 170
    :cond_78
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v7

    const-string v1, "missed"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_8f
    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x3a
        :pswitch_60
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method protected blacklist logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 15

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    if-nez v0, :cond_5

    return-void

    .line 141
    :cond_5
    invoke-virtual {v0, p1}, Landroid/sec/enterprise/DeviceInventory;->addCallsCount(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual {v0}, Landroid/sec/enterprise/DeviceInventory;->isCallingCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v2, p2

    move-object v5, p1

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Landroid/sec/enterprise/DeviceInventory;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_20
    return-void
.end method

.method protected blacklist logCallEventInHandlePollCalls(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/GsmCdmaConnection;Z)V
    .registers 14

    .line 283
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    const-string v1, "success"

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_1b

    .line 284
    iget p1, p2, Lcom/android/internal/telephony/Connection;->mCause:I

    if-ne p1, v4, :cond_18

    goto :goto_4d

    :cond_18
    const-string v1, "missed"

    goto :goto_4d

    .line 285
    :cond_1b
    iget v0, p2, Lcom/android/internal/telephony/Connection;->mCause:I

    const/4 v5, 0x7

    if-eq v0, v4, :cond_22

    if-ne v0, v5, :cond_4c

    .line 287
    :cond_22
    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result p1

    if-eqz p3, :cond_37

    .line 288
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-eqz v0, :cond_37

    if-nez p1, :cond_37

    goto :goto_4d

    :cond_37
    if-nez p3, :cond_4c

    .line 290
    iget p3, p2, Lcom/android/internal/telephony/Connection;->mCause:I

    if-ne p3, v4, :cond_47

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v6

    cmp-long p3, v6, v2

    if-eqz p3, :cond_47

    if-eqz p1, :cond_4d

    :cond_47
    iget p1, p2, Lcom/android/internal/telephony/Connection;->mCause:I

    if-ne p1, v5, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :cond_4d
    :goto_4d
    move-object v3, v1

    .line 294
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 295
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v9

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    :cond_68
    return-void
.end method

.method public blacklist removeImsPhoneConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActiveMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected blacklist resetGsmCdmaConnection(I)V
    .registers 5

    .line 247
    new-array v0, p1, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_10

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method protected blacklist sendCallStateChangedIntent(Landroid/content/Context;Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Call$State;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 215
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getPreconditionForCallStateChangedIntent()Landroid/util/Pair;

    move-result-object p0

    .line 217
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 218
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz v0, :cond_37

    if-eqz p0, :cond_37

    .line 223
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.action.CALL_STATE_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneConstants$State;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.sec.intent.extra.PHONE_STATE"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.sec.intent.extra.CALL_STATE"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_37
    return-void
.end method

.method protected blacklist updateGsmCdmaConnection(Lcom/android/internal/telephony/GsmCdmaPhone;ILcom/android/internal/telephony/GsmCdmaConnection;)V
    .registers 6

    if-nez p3, :cond_a

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p0, p2

    goto/16 :goto_7d

    .line 258
    :cond_a
    invoke-virtual {p3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_61

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_61

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_61

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1f

    goto :goto_61

    .line 268
    :cond_1f
    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, p1, :cond_5a

    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ADD CALL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "INCOMING"

    goto :goto_42

    :cond_40
    const-string v0, "OUTGOING"

    :goto_42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->log(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->addNumberOfCalls(Z)V

    .line 271
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p0, p2

    goto :goto_7d

    .line 273
    :cond_5a
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p0, p2

    goto :goto_7d

    .line 262
    :cond_61
    :goto_61
    invoke-virtual {p3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getOrigDialString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/internal/telephony/SemCallTrackerHelper;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_77

    const-string p1, "Emergency call"

    .line 263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->log(Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p0, p2

    goto :goto_7d

    .line 266
    :cond_77
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->mConnWaitActive:[Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, p0, p2

    :goto_7d
    return-void
.end method
