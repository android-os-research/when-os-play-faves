.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;
.source "SemSupplicantStaIfaceCallbackAidlImpl.java"


# static fields
.field private static final ERROR_CODE_802_1X_AUTH_FAILED:I = 0x13953

.field private static final TAG:Ljava/lang/String; = "SemSupplicantStaIfaceCallbackAidlImpl"


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

.field private mStateBeforeDisconnect:I

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 6
    .param p1    # Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;-><init>()V

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 66
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-void
.end method

.method private static halAuxiliaryEventToFrameworkSupplicantEventCode(I)I
    .registers 2

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string v0, "Invalid auxiliary event code received"

    .line 914
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_11
    const/4 p0, 0x7

    return p0

    :cond_13
    const/4 p0, 0x6

    return p0

    :cond_15
    const/4 p0, 0x4

    return p0
.end method

.method private halToFrameworkBssTmDataFlagsMask(I)I
    .registers 3

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_d

    or-int/lit8 p0, p0, 0x2

    :cond_d
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_13

    or-int/lit8 p0, p0, 0x4

    :cond_13
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_19

    or-int/lit8 p0, p0, 0x8

    :cond_19
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1f

    or-int/lit8 p0, p0, 0x10

    :cond_1f
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_25

    or-int/lit8 p0, p0, 0x20

    :cond_25
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2b

    or-int/lit8 p0, p0, 0x40

    :cond_2b
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_31

    or-int/lit16 p0, p0, 0x80

    :cond_31
    return p0
.end method

.method private halToFrameworkBtmResponseStatus(I)I
    .registers 2

    packed-switch p1, :pswitch_data_1a

    const/16 p0, 0xfe

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_9
    const/4 p0, 0x7

    return p0

    :pswitch_b
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_f
    const/4 p0, 0x4

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_13
    const/4 p0, 0x2

    return p0

    :pswitch_15
    const/4 p0, 0x1

    return p0

    :pswitch_17
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private halToFrameworkDppEventType(I)I
    .registers 2

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    if-eq p1, p0, :cond_d

    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string p1, "Invalid DppEventType received"

    .line 495
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :cond_d
    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private halToFrameworkDppFailureCode(I)I
    .registers 2

    packed-switch p1, :pswitch_data_28

    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string p1, "Invalid DppFailureCode received"

    .line 543
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :pswitch_c
    const/16 p0, 0xb

    return p0

    :pswitch_f
    const/16 p0, 0xa

    return p0

    :pswitch_12
    const/16 p0, 0x9

    return p0

    :pswitch_15
    const/16 p0, 0x8

    return p0

    :pswitch_18
    const/4 p0, 0x7

    return p0

    :pswitch_1a
    const/4 p0, 0x6

    return p0

    :pswitch_1c
    const/4 p0, 0x5

    return p0

    :pswitch_1e
    const/4 p0, 0x4

    return p0

    :pswitch_20
    const/4 p0, 0x3

    return p0

    :pswitch_22
    const/4 p0, 0x2

    return p0

    :pswitch_24
    const/4 p0, 0x1

    return p0

    :pswitch_26
    const/4 p0, 0x0

    return p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method private halToFrameworkDppProgressCode(I)I
    .registers 2

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    if-eq p1, p0, :cond_13

    const/4 p0, 0x2

    if-eq p1, p0, :cond_13

    const/4 p0, 0x3

    if-eq p1, p0, :cond_13

    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string p1, "Invalid DppProgressCode received"

    .line 511
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :cond_13
    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private halToFrameworkMboAssocDisallowedReasonCode(B)B
    .registers 2

    if-eqz p1, :cond_1a

    const/4 p0, 0x1

    if-eq p1, p0, :cond_19

    const/4 p0, 0x2

    if-eq p1, p0, :cond_19

    const/4 p0, 0x3

    if-eq p1, p0, :cond_19

    const/4 p0, 0x4

    if-eq p1, p0, :cond_19

    const/4 p0, 0x5

    if-eq p1, p0, :cond_19

    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string p1, "Invalid MboAssocDisallowedReasonCode received"

    .line 563
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :cond_19
    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private halToFrameworkMboCellularDataConnectionPreference(I)I
    .registers 2

    if-eqz p1, :cond_c

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/16 p0, 0xff

    if-eq p1, p0, :cond_b

    const/16 p0, 0xfe

    :cond_b
    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private halToFrameworkMboTransitionReason(I)I
    .registers 2

    packed-switch p1, :pswitch_data_1a

    const/16 p0, 0xfe

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_9
    const/4 p0, 0x7

    return p0

    :pswitch_b
    const/4 p0, 0x6

    return p0

    :pswitch_d
    const/4 p0, 0x5

    return p0

    :pswitch_f
    const/4 p0, 0x4

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_13
    const/4 p0, 0x2

    return p0

    :pswitch_15
    const/4 p0, 0x1

    return p0

    :pswitch_17
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private halToFrameworkReasonCode(I)I
    .registers 2

    packed-switch p1, :pswitch_data_c0

    packed-switch p1, :pswitch_data_112

    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string p1, "Invalid reason code received"

    .line 693
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :pswitch_f
    const/16 p0, 0x42

    return p0

    :pswitch_12
    const/16 p0, 0x41

    return p0

    :pswitch_15
    const/16 p0, 0x40

    return p0

    :pswitch_18
    const/16 p0, 0x3f

    return p0

    :pswitch_1b
    const/16 p0, 0x3e

    return p0

    :pswitch_1e
    const/16 p0, 0x3d

    return p0

    :pswitch_21
    const/16 p0, 0x3c

    return p0

    :pswitch_24
    const/16 p0, 0x3b

    return p0

    :pswitch_27
    const/16 p0, 0x3a

    return p0

    :pswitch_2a
    const/16 p0, 0x39

    return p0

    :pswitch_2d
    const/16 p0, 0x38

    return p0

    :pswitch_30
    const/16 p0, 0x37

    return p0

    :pswitch_33
    const/16 p0, 0x36

    return p0

    :pswitch_36
    const/16 p0, 0x35

    return p0

    :pswitch_39
    const/16 p0, 0x34

    return p0

    :pswitch_3c
    const/16 p0, 0x33

    return p0

    :pswitch_3f
    const/16 p0, 0x32

    return p0

    :pswitch_42
    const/16 p0, 0x31

    return p0

    :pswitch_45
    const/16 p0, 0x30

    return p0

    :pswitch_48
    const/16 p0, 0x2f

    return p0

    :pswitch_4b
    const/16 p0, 0x2e

    return p0

    :pswitch_4e
    const/16 p0, 0x2d

    return p0

    :pswitch_51
    const/16 p0, 0x27

    return p0

    :pswitch_54
    const/16 p0, 0x26

    return p0

    :pswitch_57
    const/16 p0, 0x25

    return p0

    :pswitch_5a
    const/16 p0, 0x24

    return p0

    :pswitch_5d
    const/16 p0, 0x23

    return p0

    :pswitch_60
    const/16 p0, 0x22

    return p0

    :pswitch_63
    const/16 p0, 0x21

    return p0

    :pswitch_66
    const/16 p0, 0x20

    return p0

    :pswitch_69
    const/16 p0, 0x1f

    return p0

    :pswitch_6c
    const/16 p0, 0x1e

    return p0

    :pswitch_6f
    const/16 p0, 0x1d

    return p0

    :pswitch_72
    const/16 p0, 0x1c

    return p0

    :pswitch_75
    const/16 p0, 0x1b

    return p0

    :pswitch_78
    const/16 p0, 0x1a

    return p0

    :pswitch_7b
    const/16 p0, 0x19

    return p0

    :pswitch_7e
    const/16 p0, 0x18

    return p0

    :pswitch_81
    const/16 p0, 0x17

    return p0

    :pswitch_84
    const/16 p0, 0x16

    return p0

    :pswitch_87
    const/16 p0, 0x15

    return p0

    :pswitch_8a
    const/16 p0, 0x14

    return p0

    :pswitch_8d
    const/16 p0, 0x13

    return p0

    :pswitch_90
    const/16 p0, 0x12

    return p0

    :pswitch_93
    const/16 p0, 0x11

    return p0

    :pswitch_96
    const/16 p0, 0x10

    return p0

    :pswitch_99
    const/16 p0, 0xf

    return p0

    :pswitch_9c
    const/16 p0, 0xe

    return p0

    :pswitch_9f
    const/16 p0, 0xd

    return p0

    :pswitch_a2
    const/16 p0, 0xc

    return p0

    :pswitch_a5
    const/16 p0, 0xb

    return p0

    :pswitch_a8
    const/16 p0, 0xa

    return p0

    :pswitch_ab
    const/16 p0, 0x9

    return p0

    :pswitch_ae
    const/16 p0, 0x8

    return p0

    :pswitch_b1
    const/4 p0, 0x7

    return p0

    :pswitch_b3
    const/4 p0, 0x6

    return p0

    :pswitch_b5
    const/4 p0, 0x5

    return p0

    :pswitch_b7
    const/4 p0, 0x4

    return p0

    :pswitch_b9
    const/4 p0, 0x3

    return p0

    :pswitch_bb
    const/4 p0, 0x2

    return p0

    :pswitch_bd
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_bb
        :pswitch_b9
        :pswitch_b7
        :pswitch_b5
        :pswitch_b3
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x2d
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method protected static halToFrameworkStatusCode(I)I
    .registers 2

    packed-switch p0, :pswitch_data_128

    :pswitch_3
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string v0, "Invalid status code received"

    .line 899
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :pswitch_c
    const/16 p0, 0x71

    return p0

    :pswitch_f
    const/16 p0, 0x70

    return p0

    :pswitch_12
    const/16 p0, 0x6b

    return p0

    :pswitch_15
    const/16 p0, 0x6a

    return p0

    :pswitch_18
    const/16 p0, 0x69

    return p0

    :pswitch_1b
    const/16 p0, 0x68

    return p0

    :pswitch_1e
    const/16 p0, 0x67

    return p0

    :pswitch_21
    const/16 p0, 0x66

    return p0

    :pswitch_24
    const/16 p0, 0x65

    return p0

    :pswitch_27
    const/16 p0, 0x64

    return p0

    :pswitch_2a
    const/16 p0, 0x63

    return p0

    :pswitch_2d
    const/16 p0, 0x62

    return p0

    :pswitch_30
    const/16 p0, 0x61

    return p0

    :pswitch_33
    const/16 p0, 0x60

    return p0

    :pswitch_36
    const/16 p0, 0x5f

    return p0

    :pswitch_39
    const/16 p0, 0x5e

    return p0

    :pswitch_3c
    const/16 p0, 0x5d

    return p0

    :pswitch_3f
    const/16 p0, 0x5c

    return p0

    :pswitch_42
    const/16 p0, 0x59

    return p0

    :pswitch_45
    const/16 p0, 0x58

    return p0

    :pswitch_48
    const/16 p0, 0x57

    return p0

    :pswitch_4b
    const/16 p0, 0x56

    return p0

    :pswitch_4e
    const/16 p0, 0x55

    return p0

    :pswitch_51
    const/16 p0, 0x54

    return p0

    :pswitch_54
    const/16 p0, 0x53

    return p0

    :pswitch_57
    const/16 p0, 0x52

    return p0

    :pswitch_5a
    const/16 p0, 0x51

    return p0

    :pswitch_5d
    const/16 p0, 0x50

    return p0

    :pswitch_60
    const/16 p0, 0x4f

    return p0

    :pswitch_63
    const/16 p0, 0x4e

    return p0

    :pswitch_66
    const/16 p0, 0x4d

    return p0

    :pswitch_69
    const/16 p0, 0x4c

    return p0

    :pswitch_6c
    const/16 p0, 0x4b

    return p0

    :pswitch_6f
    const/16 p0, 0x4a

    return p0

    :pswitch_72
    const/16 p0, 0x49

    return p0

    :pswitch_75
    const/16 p0, 0x48

    return p0

    :pswitch_78
    const/16 p0, 0x44

    return p0

    :pswitch_7b
    const/16 p0, 0x43

    return p0

    :pswitch_7e
    const/16 p0, 0x41

    return p0

    :pswitch_81
    const/16 p0, 0x40

    return p0

    :pswitch_84
    const/16 p0, 0x3f

    return p0

    :pswitch_87
    const/16 p0, 0x3e

    return p0

    :pswitch_8a
    const/16 p0, 0x3d

    return p0

    :pswitch_8d
    const/16 p0, 0x3c

    return p0

    :pswitch_90
    const/16 p0, 0x3b

    return p0

    :pswitch_93
    const/16 p0, 0x3a

    return p0

    :pswitch_96
    const/16 p0, 0x39

    return p0

    :pswitch_99
    const/16 p0, 0x38

    return p0

    :pswitch_9c
    const/16 p0, 0x37

    return p0

    :pswitch_9f
    const/16 p0, 0x36

    return p0

    :pswitch_a2
    const/16 p0, 0x35

    return p0

    :pswitch_a5
    const/16 p0, 0x34

    return p0

    :pswitch_a8
    const/16 p0, 0x33

    return p0

    :pswitch_ab
    const/16 p0, 0x32

    return p0

    :pswitch_ae
    const/16 p0, 0x31

    return p0

    :pswitch_b1
    const/16 p0, 0x30

    return p0

    :pswitch_b4
    const/16 p0, 0x2f

    return p0

    :pswitch_b7
    const/16 p0, 0x2e

    return p0

    :pswitch_ba
    const/16 p0, 0x2d

    return p0

    :pswitch_bd
    const/16 p0, 0x2c

    return p0

    :pswitch_c0
    const/16 p0, 0x2b

    return p0

    :pswitch_c3
    const/16 p0, 0x2a

    return p0

    :pswitch_c6
    const/16 p0, 0x29

    return p0

    :pswitch_c9
    const/16 p0, 0x28

    return p0

    :pswitch_cc
    const/16 p0, 0x27

    return p0

    :pswitch_cf
    const/16 p0, 0x26

    return p0

    :pswitch_d2
    const/16 p0, 0x25

    return p0

    :pswitch_d5
    const/16 p0, 0x23

    return p0

    :pswitch_d8
    const/16 p0, 0x22

    return p0

    :pswitch_db
    const/16 p0, 0x21

    return p0

    :pswitch_de
    const/16 p0, 0x20

    return p0

    :pswitch_e1
    const/16 p0, 0x1f

    return p0

    :pswitch_e4
    const/16 p0, 0x1e

    return p0

    :pswitch_e7
    const/16 p0, 0x1d

    return p0

    :pswitch_ea
    const/16 p0, 0x1c

    return p0

    :pswitch_ed
    const/16 p0, 0x1b

    return p0

    :pswitch_f0
    const/16 p0, 0x19

    return p0

    :pswitch_f3
    const/16 p0, 0x18

    return p0

    :pswitch_f6
    const/16 p0, 0x17

    return p0

    :pswitch_f9
    const/16 p0, 0x16

    return p0

    :pswitch_fc
    const/16 p0, 0x13

    return p0

    :pswitch_ff
    const/16 p0, 0x12

    return p0

    :pswitch_102
    const/16 p0, 0x11

    return p0

    :pswitch_105
    const/16 p0, 0x10

    return p0

    :pswitch_108
    const/16 p0, 0xf

    return p0

    :pswitch_10b
    const/16 p0, 0xe

    return p0

    :pswitch_10e
    const/16 p0, 0xd

    return p0

    :pswitch_111
    const/16 p0, 0xc

    return p0

    :pswitch_114
    const/16 p0, 0xb

    return p0

    :pswitch_117
    const/16 p0, 0xa

    return p0

    :pswitch_11a
    const/4 p0, 0x7

    return p0

    :pswitch_11c
    const/4 p0, 0x6

    return p0

    :pswitch_11e
    const/4 p0, 0x5

    return p0

    :pswitch_120
    const/4 p0, 0x3

    return p0

    :pswitch_122
    const/4 p0, 0x2

    return p0

    :pswitch_124
    const/4 p0, 0x1

    return p0

    :pswitch_126
    const/4 p0, 0x0

    return p0

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_126
        :pswitch_124
        :pswitch_122
        :pswitch_120
        :pswitch_3
        :pswitch_11e
        :pswitch_11c
        :pswitch_11a
        :pswitch_3
        :pswitch_3
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_3
        :pswitch_3
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_3
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_3
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_3
        :pswitch_7b
        :pswitch_78
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3
        :pswitch_3
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method protected static supplicantAidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;
    .registers 4

    packed-switch p0, :pswitch_data_38

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_1a
    sget-object p0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 107
    :pswitch_1d
    sget-object p0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 105
    :pswitch_20
    sget-object p0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 103
    :pswitch_23
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 101
    :pswitch_26
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 99
    :pswitch_29
    sget-object p0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 97
    :pswitch_2c
    sget-object p0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 95
    :pswitch_2f
    sget-object p0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 93
    :pswitch_32
    sget-object p0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    return-object p0

    .line 91
    :pswitch_35
    sget-object p0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    return-object p0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "5b8bcab6b43177dffdec5873e84205b04757cc9d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;)V
    .registers 4

    .line 142
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 143
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onAnqpQueryDone"

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 144
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onAssociationRejected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onAssociationRejected"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    iget v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->statusCode:I

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->timedOut:Z

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->bssid:[B

    .line 160
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V

    .line 161
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onAuthenticationTimeout([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onAuthenticationTimeout"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 170
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 171
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onAuxiliarySupplicantEvent(I[BLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->halAuxiliaryEventToFrameworkSupplicantEventCode(I)I

    move-result p1

    .line 180
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuxiliarySupplicantEvent event="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 181
    monitor-exit p2

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit p2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 187
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v0, "onBssTmHandlingDone: Handle BTM handling event"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 189
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onBssidChanged(B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onBssidChanged"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    if-nez p1, :cond_18

    .line 197
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 198
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :cond_18
    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    .line 200
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 201
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    .line 200
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onDisconnected([BZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onDisconnected"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " locallyGenerated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_3a
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_53

    if-eqz p2, :cond_45

    const/16 v2, 0x11

    if-eq p3, v2, :cond_53

    .line 219
    :cond_45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 221
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_65

    :cond_53
    const/4 v2, 0x6

    if-ne v1, v2, :cond_65

    .line 223
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    const/4 v3, 0x3

    const v4, 0x13953

    .line 226
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 228
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    if-eqz p2, :cond_6d

    const/4 p2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 p2, 0x0

    .line 230
    :goto_6e
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {v1, p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 231
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public onDppFailure(ILjava/lang/String;Ljava/lang/String;[C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 238
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onDppFailure, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 239
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onDppProgress(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 245
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v0, "onDppProgress, not implement yet..."

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 246
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onDppSuccess(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 252
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v0, "onDppSuccess, not implement yet..."

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 253
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onDppSuccessConfigReceived([BLjava/lang/String;[BILcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 260
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onDppSuccessConfigReceived, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 261
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onDppSuccessConfigSent()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v1, "onDppSuccessConfigSent, not implement yet..."

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 268
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onEapFailure([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onEapFailure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_20

    .line 276
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    .line 278
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {v1, p0, v2, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_16} :catch_17
    .catchall {:try_start_a .. :try_end_16} :catchall_20

    goto :goto_1e

    :catch_17
    :try_start_17
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    const-string p1, "Invalid bssid received"

    .line 280
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onExtRadioWorkStart(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 288
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v0, "onExtRadioWorkStart"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 289
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 295
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v0, "onExtRadioWorkTimeout"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 296
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 303
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onHs20DeauthImminentNotice, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 304
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;[B)V
    .registers 4

    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 150
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onHs20IconQueryDone"

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 151
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 311
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onHs20SubscriptionRemediation, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 312
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onHs20TermsAndConditionsAcceptanceRequestedNotification([BLjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 319
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onHs20TermsAndConditionsAcceptanceRequestedNotification, not implement yet..."

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 321
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkAdded id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 73
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onNetworkNotFound([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v1, "onNetworkNotFoundNotification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 328
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkNotFoundEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkRemoved(I)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkRemoved id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 81
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    .line 82
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public onPmkCacheAdded(J[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPmkCacheAdded: update pmk cache for id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 336
    invoke-virtual {p3, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onQosPolicyRequest(I[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 379
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string p2, "onQosPolicyRequest"

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 380
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onQosPolicyReset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v1, "onQosPolicyReset"

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 372
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onStateChanged(I[BI[BZ)V
    .registers 13

    .line 118
    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 119
    :try_start_3
    iget-object p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v0, "onStateChanged"

    invoke-virtual {p5, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->supplicantAidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;

    move-result-object v6

    .line 122
    invoke-static {p4}, Lcom/samsung/android/wifi/SemWifiSsid;->createFromByteArray([B)Lcom/samsung/android/wifi/SemWifiSsid;

    move-result-object v4

    .line 123
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_1a

    .line 127
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    :cond_1a
    const/16 p2, 0x9

    if-ne p1, p2, :cond_2b

    .line 131
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    iget-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 132
    invoke-virtual {p4, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result p4

    .line 131
    invoke-virtual {p1, p2, p4, v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    :cond_2b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 135
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    move-result v3

    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 137
    monitor-exit p3

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p3
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public onWpsEventFail([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 342
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v1, "onWpsEventFail"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    const/16 v0, 0x10

    if-ne p2, v0, :cond_18

    if-nez p3, :cond_18

    .line 345
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsTimeoutEvent(Ljava/lang/String;)V

    goto :goto_1f

    .line 347
    :cond_18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsFailEvent(Ljava/lang/String;II)V

    .line 349
    :goto_1f
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public onWpsEventPbcOverlap()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onWpsEventPbcOverlap"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsOverlapEvent(Ljava/lang/String;)V

    .line 357
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onWpsEventSuccess()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onWpsEventSuccess"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsSuccessEvent(Ljava/lang/String;)V

    .line 365
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
