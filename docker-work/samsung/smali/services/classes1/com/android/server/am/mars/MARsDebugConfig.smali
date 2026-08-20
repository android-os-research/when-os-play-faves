.class public Lcom/android/server/am/mars/MARsDebugConfig;
.super Ljava/lang/Object;
.source "MARsDebugConfig.java"


# static fields
.field public static final DEBUG_ALL:Z

.field public static DEBUG_DATABASE:Z = false

.field public static DEBUG_ENG:Z = false

.field public static DEBUG_FILTER:Z = false

.field public static DEBUG_FREECESS:Z = false

.field public static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field public static DEBUG_MARs:Z = false

.field public static DEBUG_MID:Z = false

.field public static DEBUG_NETLINK:Z = false

.field public static DEBUG_OLAF:Z = false

.field public static ENABLE_ALARM_WAKEUP_BLOCK:Z = false

.field public static final RO_DEBUG_LEVEL:Ljava/lang/String; = "ro.boot.debug_level"

.field public static final RO_PRODUCT_MODEL:Ljava/lang/String; = "ro.product.model"

.field public static final TAG_MARS:Ljava/lang/String; = "MARs"


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x494d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    const-string/jumbo v1, "ro.build.type"

    const-string/jumbo v2, "user"

    .line 13
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    const-string v1, "0x4f4c"

    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_32

    :cond_30
    move v0, v2

    goto :goto_33

    :cond_32
    :goto_32
    move v0, v3

    :goto_33
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 17
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    .line 20
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ALL:Z

    .line 24
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 26
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 28
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 30
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 32
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 33
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
