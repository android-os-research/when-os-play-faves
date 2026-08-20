.class public Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;
.super Ljava/lang/Object;
.source "MultiUserSupportsHelper.java"


# static fields
.field public static final blacklist DEFAULT_ENABLE_STATUS:Z

.field public static final blacklist DEFAULT_MAX_USERS:I

.field public static final blacklist IS_TABLET:Z

.field public static final blacklist TAG_CSCFEATURE_FRAMEWORK_CONFIGMAXMULTIUSERS:Ljava/lang/String; = "CscFeature_Framework_ConfigMaxMultiUsers"

.field public static final blacklist TAG_CSCFEATURE_FRAMEWORK_CONFIGSTATUSMULTIUSER:Ljava/lang/String; = "CscFeature_Framework_ConfigStatusMultiUser"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9
    nop

    .line 10
    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->IS_TABLET:Z

    .line 11
    if-eqz v0, :cond_18

    const/16 v1, 0x8

    goto :goto_19

    :cond_18
    const/4 v1, 0x1

    :goto_19
    sput v1, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_MAX_USERS:I

    .line 12
    sput-boolean v0, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_ENABLE_STATUS:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static blacklist getConfigMaxMultiUsers()I
    .registers 4

    .line 48
    const/4 v0, -0x1

    .line 49
    .local v0, "NO_CSC_FOUND":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ConfigMaxMultiUsers"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "mumMaxUsers":I
    if-ne v1, v3, :cond_10

    .line 52
    sget v1, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_MAX_USERS:I

    .line 54
    :cond_10
    if-gtz v1, :cond_13

    .line 55
    const/4 v1, 0x1

    .line 57
    :cond_13
    return v1
.end method

.method public static blacklist getConfigStatusMultiUser()Z
    .registers 3

    .line 64
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ConfigStatusMultiUser"

    const-string v2, "NoCscFound"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "mumStatus":Ljava/lang/String;
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 68
    const/4 v1, 0x1

    .local v1, "mumEnabled":Z
    goto :goto_20

    .line 69
    .end local v1    # "mumEnabled":Z
    :cond_16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 70
    const/4 v1, 0x0

    .restart local v1    # "mumEnabled":Z
    goto :goto_20

    .line 72
    .end local v1    # "mumEnabled":Z
    :cond_1e
    sget-boolean v1, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->DEFAULT_ENABLE_STATUS:Z

    .line 74
    .restart local v1    # "mumEnabled":Z
    :goto_20
    return v1
.end method

.method public static blacklist getMaxSupportedUsers()I
    .registers 3

    .line 30
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "JVP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 33
    :cond_c
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->isLduSkuBinary()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 35
    :cond_13
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigMaxMultiUsers()I

    move-result v0

    .line 36
    .local v0, "mumMaxUsers":I
    const-string v1, "persist.sys.max_users"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, "config":I
    const-string v2, "fw.max_users"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private static blacklist isLduSkuBinary()Z
    .registers 1

    .line 41
    invoke-static {}, Lcom/samsung/android/core/pm/PmUtils;->isLduSkuBinary()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportsMultipleUsers()Z
    .registers 5

    .line 19
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->isLduSkuBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 20
    return v1

    .line 22
    :cond_8
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigStatusMultiUser()Z

    move-result v0

    .line 23
    .local v0, "mumEnabled":Z
    const-string v2, "persist.sys.show_multiuserui"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 24
    .local v2, "config":Z
    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getMaxSupportedUsers()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_22

    const-string v3, "fw.show_multiuserui"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    move v1, v4

    :cond_22
    return v1
.end method
