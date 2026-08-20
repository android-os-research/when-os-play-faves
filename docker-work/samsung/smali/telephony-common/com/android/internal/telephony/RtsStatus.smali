.class public Lcom/android/internal/telephony/RtsStatus;
.super Ljava/lang/Object;
.source "RtsStatus.java"


# static fields
.field public static final blacklist CALL_FAILED_LOWBATT:I = 0x73

.field public static final blacklist EMERGENCY_ONLY:I = 0x2

.field public static final blacklist ETC_CAUSE_REJECT:I = 0x6d

.field public static final blacklist FREQ_SEARCHING:I = 0x6e

.field public static final blacklist GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:I = 0x6c

.field public static final blacklist GPRS_SERVICE_NOT_ALLOWED:I = 0x6a

.field public static final blacklist GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:I = 0x6b

.field public static final blacklist ILLEGAL_ME:I = 0x66

.field public static final blacklist ILLEGAL_MS:I = 0x65

.field public static final blacklist IMSI_UNKNOWN:I = 0x64

.field public static final blacklist IMS_NOT_REGISTERED:I = 0x76

.field public static final blacklist IMS_SERVICE_IMPOSSIBLE:I = 0x77

.field public static final blacklist LGT_REG_AUTH_FAIL:I = 0x6f

.field public static final blacklist LOCATION_REGSTERING:I = 0x68

.field public static final blacklist LOCATION_REG_FAIL:I = 0x67

.field public static final blacklist NETWORK_REG_FAIL:I = 0x69

.field public static final blacklist NOT_REGISTERED_NUMBER:I = 0x70

.field public static final blacklist OUT_OF_3G_NETWORK:I = 0x75

.field public static final blacklist OUT_OF_SERVICE:I = 0x1

.field public static final blacklist RESTRICT_CALL_FACTORY_MODE:I = 0x72

.field public static final blacklist RESTRICT_CALL_FDN_MODE:I = 0x71

.field public static final blacklist RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:I = 0x74

.field public static final blacklist RTS_SUCCESS:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field protected blacklist mPhoneId:I

.field private blacklist mRtsValues:[Ljava/lang/Integer;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 54
    iput-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mContext:Landroid/content/Context;

    .line 56
    iput p2, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    return-void
.end method

.method private blacklist checkFollowOnRequestState(ZZ)Z
    .registers 11

    const-string v0, "KTT"

    const/16 v1, 0x16

    const/16 v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz p1, :cond_3d

    .line 520
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    return v4

    .line 523
    :cond_1c
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_3a

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_3a

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_196

    :cond_3a
    move v4, v5

    goto/16 :goto_196

    :cond_3d
    if-nez p2, :cond_196

    .line 525
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SKT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x3

    if-eqz p1, :cond_da

    .line 526
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_6e

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_6e

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_6e

    move p1, v5

    goto :goto_6f

    :cond_6e
    move p1, v4

    .line 527
    :goto_6f
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_b8

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v7, 0x7

    if-eq v0, v7, :cond_b8

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    .line 528
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v7, 0xe

    if-eq v0, v7, :cond_b8

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_b8

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_b8

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, v0, p2

    .line 529
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_d7

    :cond_b8
    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v6

    .line 530
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_d6

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_d6

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_d7

    :cond_d6
    :goto_d6
    move v4, v5

    :cond_d7
    or-int/2addr v4, p1

    goto/16 :goto_196

    .line 531
    :cond_da
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_149

    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    .line 532
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KOO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    goto :goto_149

    .line 536
    :cond_f5
    iget p1, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LGT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_196

    .line 537
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_129

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_129

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_129

    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p1

    if-nez p1, :cond_129

    move p1, v5

    goto :goto_12a

    :cond_129
    move p1, v4

    .line 538
    :goto_12a
    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_d6

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_d6

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_d7

    goto :goto_d6

    .line 534
    :cond_149
    :goto_149
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_16f

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_16f

    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_16f

    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p1

    if-nez p1, :cond_16f

    move p1, v5

    goto :goto_170

    :cond_16f
    move p1, v4

    .line 535
    :goto_170
    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_18e

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_18e

    iget-object p2, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_d7

    :cond_18e
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p0

    if-nez p0, :cond_d7

    goto/16 :goto_d6

    :cond_196
    :goto_196
    return v4
.end method

.method private blacklist isDomesticPlmn()Z
    .registers 3

    .line 578
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->current_plmn()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "domestic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isLteDomain()Z
    .registers 3

    .line 564
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->reject_rat()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "L"

    .line 570
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRtsStatus()Z
    .registers 9

    .line 545
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v0, :cond_4b

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_4a

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 547
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 548
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_4a

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v2

    .line 549
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_49

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_49

    goto :goto_4a

    :cond_49
    move v4, v6

    :cond_4a
    :goto_4a
    return v4

    .line 550
    :cond_4b
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "KTT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    .line 551
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "KOO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    goto :goto_a2

    .line 555
    :cond_68
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "LGT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_a0

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_a0

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 557
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_a0

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_9f

    goto :goto_a0

    :cond_9f
    move v4, v6

    :cond_a0
    :goto_a0
    return v4

    :cond_a1
    return v6

    .line 552
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_cc

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v6

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_cc

    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v2

    .line 554
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_cb

    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_cb

    goto :goto_cc

    :cond_cb
    move v4, v6

    :cond_cc
    :goto_cc
    return v4
.end method

.method private blacklist isSimStateAbsent()Z
    .registers 3

    .line 582
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ABSENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getKOORtsState(ZZ)I
    .registers 10

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result p2

    const-string v0, "GsmCdmaPhone-RtsStatus"

    if-eqz p2, :cond_f

    const-string p0, "FOLLOW_ON_REQ"

    .line 447
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f
    const/16 p2, 0x16

    const/16 v1, 0x11

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p1, :cond_33

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_30

    if-eq p1, v3, :cond_30

    if-eq p1, v2, :cond_30

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2f

    if-eq p1, v1, :cond_2f

    if-eq p1, p2, :cond_2f

    goto :goto_3f

    :cond_2f
    return v4

    :cond_30
    const/16 p0, 0x70

    return p0

    .line 465
    :cond_33
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result p1

    if-eqz p1, :cond_3f

    const-string p0, "SIM_STATE_ABSENT"

    .line 466
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 471
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v4, :cond_a4

    if-eq p1, v3, :cond_a4

    if-eq p1, v2, :cond_a4

    const/16 v5, 0x8

    const/16 v6, 0x67

    if-eq p1, v5, :cond_a3

    const/16 v5, 0xf

    if-eq p1, v5, :cond_a3

    const/16 v5, 0xfe

    if-eq p1, v5, :cond_a3

    const/16 v5, 0xff

    if-eq p1, v5, :cond_a3

    packed-switch p1, :pswitch_data_a6

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 490
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_82

    .line 492
    :cond_7a
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_82
    if-eqz p0, :cond_a1

    const/16 p1, 0xe

    if-eq p0, p1, :cond_9e

    if-eq p0, p2, :cond_9b

    if-eq p0, v4, :cond_9a

    if-eq p0, v3, :cond_9a

    if-eq p0, v2, :cond_9a

    const/4 p1, 0x7

    if-eq p0, p1, :cond_9e

    const/16 p1, 0x10

    if-eq p0, p1, :cond_9b

    if-eq p0, v1, :cond_9b

    return v6

    :cond_9a
    return v0

    :cond_9b
    const/16 p0, 0x68

    return p0

    :cond_9e
    const/16 p0, 0x6a

    return p0

    :cond_a1
    const/4 p0, -0x1

    return p0

    :cond_a3
    :pswitch_a3
    return v6

    :cond_a4
    return v0

    nop

    :pswitch_data_a6
    .packed-switch 0xb
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
    .end packed-switch
.end method

.method public blacklist getKTTRtsState(ZZ)I
    .registers 20

    move-object/from16 v0, p0

    .line 163
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result v1

    const-string v2, "GsmCdmaPhone-RtsStatus"

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    const-string v0, "FOLLOW_ON_REQ"

    .line 164
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 168
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RtsStatus;->isLteDomain()Z

    move-result v1

    const/16 v5, 0xfe

    const/16 v6, 0x6e

    const/16 v9, 0xff

    const/16 v10, 0x16

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/16 v15, 0x68

    const/4 v4, 0x2

    const/4 v8, 0x3

    const/16 v16, 0x69

    if-nez p1, :cond_e3

    if-nez p2, :cond_37

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result v3

    if-eqz v3, :cond_a7

    const-string v0, "SIM_STATE_ABSENT"

    .line 173
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_37
    if-eqz p2, :cond_a7

    .line 176
    iget-object v7, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v7, v7, v3

    .line 177
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6f

    iget-object v7, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v7, v7, v3

    .line 178
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_6f

    iget-object v7, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v7, v7, v3

    .line 179
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v8, :cond_6f

    iget-object v7, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v7, v7, v3

    .line 180
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v14, 0xc

    if-eq v7, v14, :cond_6f

    iget-object v7, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v3, v7, v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0xd

    if-ne v3, v7, :cond_a7

    .line 182
    :cond_6f
    iget-object v3, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_a1

    if-eq v3, v8, :cond_9e

    if-eq v3, v13, :cond_9b

    if-eq v3, v12, :cond_9a

    if-eq v3, v11, :cond_95

    const/16 v7, 0x13

    if-eq v3, v7, :cond_94

    if-eq v3, v10, :cond_94

    if-eq v3, v5, :cond_94

    if-eq v3, v9, :cond_93

    packed-switch v3, :pswitch_data_15a

    goto :goto_a7

    :pswitch_8f
    if-eqz v1, :cond_92

    return v16

    :cond_92
    return v15

    :cond_93
    return v6

    :cond_94
    return v15

    :cond_95
    if-eqz v1, :cond_9a

    const/16 v0, 0x64

    return v0

    :cond_9a
    :pswitch_9a
    return v16

    :cond_9b
    const/16 v0, 0x66

    return v0

    :cond_9e
    const/16 v0, 0x65

    return v0

    :cond_a1
    const/16 v0, 0x64

    if-eqz v1, :cond_a6

    return v16

    :cond_a6
    return v0

    .line 215
    :cond_a7
    :goto_a7
    iget-object v3, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_dd

    if-eq v3, v8, :cond_da

    if-eq v3, v13, :cond_d7

    if-eq v3, v12, :cond_d1

    if-eq v3, v11, :cond_cb

    if-eq v3, v10, :cond_ca

    if-eq v3, v5, :cond_ca

    if-eq v3, v9, :cond_c9

    packed-switch v3, :pswitch_data_16c

    goto :goto_e3

    :pswitch_c4
    if-eqz v1, :cond_c7

    return v16

    :cond_c7
    return v15

    :pswitch_c8
    return v16

    :cond_c9
    return v6

    :cond_ca
    return v15

    :cond_cb
    if-eqz v1, :cond_d0

    const/16 v0, 0x64

    return v0

    :cond_d0
    return v16

    :cond_d1
    :pswitch_d1
    if-eqz v1, :cond_d6

    const/16 v0, 0x67

    return v0

    :cond_d6
    return v16

    :cond_d7
    const/16 v0, 0x66

    return v0

    :cond_da
    const/16 v0, 0x65

    return v0

    :cond_dd
    const/16 v0, 0x64

    if-eqz v1, :cond_e2

    return v16

    :cond_e2
    return v0

    .line 249
    :cond_e3
    :goto_e3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result v1

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getKTCallStatusCode - isRtsStatus: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_ff

    if-eqz v1, :cond_147

    :cond_ff
    if-nez p2, :cond_12c

    .line 253
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_129

    if-eq v0, v8, :cond_126

    if-eq v0, v13, :cond_123

    if-eq v0, v12, :cond_11e

    if-eq v0, v11, :cond_11d

    if-eq v0, v10, :cond_11c

    if-eq v0, v9, :cond_11b

    packed-switch v0, :pswitch_data_17e

    goto :goto_147

    :cond_11b
    return v6

    :cond_11c
    :pswitch_11c
    return v15

    :cond_11d
    :pswitch_11d
    return v16

    :cond_11e
    :pswitch_11e
    if-nez p1, :cond_147

    const/16 v0, 0x67

    return v0

    :cond_123
    const/16 v0, 0x66

    return v0

    :cond_126
    const/16 v0, 0x65

    return v0

    :cond_129
    const/16 v0, 0x64

    return v0

    .line 282
    :cond_12c
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_156

    if-eq v0, v8, :cond_153

    if-eq v0, v13, :cond_150

    if-eq v0, v12, :cond_14f

    if-eq v0, v11, :cond_149

    if-eq v0, v10, :cond_14d

    if-eq v0, v5, :cond_14d

    if-eq v0, v9, :cond_14c

    packed-switch v0, :pswitch_data_190

    :cond_147
    :goto_147
    const/4 v0, -0x1

    return v0

    :cond_149
    :pswitch_149
    const/16 v0, 0x67

    goto :goto_14e

    :cond_14c
    return v6

    :cond_14d
    :pswitch_14d
    return v15

    :goto_14e
    return v0

    :cond_14f
    :pswitch_14f
    return v16

    :cond_150
    const/16 v0, 0x66

    return v0

    :cond_153
    const/16 v0, 0x65

    return v0

    :cond_156
    const/16 v0, 0x64

    return v0

    nop

    :pswitch_data_15a
    .packed-switch 0xb
        :pswitch_9a
        :pswitch_9a
        :pswitch_9a
        :pswitch_9a
        :pswitch_9a
        :pswitch_8f
        :pswitch_8f
    .end packed-switch

    :pswitch_data_16c
    .packed-switch 0xb
        :pswitch_c8
        :pswitch_c8
        :pswitch_c8
        :pswitch_d1
        :pswitch_c8
        :pswitch_c4
        :pswitch_c4
    .end packed-switch

    :pswitch_data_17e
    .packed-switch 0xb
        :pswitch_11d
        :pswitch_11d
        :pswitch_11d
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11c
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0xb
        :pswitch_149
        :pswitch_149
        :pswitch_149
        :pswitch_14f
        :pswitch_149
        :pswitch_14d
        :pswitch_14d
    .end packed-switch
.end method

.method public blacklist getKoreaRtsState(ZZZZZ)I
    .registers 11

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/telephony/RtsStatus;->readRtsValue()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKoreaRtsState - isInsvc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isImsCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCdmaPhone-RtsStatus"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "KTT"

    const/4 v3, -0x1

    if-eqz v0, :cond_47

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->getSKTRtsState(ZZ)I

    move-result p1

    goto :goto_7f

    .line 84
    :cond_47
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->getKTTRtsState(ZZ)I

    move-result p1

    goto :goto_7f

    .line 86
    :cond_58
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LGT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RtsStatus;->getLGTRtsState(ZZZ)I

    move-result p1

    goto :goto_7f

    .line 88
    :cond_6b
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "KOO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->getKOORtsState(ZZ)I

    move-result p1

    goto :goto_7f

    :cond_7e
    move p1, v3

    :goto_7f
    if-ne p1, v3, :cond_95

    if-eqz p3, :cond_95

    if-eqz p4, :cond_95

    .line 93
    iget p0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_95

    if-nez p5, :cond_95

    const/16 p1, 0x74

    .line 99
    :cond_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getKoreaRtsState - rtsValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public blacklist getLGTRtsState(ZZZ)I
    .registers 21

    move-object/from16 v0, p0

    .line 316
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result v1

    const-string v2, "GsmCdmaPhone-RtsStatus"

    if-eqz v1, :cond_11

    const-string v0, "FOLLOW_ON_REQ"

    .line 317
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_11
    const/16 v1, 0x13

    const/16 v3, 0x6e

    const/16 v4, 0x68

    const/16 v5, 0x6b

    const/16 v6, 0x67

    const/16 v7, 0x6c

    const/16 v8, 0x66

    const/16 v11, 0xff

    const/16 v12, 0x16

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x6a

    const/4 v10, 0x2

    const/4 v9, 0x3

    if-eqz p1, :cond_70

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RtsStatus;->isDomesticPlmn()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 323
    iget-object v2, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_10f

    .line 324
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_10f

    return v16

    .line 329
    :cond_48
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_6d

    if-eq v0, v9, :cond_6a

    if-eq v0, v15, :cond_69

    if-eq v0, v14, :cond_68

    if-eq v0, v13, :cond_67

    if-eq v0, v12, :cond_66

    if-eq v0, v11, :cond_65

    packed-switch v0, :pswitch_data_112

    goto/16 :goto_10f

    :pswitch_63
    return v5

    :pswitch_64
    return v6

    :cond_65
    return v3

    :cond_66
    :pswitch_66
    return v4

    :cond_67
    return v7

    :cond_68
    return v16

    :cond_69
    return v8

    :cond_6a
    const/16 v0, 0x65

    return v0

    :cond_6d
    const/16 v0, 0x64

    return v0

    .line 358
    :cond_70
    iget-object v3, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7f

    if-nez p3, :cond_7f

    const/16 v0, 0x76

    return v0

    :cond_7f
    if-nez p2, :cond_8d

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result v3

    if-eqz v3, :cond_8d

    const-string v0, "SIM_STATE_ABSENT"

    .line 365
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 370
    :cond_8d
    iget-object v2, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_cf

    .line 371
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_cc

    if-eq v0, v9, :cond_c9

    if-eq v0, v15, :cond_c8

    if-eq v0, v14, :cond_c7

    if-eq v0, v13, :cond_c6

    if-eq v0, v12, :cond_c5

    const/16 v1, 0x63

    if-eq v0, v1, :cond_c2

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_c2

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_c2

    if-eq v0, v11, :cond_c2

    packed-switch v0, :pswitch_data_124

    packed-switch v0, :pswitch_data_136

    goto :goto_10f

    :pswitch_c0
    return v5

    :pswitch_c1
    return v6

    :cond_c2
    :pswitch_c2
    const/16 v0, 0x6d

    return v0

    :cond_c5
    :pswitch_c5
    return v4

    :cond_c6
    return v7

    :cond_c7
    return v16

    :cond_c8
    return v8

    :cond_c9
    const/16 v0, 0x65

    return v0

    :cond_cc
    const/16 v0, 0x64

    return v0

    .line 404
    :cond_cf
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/RtsStatus;->isDomesticPlmn()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 407
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_10f

    return v16

    .line 411
    :cond_e6
    iget-object v0, v0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_10c

    if-eq v0, v9, :cond_109

    if-eq v0, v15, :cond_108

    if-eq v0, v14, :cond_107

    if-eq v0, v13, :cond_106

    if-eq v0, v12, :cond_105

    if-eq v0, v11, :cond_102

    packed-switch v0, :pswitch_data_140

    goto :goto_10f

    :pswitch_100
    return v5

    :pswitch_101
    return v6

    :cond_102
    const/16 v0, 0x6e

    return v0

    :cond_105
    :pswitch_105
    return v4

    :cond_106
    return v7

    :cond_107
    return v16

    :cond_108
    return v8

    :cond_109
    const/16 v0, 0x65

    return v0

    :cond_10c
    const/16 v0, 0x64

    return v0

    :cond_10f
    :goto_10f
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_112
    .packed-switch 0xb
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_63
        :pswitch_64
        :pswitch_66
        :pswitch_66
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0xb
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
        :pswitch_c0
        :pswitch_c1
        :pswitch_c5
        :pswitch_c5
    .end packed-switch

    :pswitch_data_136
    .packed-switch 0x5f
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0xb
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_100
        :pswitch_101
        :pswitch_105
        :pswitch_105
    .end packed-switch
.end method

.method public blacklist getSKTRtsState(ZZ)I
    .registers 9

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RtsStatus;->checkFollowOnRequestState(ZZ)Z

    move-result v0

    const-string v1, "GsmCdmaPhone-RtsStatus"

    if-eqz v0, :cond_f

    const-string p0, "FOLLOW_ON_REQ"

    .line 106
    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_f
    const/16 v0, 0x70

    const/16 v2, 0x16

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz p1, :cond_33

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v5, :cond_32

    if-eq p0, v4, :cond_31

    if-eq p0, v3, :cond_31

    const/16 p1, 0xb

    if-eq p0, p1, :cond_31

    const/16 p1, 0x11

    if-eq p0, p1, :cond_31

    if-eq p0, v2, :cond_31

    goto :goto_6d

    :cond_31
    return v5

    :cond_32
    return v0

    .line 124
    :cond_33
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isRtsStatus()Z

    move-result p1

    if-nez p2, :cond_53

    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/RtsStatus;->isSimStateAbsent()Z

    move-result p2

    if-eqz p2, :cond_45

    const-string p0, "SIM_STATE_ABSENT"

    .line 127
    invoke-static {v1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_45
    if-eqz p1, :cond_53

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v5, :cond_52

    return v5

    :cond_52
    return v0

    .line 140
    :cond_53
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v5, :cond_6f

    if-eq p0, v4, :cond_6f

    if-eq p0, v3, :cond_6f

    const/4 p1, 0x7

    if-eq p0, p1, :cond_6f

    const/16 p1, 0x8

    if-eq p0, p1, :cond_6f

    if-eq p0, v2, :cond_6f

    packed-switch p0, :pswitch_data_70

    :goto_6d
    const/4 p0, -0x1

    return p0

    :cond_6f
    :pswitch_6f
    return v5

    :pswitch_data_70
    .packed-switch 0xb
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
    .end packed-switch
.end method

.method public blacklist readRtsValue()V
    .registers 11

    .line 60
    iget v0, p0, Lcom/android/internal/telephony/RtsStatus;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->network_reject_cause()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v1, :cond_89

    const-string v1, "Idle"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-le v8, v5, :cond_89

    const/4 v5, 0x4

    const-string v6, ";"

    .line 62
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 63
    iget-object v6, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v8, v5, v4

    const-string v9, "Status"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 64
    iget-object v4, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v6, v5, v7

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v4, v5, v3

    const-string v6, "CS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aget-object v1, v5, v2

    const-string v3, "PS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v2

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rtsString: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GsmCdmaPhone-RtsStatus"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 69
    :cond_89
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, v0, v4

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, v0, v7

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, v0, v3

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/RtsStatus;->mRtsValues:[Ljava/lang/Integer;

    aput-object v6, p0, v2

    :goto_99
    return-void
.end method
