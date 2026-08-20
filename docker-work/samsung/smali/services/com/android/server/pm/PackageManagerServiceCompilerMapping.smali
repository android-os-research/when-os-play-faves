.class public Lcom/android/server/pm/PackageManagerServiceCompilerMapping;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompilerMapping.java"


# static fields
.field public static final REASON_ADCP:Ljava/lang/String; = "adcp"

.field public static final REASON_INSTALL_SPEG:Ljava/lang/String; = "install-speg"

.field public static final REASON_INSTALL_SPQR:Ljava/lang/String; = "install-spqr"

.field public static final REASON_LABS:Ljava/lang/String; = "labs"

.field public static final REASON_SHARED_INDEX:I

.field public static final REASON_STRINGS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    const-string v0, "first-boot"

    const-string v1, "boot-after-ota"

    const-string/jumbo v2, "post-boot"

    const-string/jumbo v3, "install"

    const-string/jumbo v4, "install-fast"

    const-string/jumbo v5, "install-bulk"

    const-string/jumbo v6, "install-bulk-secondary"

    const-string/jumbo v7, "install-bulk-downgraded"

    const-string/jumbo v8, "install-bulk-secondary-downgraded"

    const-string v9, "bg-dexopt"

    const-string v10, "ab-ota"

    const-string/jumbo v11, "inactive"

    const-string v12, "cmdline"

    const-string/jumbo v13, "shared"

    .line 30
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 48
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_SHARED_INDEX:I

    .line 68
    array-length v2, v0

    const/16 v3, 0xe

    if-ne v3, v2, :cond_49

    .line 71
    aget-object v0, v0, v1

    const-string/jumbo v1, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    return-void

    .line 72
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "REASON_STRINGS not correct because of shared index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "REASON_STRINGS not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkProperties()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xd

    if-gt v1, v2, :cond_49

    .line 136
    :try_start_6
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 143
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    goto :goto_46

    .line 138
    :cond_16
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reason system property name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" for reason "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_39

    :catch_39
    move-exception v2

    if-nez v0, :cond_43

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "PMS compiler filter settings are bad."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    :cond_43
    invoke-virtual {v0, v2}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_49
    if-nez v0, :cond_4c

    return-void

    .line 153
    :cond_4c
    throw v0
.end method

.method public static getAndCheckValidity(I)Ljava/lang/String;
    .registers 6

    .line 108
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, "Value \""

    if-eqz v0, :cond_4e

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4e

    const-string/jumbo v3, "skip"

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 111
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 114
    :cond_23
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->isFilterAllowedForReason(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-object v0

    .line 115
    :cond_2a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" not allowed (reason "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_4e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" not valid (reason "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getCompilerFilterForReason(I)Ljava/lang/String;
    .registers 1

    .line 158
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultCompilerFilter()Ljava/lang/String;
    .registers 3

    const-string v0, "dalvik.vm.dex2oat-filter"

    .line 168
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "speed"

    if-eqz v0, :cond_20

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_20

    .line 173
    :cond_12
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 174
    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    return-object v0

    :cond_20
    :goto_20
    return-object v1
.end method

.method public static getReasonName(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x14

    if-ne p0, v0, :cond_8

    const-string/jumbo p0, "labs"

    return-object p0

    :cond_8
    const/16 v0, 0x17

    if-ne p0, v0, :cond_f

    const-string p0, "adcp"

    return-object p0

    :cond_f
    const/16 v0, 0x15

    if-ne p0, v0, :cond_17

    const-string/jumbo p0, "install-spqr"

    return-object p0

    :cond_17
    const/16 v0, 0x16

    if-ne p0, v0, :cond_1f

    const-string/jumbo p0, "install-speg"

    return-object p0

    :cond_1f
    if-ltz p0, :cond_29

    .line 203
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_29

    .line 206
    aget-object p0, v0, p0

    return-object p0

    .line 204
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " invalid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSystemPropertyName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    const-string/jumbo v1, "pm.dexopt."

    const/16 v2, 0x14

    if-ne p0, v2, :cond_1c

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    const/16 v2, 0x17

    if-ne p0, v2, :cond_34

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    const/16 v2, 0x15

    if-ne p0, v2, :cond_4c

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4c
    const/16 v2, 0x16

    if-ne p0, v2, :cond_64

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_64
    if-ltz p0, :cond_7d

    .line 98
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v2, v0

    if-ge p0, v2, :cond_7d

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " invalid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFilterAllowedForReason(ILjava/lang/String;)Z
    .registers 3

    .line 123
    sget v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_SHARED_INDEX:I

    if-ne p0, v0, :cond_d

    invoke-static {p1}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
