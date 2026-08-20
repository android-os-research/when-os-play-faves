.class public Lcom/android/internal/telephony/SehNetworkIndication;
.super Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;
.source "SehNetworkIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;
    .registers 10

    .line 225
    iget-boolean v0, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->isValid:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_6
    new-instance v7, Landroid/telephony/ExtendedRegistrationInfo;

    iget v1, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->snapshotStatus:I

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->unprocessedDataRegState:I

    .line 228
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehNetworkIndication;->getRegStateFromHalRegState(I)I

    move-result v2

    iget v3, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->unprocessedDataRat:I

    iget v4, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->mobileOptionalRat:I

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    .line 231
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehNetworkIndication;->getRegStateFromHalRegState(I)I

    move-result v5

    iget-boolean v6, p1, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->isPsOnlyReg:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ExtendedRegistrationInfo;-><init>(IIIIIZ)V

    return-object v7
.end method

.method private blacklist getRegStateFromHalRegState(I)I
    .registers 5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_17

    const/4 p0, 0x2

    if-eq p1, p0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    const/4 v2, 0x5

    if-eq p1, v2, :cond_14

    packed-switch p1, :pswitch_data_18

    const/4 p0, 0x0

    return p0

    :cond_14
    return v2

    :cond_15
    :pswitch_15
    return v1

    :cond_16
    :pswitch_16
    return v0

    :cond_17
    :pswitch_17
    return p0

    :pswitch_data_18
    .packed-switch 0xc
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public static blacklist processSpaceCommand(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const-string v0, "/_/"

    const-string v1, "command"

    const-string v2, " "

    const-string v3, "ATCMD"

    const-string v4, "processSpaceCommand"

    .line 61
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    const-string v4, "CUSTOMER_TEST_REQUEST"

    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    const-string v5, " --es flag"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_70

    const-string v5, "There is space between command"

    .line 68
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    array-length v4, v3

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    :goto_48
    if-ge v5, v4, :cond_67

    aget-object v9, v3, v5

    if-eqz v7, :cond_5b

    .line 77
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 78
    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    goto :goto_67

    .line 83
    :cond_5b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5f} :catch_68

    if-eqz v9, :cond_62

    move v7, v6

    :cond_62
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_67
    :goto_67
    return-object v3

    :catch_68
    move-exception v0

    const-string v1, "SehRILJ"

    const-string v3, "Unexpected exception in processSpaceCommand"

    .line 93
    invoke-static {v1, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_70
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist acbInfoChanged(I[I)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 103
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1b

    .line 106
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1b
    return-void
.end method

.method public blacklist callDetailsChanged(I[Lvendor/samsung/hardware/radio/network/SehCallDetails;)V
    .registers 11

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 271
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v0, "RIL_UNSOL_OEM_CALL_DETAILS_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    const/4 v3, 0x0

    if-ge v2, v0, :cond_42

    aget-object v4, p2, v2

    .line 277
    iget-object v5, v4, Lvendor/samsung/hardware/radio/network/SehCallDetails;->extras:[Ljava/lang/String;

    if-eqz v5, :cond_2f

    .line 278
    array-length v3, v5

    .line 279
    new-array v5, v3, [Ljava/lang/String;

    move v6, v1

    :goto_22
    if-ge v6, v3, :cond_2d

    .line 281
    iget-object v7, v4, Lvendor/samsung/hardware/radio/network/SehCallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_2d
    move-object v3, v5

    goto :goto_36

    .line 284
    :cond_2f
    iget-object v4, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v5, "callDetailsChanged - extras is null"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 286
    :goto_36
    new-instance v4, Lcom/android/internal/telephony/SemCallDetails;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/internal/telephony/SemCallDetails;-><init>([Ljava/lang/String;Z)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 289
    :cond_42
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_50

    .line 290
    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_50
    return-void
.end method

.method public blacklist csFallback(II)V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 113
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b16

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_23

    .line 116
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist currentNetworkScanIsRequested(IB)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist eriInfoReceived(ILvendor/samsung/hardware/radio/network/SehEriInfo;)V
    .registers 3

    .line 311
    iget-object p2, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 313
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "RIL_UNSOL_OEM_ERI_INFO_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist execute(ILjava/lang/String;)V
    .registers 8

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 161
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b52

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, ":"

    .line 164
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    .line 168
    iget-object p2, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute cmd0: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cmd1: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    aget-object p2, v0, v2

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v1, "AM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    const-string v1, "LOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_60

    goto :goto_bd

    :cond_60
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    aput-object v1, p2, v2

    const-string v1, "-c"

    aput-object v1, p2, v3

    aget-object v0, v0, v3

    aput-object v0, p2, p1

    .line 191
    :try_start_6f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    if-eqz p1, :cond_bd

    .line 192
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_7d
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_7c} :catch_7d
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_7c} :catch_7d

    goto :goto_bd

    :catch_7d
    move-exception p1

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute is fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_bd

    .line 174
    :cond_95
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "VZW"

    const-string p2, "USC"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b2

    aget-object p0, v0, v3

    .line 175
    invoke-static {p0}, Lcom/android/internal/telephony/SehNetworkIndication;->processSpaceCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_ba

    :cond_b2
    aget-object p0, v0, v3

    const-string p1, " "

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 180
    :goto_ba
    invoke-static {p0}, Lcom/android/internal/telephony/Am;->main([Ljava/lang/String;)V

    :cond_bd
    :goto_bd
    return-void
.end method

.method public blacklist extendedRegistrationState(ILvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 216
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b4e

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 218
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_1f

    .line 219
    new-instance v0, Landroid/os/AsyncResult;

    .line 220
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SehNetworkIndication;->createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {v0, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 219
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1f
    return-void
.end method

.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "b4ced15ab6543a8986e50e5ed78438eb45602e23"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist imsPreferenceChanged(I[I)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 123
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b35

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1b

    .line 126
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1b
    return-void
.end method

.method public blacklist needTurnOnRadioIndication(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 133
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b44

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemRIL;->setAirplaneModeOff()V

    return-void
.end method

.method public blacklist nrBearerAllocationChanged(II)V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b48

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrBearerAllocationChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_23

    .line 144
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist nrIconTypeChanged(II)V
    .registers 5

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 261
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b54

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 263
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_23

    .line 264
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist nrNetworkTypeAdded(II)V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b49

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->m5gStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_23

    .line 154
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist roamingNetworkScanIsRequested(IB)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist signalLevelInfoChanged(ILvendor/samsung/hardware/radio/network/SehSignalBar;)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 204
    new-instance p1, Landroid/telephony/SignalBarInfo;

    invoke-direct {p1, p2}, Landroid/telephony/SignalBarInfo;-><init>(Lvendor/samsung/hardware/radio/network/SehSignalBar;)V

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_19

    .line 209
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_19
    return-void
.end method

.method public blacklist vendorConfigurationChanged(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .registers 8

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1f

    aget-object v2, p2, v1

    .line 302
    new-instance v3, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v2, v2, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 305
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/SehNetworkIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_2e

    .line 306
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_2e
    return-void
.end method
