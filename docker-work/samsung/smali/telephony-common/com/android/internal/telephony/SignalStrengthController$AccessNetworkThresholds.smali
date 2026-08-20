.class final Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;
.super Ljava/lang/Object;
.source "SignalStrengthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SignalStrengthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessNetworkThresholds"
.end annotation


# static fields
.field public static final blacklist CDMA2000:[I

.field public static final blacklist EUTRAN_RSRP:[I

.field public static final blacklist EUTRAN_RSRQ:[I

.field public static final blacklist EUTRAN_RSSNR:[I

.field public static final blacklist GERAN:[I

.field public static final blacklist NGRAN_SSRSRP:[I

.field public static final blacklist NGRAN_SSRSRQ:[I

.field public static final blacklist NGRAN_SSSINR:[I

.field public static final blacklist UTRAN:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1119
    fill-array-data v1, :array_42

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->GERAN:[I

    new-array v1, v0, [I

    .line 1133
    fill-array-data v1, :array_4e

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN:[I

    new-array v1, v0, [I

    .line 1146
    fill-array-data v1, :array_5a

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRP:[I

    new-array v1, v0, [I

    .line 1159
    fill-array-data v1, :array_66

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRQ:[I

    new-array v1, v0, [I

    .line 1172
    fill-array-data v1, :array_72

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSSNR:[I

    new-array v1, v0, [I

    .line 1184
    fill-array-data v1, :array_7e

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->CDMA2000:[I

    new-array v1, v0, [I

    .line 1194
    fill-array-data v1, :array_8a

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRP:[I

    new-array v1, v0, [I

    .line 1204
    fill-array-data v1, :array_96

    sput-object v1, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRQ:[I

    new-array v0, v0, [I

    .line 1214
    fill-array-data v0, :array_a2

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSSINR:[I

    return-void

    nop

    :array_42
    .array-data 4
        -0x6d
        -0x67
        -0x61
        -0x59
    .end array-data

    :array_4e
    .array-data 4
        -0x72
        -0x68
        -0x5e
        -0x54
    .end array-data

    :array_5a
    .array-data 4
        -0x80
        -0x76
        -0x6c
        -0x62
    .end array-data

    :array_66
    .array-data 4
        -0x14
        -0x11
        -0xe
        -0xb
    .end array-data

    :array_72
    .array-data 4
        -0x3
        0x1
        0x5
        0xd
    .end array-data

    :array_7e
    .array-data 4
        -0x69
        -0x5a
        -0x4b
        -0x41
    .end array-data

    :array_8a
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data

    :array_96
    .array-data 4
        -0x1f
        -0x13
        -0x7
        0x6
    .end array-data

    :array_a2
    .array-data 4
        -0x5
        0x5
        0xf
        0x1e
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
