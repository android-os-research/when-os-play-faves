.class public Lcom/samsung/android/gamesdk/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final BOOST_TIMER_PERIOD:I = 0x2710

.field public static DEBUG:Z = false

.field public static final DEFAULT_REFRESH_RATE:I = 0x3c

.field public static final GAMESDK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.gamesdk"

.field public static final GAMESDK_TIMER_PERIOD:I = 0x1d4c0

.field public static final GAMESDK_VERSION:Ljava/lang/String; = "3.6"

.field public static final INVALID_VALUE_DOUBLE:D = -999.0

.field public static final INVALID_VALUE_FLOAT:F = -999.0f

.field public static final INVALID_VALUE_INT:I = -0x3e7

.field public static final INVALID_VALUE_LONG:J = -0x3e7L

.field public static final INVALID_VALUE_STRING:Ljava/lang/String; = ""

.field public static final LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final RETURN_VALUE_SET_FREQUENCY_FAIL:I = 0x0

.field public static final RETURN_VALUE_SET_FREQUENCY_FILTERED_BY_BOOSTMODE:I = 0x3

.field public static final RETURN_VALUE_SET_FREQUENCY_FILTERED_BY_TM:I = 0x2

.field public static final RETURN_VALUE_SET_FREQUENCY_SUCCESS:I = 0x1

.field public static final SEC_LONG_0_3:J = 0x12cL

.field public static final SEC_LONG_0_5:J = 0x1f4L

.field public static final SEC_LONG_1:J = 0x3e8L

.field public static final STEP1_BIT_NUMBER:I = 0x1

.field public static final STEP2_BIT_NUMBER:I = 0x2

.field public static final STEP3_BIT_NUMBER:I = 0x4

.field public static final STEP_MASTER_BIT_NUMBER:I = 0x7

.field public static final SYSTEM_PROPERTY_GAMESDKVERSION:Ljava/lang/String; = "gamesdk_version"

.field public static final TARGET_48HZ:I = 0x30

.field public static final THERMAL_MODE_DISABLE:I = -0x2

.field public static final USER_CPU_TABLE_GAP:I = 0x14

.field public static final WARNING_LEVEL_1:I = 0x186

.field public static final WARNING_LEVEL_2:I = 0x19a

.field public static final mEmptyIntArray:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/samsung/android/gamesdk/Const;->mEmptyIntArray:[I

    .line 46
    sput-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
