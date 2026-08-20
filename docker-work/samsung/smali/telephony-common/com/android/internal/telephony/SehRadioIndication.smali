.class public Lcom/android/internal/telephony/SehRadioIndication;
.super Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;
.source "SehRadioIndication.java"


# static fields
.field public static final blacklist SETTINGS_GLOBAL:Ljava/lang/String; = "global"

.field public static final blacklist SETTINGS_SECURE:Ljava/lang/String; = "secure"

.field public static final blacklist SETTINGS_SYSTEM:Ljava/lang/String; = "system"

.field public static final blacklist SIM_APN_URI:Landroid/net/Uri;

.field public static final blacklist SPRINT_GLOBAL_APN:Ljava/lang/String; = "cinet.spcs"


# instance fields
.field blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const-string v0, "content://telephony/carriers/sim_apn_list"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SehRadioIndication;->SIM_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioIndication$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method public static blacklist arrayListToIntArray(Ljava/util/ArrayList;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 601
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
.end method

.method private blacklist createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;
    .registers 10

    .line 540
    iget-boolean v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isValid:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 541
    :cond_6
    new-instance v7, Landroid/telephony/ExtendedRegistrationInfo;

    iget v1, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->snapshotStatus:I

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRegState:I

    .line 542
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehRadioIndication;->getRegStateFromHalRegState(I)I

    move-result v2

    iget v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedDataRat:I

    iget v4, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->mobileOptionalRat:I

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->unprocessedVoiceRegState:I

    .line 545
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SehRadioIndication;->getRegStateFromHalRegState(I)I

    move-result v5

    iget-boolean v6, p1, Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;->isPsOnlyReg:Z

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

    .line 97
    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    const-string v4, "CUSTOMER_TEST_REQUEST"

    .line 101
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 102
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    const-string v5, " --es flag"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_70

    const-string v5, "There is space between command"

    .line 104
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 111
    array-length v4, v3

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    :goto_48
    if-ge v5, v4, :cond_67

    aget-object v9, v3, v5

    if-eqz v7, :cond_5b

    .line 113
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 114
    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    goto :goto_67

    .line 119
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

    .line 129
    invoke-static {v1, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_70
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist acbInfoChanged(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 139
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioIndication;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afd

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mAcbInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist callDetailsChanged(ILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;",
            ">;)V"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 609
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v0, "RIL_UNSOL_OEM_CALL_DETAILS_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 611
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;

    .line 615
    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;->extras:Ljava/util/ArrayList;

    if-eqz v2, :cond_42

    .line 616
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 617
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v1, :cond_40

    .line 619
    iget-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehCallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_40
    move-object v1, v2

    goto :goto_49

    .line 622
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string v2, "extras is null"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    .line 624
    :goto_49
    new-instance v0, Lcom/android/internal/telephony/SemCallDetails;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SemCallDetails;-><init>([Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 627
    :cond_53
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCallDetailsChangedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_61

    .line 628
    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_61
    return-void
.end method

.method public blacklist configModemCapabilityChangeNoti(ILvendor/samsung/hardware/radio/V2_0/SehConfigModemCapability;)V
    .registers 3

    return-void
.end method

.method public blacklist csFallback(II)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b16

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCsFallbackRegistant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_23

    .line 152
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist deviceReadyNoti(I)V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 219
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b00

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 221
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSmsDeviceReadyRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1b

    .line 222
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1b
    return-void
.end method

.method public blacklist eriInfoReceived(ILvendor/samsung/hardware/radio/V2_2/SehEriInfo;)V
    .registers 3

    .line 650
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 652
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "RIL_UNSOL_OEM_ERI_INFO_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist execute(ILjava/lang/String;)V
    .registers 9

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 471
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b52

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, ":"

    .line 474
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 475
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 476
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    .line 478
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v4, "execute cmd0: "

    if-eqz p2, :cond_51

    .line 479
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cmd1: broadcast -a "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_71

    .line 481
    :cond_51
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    :goto_71
    aget-object p2, v0, v2

    .line 484
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v1, "AM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    const-string v1, "LOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    goto :goto_e4

    :cond_87
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    aput-object v1, p2, v2

    const-string v1, "-c"

    aput-object v1, p2, v3

    aget-object v0, v0, v3

    aput-object v0, p2, p1

    .line 506
    :try_start_96
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    if-eqz p1, :cond_e4

    .line 507
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a3} :catch_a4
    .catch Ljava/lang/SecurityException; {:try_start_96 .. :try_end_a3} :catch_a4
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_a3} :catch_a4

    goto :goto_e4

    :catch_a4
    move-exception p1

    .line 509
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute is fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_e4

    .line 488
    :cond_bc
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "VZW"

    const-string p2, "USC"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d9

    aget-object p0, v0, v3

    .line 489
    invoke-static {p0}, Lcom/android/internal/telephony/SehRadioIndication;->processSpaceCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_e1

    :cond_d9
    aget-object p0, v0, v3

    const-string p1, " "

    .line 491
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 494
    :goto_e1
    invoke-static {p0}, Lcom/android/internal/telephony/Am;->main([Ljava/lang/String;)V

    :cond_e4
    :goto_e4
    return-void
.end method

.method public blacklist extendedRegistrationState(ILvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)V
    .registers 4

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 531
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b4e

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 533
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SemBaseCommands;->mExtendedRegStateRegistrants:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_1f

    .line 534
    new-instance v0, Landroid/os/AsyncResult;

    .line 535
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SehRadioIndication;->createExtendedRegistrationInfo(Lvendor/samsung/hardware/radio/V2_0/SehExtendedRegStateResult;)Landroid/telephony/ExtendedRegistrationInfo;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {v0, p2, p0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 534
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1f
    return-void
.end method

.method public blacklist imsPreferenceChanged(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 159
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioIndication;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b35

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mImsPrefNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1f

    .line 164
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1f
    return-void
.end method

.method public blacklist modemCapabilityIndication(ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;
    .registers 14

    .line 374
    new-instance v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v1, v1, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_17

    const/4 v2, 0x0

    .line 379
    aget v1, v1, v2

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    .line 382
    :goto_18
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    .line 383
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needApnProfileIndication invalid subid"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v3

    .line 388
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v2, v2, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v2, Lcom/android/internal/telephony/SehRadioIndication;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtered/subId/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "apn"

    const-string v7, "protocol"

    const-string v8, "user"

    const-string v9, "password"

    const-string v10, "authtype"

    const-string v11, "roaming_protocol"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_5d
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_5d} :catch_109
    .catchall {:try_start_27 .. :try_end_5d} :catchall_107

    if-eqz p1, :cond_101

    .line 392
    :try_start_5f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_101

    :cond_65
    const-string v1, "apn"

    .line 394
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cinet.spcs"

    .line 395
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_80

    :cond_78
    const-string v2, "cdma"

    .line 399
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 438
    :goto_80
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_65

    goto/16 :goto_101

    .line 402
    :cond_88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_8c
    .catch Landroid/database/SQLException; {:try_start_5f .. :try_end_8c} :catch_ff
    .catchall {:try_start_5f .. :try_end_8c} :catchall_12b

    const-string v4, ""

    if-eqz v2, :cond_93

    .line 403
    :try_start_90
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->apn:Ljava/lang/String;

    goto :goto_95

    .line 405
    :cond_93
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->apn:Ljava/lang/String;

    :goto_95
    const-string v1, "protocol"

    .line 407
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 409
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->proto:Ljava/lang/String;

    goto :goto_aa

    .line 411
    :cond_a8
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->proto:Ljava/lang/String;

    :goto_aa
    const-string v1, "roaming_protocol"

    .line 413
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 415
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->roamingProto:Ljava/lang/String;

    goto :goto_bf

    .line 417
    :cond_bd
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->roamingProto:Ljava/lang/String;

    :goto_bf
    const-string v1, "user"

    .line 419
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 421
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->user:Ljava/lang/String;

    goto :goto_d4

    .line 423
    :cond_d2
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->user:Ljava/lang/String;

    :goto_d4
    const-string v1, "password"

    .line 425
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 427
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->pw:Ljava/lang/String;

    goto :goto_e9

    .line 429
    :cond_e7
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->pw:Ljava/lang/String;

    :goto_e9
    const-string v1, "authtype"

    .line 431
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 433
    iput-object v4, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->auth:Ljava/lang/String;

    goto :goto_101

    .line 435
    :cond_fc
    iput-object v1, v0, Lvendor/samsung/hardware/radio/V2_0/SehApnProfile;->auth:Ljava/lang/String;
    :try_end_fe
    .catch Landroid/database/SQLException; {:try_start_90 .. :try_end_fe} :catch_ff
    .catchall {:try_start_90 .. :try_end_fe} :catchall_12b

    goto :goto_101

    :catch_ff
    move-exception v0

    goto :goto_10b

    :cond_101
    :goto_101
    if-eqz p1, :cond_106

    .line 446
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_106
    return-object v0

    :catchall_107
    move-exception p0

    goto :goto_12d

    :catch_109
    move-exception v0

    move-object p1, v3

    .line 442
    :goto_10b
    :try_start_10b
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needApnProfileIndication sql execption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_10b .. :try_end_125} :catchall_12b

    if-eqz p1, :cond_12a

    .line 446
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_12a
    return-object v3

    :catchall_12b
    move-exception p0

    move-object v3, p1

    :goto_12d
    if-eqz v3, :cond_132

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_132
    throw p0
.end method

.method public blacklist needPacketUsage(Ljava/lang/String;Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;)V
    .registers 5

    .line 573
    new-instance p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;

    invoke-direct {p0}, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;-><init>()V

    const-string v0, "rmnet"

    .line 575
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-wide/16 v0, 0x0

    .line 576
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->rxBytes:J

    .line 577
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->txBytes:J

    const/16 p1, 0x2c

    goto :goto_23

    .line 580
    :cond_16
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->rxBytes:J

    .line 581
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/V2_0/SehPacketUsage;->txBytes:J

    const/4 p1, 0x0

    .line 585
    :goto_23
    invoke-interface {p2, p1, p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioIndication$needPacketUsageCallback;->onValues(ILvendor/samsung/hardware/radio/V2_0/SehPacketUsage;)V

    return-void
.end method

.method public blacklist needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "system"

    .line 336
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_48

    :cond_16
    const-string v0, "global"

    .line 338
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_48

    :cond_2b
    const-string v0, "secure"

    .line 340
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 341
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_48

    .line 368
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needSettingValueIndication wrong table value."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_48
    return p0
.end method

.method public blacklist needTurnOnRadioIndication(I)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b44

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 193
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemRIL;->setAirplaneModeOff()V

    return-void
.end method

.method public blacklist nrBearerAllocationChanged(II)V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 316
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b48

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 318
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrBearerAllocationChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_23

    .line 319
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

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 591
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b54

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 593
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mNrIconTypeChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_23

    .line 594
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

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 326
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b49

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->m5gStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_23

    .line 329
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist phonebookInitCompleteIndication(I)V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b1b

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 211
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mPbInitCompleteRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_15

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_15
    return-void
.end method

.method public blacklist releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 277
    new-instance p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .line 279
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->size:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->size:I

    .line 280
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->dataLen:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    .line 281
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->params:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    .line 282
    iget v0, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->status:I

    iput v0, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    .line 283
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSsReleaseComplete;->data:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    .line 285
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2af9

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 287
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mReleaseCompleteMessageRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_34

    .line 288
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_34
    return-void
.end method

.method public blacklist rrcStateChanged(ILvendor/samsung/hardware/radio/V2_0/SehRrcStateInfo;)V
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 457
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b50

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 459
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1b

    .line 460
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1b
    return-void
.end method

.method public blacklist sapNotify(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 295
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    .line 296
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b05

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 298
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSapRegistant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_23

    .line 299
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist signalLevelInfoChanged(ILvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 519
    new-instance p1, Landroid/telephony/SignalBarInfo;

    invoke-direct {p1, p2}, Landroid/telephony/SignalBarInfo;-><init>(Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V

    .line 523
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSignalBarInfosRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_19

    .line 524
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_19
    return-void
.end method

.method public blacklist simCountMismatchedIndication(II)V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 268
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b32

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimCountMismatchRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_21

    .line 271
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_21
    return-void
.end method

.method public blacklist simOnOffStateChangedNotify(II)V
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 306
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b46

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 308
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimOnOffNotiRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_23

    .line 309
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_23
    return-void
.end method

.method public blacklist simPhonebookReadyIndication(I)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b0d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->unsljLog(I)V

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimPbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_15

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_15
    return-void
.end method

.method public blacklist simSwapStateChangedIndication(II)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 255
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b31

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mSimSwapRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_21

    .line 258
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_21
    return-void
.end method

.method public blacklist stkCallControlResultIndication(ILjava/lang/String;)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 242
    iget-object p1, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afb

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatCallControlResultRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1b

    .line 245
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1b
    return-void
.end method

.method public blacklist stkSmsSendResultIndication(II)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 232
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2afa

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 234
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mCatSendSmsResultRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_21

    .line 235
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_21
    return-void
.end method

.method public blacklist timerStatusChangedInd(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 175
    invoke-static {p2}, Lcom/android/internal/telephony/SehRadioIndication;->arrayListToIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b3b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 179
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1f

    .line 180
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1f
    return-void
.end method

.method public blacklist vendorConfigurationChanged(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 637
    new-instance p1, Ljava/util/ArrayList;

    .line 638
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;

    .line 641
    new-instance v1, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v2, v0, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v0, v0, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 644
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mVendorConfigurationChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_3a

    .line 645
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_3a
    return-void
.end method

.method public blacklist voiceRadioBearerHandoverStatusChanged(II)V
    .registers 3

    return-void
.end method
