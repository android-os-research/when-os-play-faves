.class public Lcom/android/server/knox/BasicContainerAnalytics;
.super Ljava/lang/Object;
.source "BasicContainerAnalytics.java"


# static fields
.field public static final DEBUG:Z

.field public static final workapp_usage:Ljava/lang/String; = "WORKAPP_USAGE"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 15
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/BasicContainerAnalytics;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/IKnoxAnalyticsContainer;Landroid/content/Context;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BasicContainerAnalytics"

    .line 14
    iput-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->TAG:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    .line 24
    iput-object p2, p0, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContainerType(I)I
    .registers 7

    .line 30
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6a

    .line 31
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_6a

    const/4 v0, 0x0

    if-nez p1, :cond_17

    .line 32
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_6a

    .line 37
    :cond_17
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v1, v0

    .line 40
    :cond_1e
    iget-object v2, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isLegacyClId(I)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x2

    :cond_27
    if-nez p1, :cond_32

    .line 43
    iget-object v2, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v2, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v1, 0x4

    .line 48
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v2

    .line 49
    iget-object v3, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isOrganizationOwned()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isDoEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4a

    move v0, v4

    :cond_4a
    if-nez v0, :cond_57

    .line 52
    iget-object v3, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v3, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_57

    if-nez v2, :cond_57

    goto :goto_58

    :cond_57
    move v4, v0

    :goto_58
    if-eqz v4, :cond_69

    .line 56
    iget-object p0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isKnoxId(I)Z

    move-result p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_60} :catch_65

    if-eqz p0, :cond_69

    const/16 v1, 0x8

    goto :goto_69

    :catch_65
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_69
    :goto_69
    return v1

    .line 33
    :cond_6a
    :goto_6a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "userId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not an enterprise user."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasicContainerAnalytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isUserSetupCompleted(Landroid/content/Context;)Z
    .registers 3

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "user_setup_complete"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public logActivityChange(IILjava/lang/String;)V
    .registers 7

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result v1

    const-string v2, "cTp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pN"

    .line 100
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_18

    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    const/4 p1, 0x1

    :goto_19
    const-string v1, "OToE"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    iget-object p1, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p1, p3, p2}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo p3, "pV"

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p1, p2}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isPremiumLicenseActivated(I)Z

    move-result p1

    const-string p2, "cM"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ACTIVITY_STAMP"

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logDeviceOwnerChanged(Ljava/lang/String;)V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isDoEnabled(I)Z

    move-result v0

    const-string v2, "cTp"

    if-eqz v0, :cond_23

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pN"

    .line 179
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "WORK_PROFILE_CREATED"

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_34

    .line 182
    :cond_23
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WORK_PROFILE_REMOVED"

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_b

    .line 189
    iget-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsUserId()I

    move-result v0

    if-lez v0, :cond_b

    return-void

    .line 192
    :cond_b
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 v1, 0x4

    const-string v2, "KNOX_CONTAINER"

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_55

    .line 194
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 196
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_37

    .line 197
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1d

    .line 198
    :cond_37
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_41

    .line 199
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 200
    :cond_41
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_4b

    .line 201
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1d

    .line 202
    :cond_4b
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_1d

    .line 203
    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1d

    .line 206
    :cond_55
    iget-object p0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p0, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 207
    sget-boolean p0, Lcom/android/server/knox/BasicContainerAnalytics;->DEBUG:Z

    if-eqz p0, :cond_7b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasicContainerAnalytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    return-void
.end method

.method public logEventAccountChanged(ILjava/lang/String;I)V
    .registers 7

    const-string v0, "LOGIN_ACCOUNTS_CHANGED"

    if-eqz p1, :cond_3a

    .line 67
    :try_start_4
    iget-object v1, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_3a

    .line 71
    :cond_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cTp"

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "e"

    .line 73
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "accTy"

    .line 74
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "add"

    .line 75
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public logMoveToKnox(IZ)V
    .registers 5

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    const-string v1, "cTp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "move"

    .line 147
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "MOVE_TO_KNOX_FILE"

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logMoveToKnoxUsage(I)V
    .registers 4

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    const-string v1, "cTp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "e"

    const-string v1, "MOVE_TO_KNOX_FILE"

    .line 85
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logPackageChanged(ILjava/lang/String;I)V
    .registers 8

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0, p2}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v0, 0x0

    .line 115
    :goto_c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    const-string/jumbo v3, "instN"

    .line 118
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const/4 v0, 0x1

    if-ne p3, v0, :cond_29

    .line 121
    iget-object v0, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0, p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isIMPackage(Ljava/lang/String;I)I

    move-result v2

    .line 124
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    const-string v0, "cTp"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "pN"

    .line 125
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "add"

    .line 126
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "ime"

    .line 127
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "PACKAGE_CHANGED"

    .line 128
    invoke-virtual {p0, v1, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logWorkAppUsgae(ILjava/lang/String;J)V
    .registers 7

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    const-string v1, "cTp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "pN"

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "usgT"

    .line 93
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "WORKAPP_USAGE"

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logWorkModeOff(I)V
    .registers 4

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    const-string v1, "cTp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "WORK_MODE_OFF"

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logWorkModeOn(I)V
    .registers 4

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    const-string v1, "cTp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "WORK_MODE_ON"

    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public logWorkProfileAdded(ILjava/lang/String;)V
    .registers 6

    .line 153
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cTp"

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p2, :cond_27

    .line 156
    iget-object p2, p0, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 157
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :cond_27
    const-string/jumbo v1, "pN"

    .line 160
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pV"

    .line 161
    iget-object v2, p0, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v2, p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "WORK_PROFILE_CREATED"

    .line 162
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_58

    :catch_41
    move-exception p0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WORK_PROFILE_CREATED KA failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BasicContainerAnalytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-void
.end method

.method public logWorkProfileRemoved(I)V
    .registers 4

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    move-result p1

    const-string v1, "cTp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "WORK_PROFILE_REMOVED"

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
