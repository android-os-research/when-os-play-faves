.class public Lcom/samsung/android/server/continuity/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_Utils"

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field public static mIsHighPowerConsumptionChipset:I

.field public static mIsWatch:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 26
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    const/4 v0, -0x1

    .line 27
    sput v0, Lcom/samsung/android/server/continuity/common/Utils;->mIsHighPowerConsumptionChipset:I

    .line 28
    sput v0, Lcom/samsung/android/server/continuity/common/Utils;->mIsWatch:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearHighPowerConsumptionChipset()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    .line 118
    sput v0, Lcom/samsung/android/server/continuity/common/Utils;->mIsHighPowerConsumptionChipset:I

    return-void
.end method

.method public static isHighPowerConsumptionChipset()Z
    .registers 6

    .line 96
    sget v0, Lcom/samsung/android/server/continuity/common/Utils;->mIsHighPowerConsumptionChipset:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4c

    const-string/jumbo v0, "vendor.bluetooth_fw_ver"

    .line 97
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 99
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_2d

    const-string v4, "UTC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x4

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_2d
    if-eqz v3, :cond_4a

    const-string v0, "LEMAN"

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "LASSEN"

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "NEUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 107
    :cond_47
    sput v2, Lcom/samsung/android/server/continuity/common/Utils;->mIsHighPowerConsumptionChipset:I

    goto :goto_4c

    .line 109
    :cond_4a
    sput v1, Lcom/samsung/android/server/continuity/common/Utils;->mIsHighPowerConsumptionChipset:I

    .line 112
    :cond_4c
    :goto_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHighPowerConsumptionChipset : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/server/continuity/common/Utils;->mIsHighPowerConsumptionChipset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[MCF_DS_SYS]_Utils"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget v0, Lcom/samsung/android/server/continuity/common/Utils;->mIsHighPowerConsumptionChipset:I

    if-ne v0, v2, :cond_69

    move v1, v2

    :cond_69
    return v1
.end method

.method public static isMac(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_18

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    :cond_9
    const-string v0, "^([0-9a-fA-F][0-9a-fA-F]:){5}([0-9a-fA-F][0-9a-fA-F])$"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 35
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 39
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method public static isWatch()Z
    .registers 4

    .line 122
    sget v0, Lcom/samsung/android/server/continuity/common/Utils;->mIsWatch:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    const-string/jumbo v0, "ro.build.characteristics"

    .line 123
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string/jumbo v3, "watch"

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 125
    sput v2, Lcom/samsung/android/server/continuity/common/Utils;->mIsWatch:I

    goto :goto_1e

    .line 127
    :cond_1c
    sput v1, Lcom/samsung/android/server/continuity/common/Utils;->mIsWatch:I

    .line 131
    :cond_1e
    :goto_1e
    sget v0, Lcom/samsung/android/server/continuity/common/Utils;->mIsWatch:I

    if-ne v0, v2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method public static secureMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 62
    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_a

    return-object p0

    .line 66
    :cond_a
    invoke-static {p0}, Lcom/samsung/android/server/continuity/common/Utils;->isMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "($m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    const/16 v2, 0xe

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method public static secureName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 78
    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_a

    return-object p0

    .line 82
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "*"

    if-le v0, v1, :cond_3d

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const/4 v1, 0x7

    if-le v0, v1, :cond_67

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_67
    const/4 v1, 0x5

    if-le v0, v1, :cond_87

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_87
    if-le v0, v2, :cond_9c

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9c
    return-object p0
.end method
