.class public Lcom/android/server/NetworkScorerAppManager;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScorerAppManager$SettingsFacade;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "NetworkScorerAppManager"

.field public static final VERBOSE:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "NetworkScorerAppManager"

    const/4 v1, 0x3

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    const/4 v1, 0x2

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    new-instance v0, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    invoke-direct {v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    return-void
.end method

.method public static getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_24

    .line 156
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No metadata found on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkScorerAppManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p0, 0x0

    return-object p0

    :cond_24
    const-string p0, "android.net.wifi.notification_channel_id_network_available"

    .line 162
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canAccessLocation(ILjava/lang/String;)Z
    .registers 5

    .line 214
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->isLocationModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1, v0, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 6

    .line 123
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "NetworkScorerAppManager"

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 124
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz p0, :cond_23

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No metadata found on "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-object v2

    :cond_24
    const-string v3, "android.net.wifi.use_open_wifi_package"

    .line 130
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 132
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz p0, :cond_4c

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No use_open_wifi_package metadata found on "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-object v2

    .line 138
    :cond_4d
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 140
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 142
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_83

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    if-eqz p0, :cond_8e

    .line 146
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_8e

    .line 147
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_8e
    return-object v2
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object p0

    return-object p0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .line 71
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    const-string v1, "NetworkScorerAppManager"

    if-eqz v0, :cond_b

    const-string v0, "getAllValidScorers()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_b
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.action.RECOMMEND_NETWORKS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a3

    .line 76
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_28

    goto/16 :goto_a3

    .line 81
    :cond_28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 82
    :goto_2e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a2

    .line 83
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 84
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/NetworkScorerAppManager;->hasPermissions(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 85
    sget-boolean v6, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v6, :cond_62

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is a valid scorer/recommender."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_62
    new-instance v9, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v5, v0}, Lcom/android/server/NetworkScorerAppManager;->getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v10

    .line 92
    invoke-virtual {p0, v5}, Lcom/android/server/NetworkScorerAppManager;->findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v11

    .line 94
    invoke-static {v5}, Lcom/android/server/NetworkScorerAppManager;->getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object v12

    .line 95
    new-instance v6, Landroid/net/NetworkScorerAppData;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/net/NetworkScorerAppData;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 100
    :cond_85
    sget-boolean v6, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v6, :cond_9f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is NOT a valid scorer/recommender."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_a2
    return-object v2

    .line 77
    :cond_a3
    :goto_a3
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz p0, :cond_bb

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found 0 Services able to handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_bb
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPackageSetting()Ljava/lang/String;
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040323

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNetworkRecommendationsEnabledSetting()I
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "network_recommendations_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getNetworkRecommendationsPackage()Ljava/lang/String;
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "network_recommendations_package"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 4

    .line 110
    iget-object p0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_11

    const-string v0, "android.net.scoring.recommendation_service_label"

    .line 112
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    return-object p0

    .line 117
    :cond_11
    invoke-virtual {p1, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_19

    const/4 p0, 0x0

    goto :goto_1d

    .line 118
    :cond_19
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method public final getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;
    .registers 6

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 191
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 192
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 193
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkScorerAppData;

    .line 194
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    return-object v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_27
    return-object v1
.end method

.method public final hasPermissions(ILjava/lang/String;)Z
    .registers 4

    .line 203
    invoke-virtual {p0, p2}, Lcom/android/server/NetworkScorerAppManager;->hasScoreNetworksPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkScorerAppManager;->canAccessLocation(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final hasScoreNetworksPermission(Ljava/lang/String;)Z
    .registers 3

    .line 208
    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.permission.SCORE_NETWORKS"

    .line 209
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final isLocationModeEnabled()Z
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getSecureInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public migrateNetworkScorerAppSettingIfNeeded()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_scorer_app"

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 319
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    .line 325
    :cond_19
    sget-boolean v3, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    const-string v4, "NetworkScorerAppManager"

    if-eqz v3, :cond_38

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrating Settings.Global.NETWORK_SCORER_APP ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_38
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 335
    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v6, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "use_open_wifi_package"

    .line 336
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "\'."

    if-eqz v5, :cond_7b

    if-eqz v1, :cond_7b

    .line 339
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 340
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5, v7, v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v3, :cond_7b

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings.Global.USE_OPEN_WIFI_PACKAGE set to \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_7b
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v3, :cond_a9

    const-string v0, "Settings.Global.NETWORK_SCORER_APP migration complete."

    .line 351
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v0, p0, v7}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings.Global.USE_OPEN_WIFI_PACKAGE is: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 244
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "NetworkScorerAppManager"

    if-eqz v1, :cond_31

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network scorer forced off, was: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    return v2

    .line 253
    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing network scorer from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    return v2

    .line 259
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested network scorer is not valid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setNetworkRecommendationsEnabledSetting(I)V
    .registers 4

    .line 380
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "network_recommendations_enabled"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 382
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz p0, :cond_25

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "network_recommendations_enabled set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkScorerAppManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public final setNetworkRecommendationsPackage(Ljava/lang/String;)V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object p0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "network_recommendations_package"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 370
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz p0, :cond_25

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "network_recommendations_package set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkScorerAppManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public updateState()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v0

    const-string v1, "NetworkScorerAppManager"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    .line 279
    sget-boolean p0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz p0, :cond_12

    const-string p0, "Recommendations forced off."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    .line 284
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    .line 286
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is the active scorer."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_36
    invoke-virtual {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    return-void

    :cond_3a
    const/4 v2, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getDefaultPackageSetting()Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 295
    invoke-virtual {p0, v4}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 296
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_63

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Defaulting the network recommendations app to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_63
    invoke-virtual {p0, v4}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    goto :goto_68

    :cond_67
    move v3, v2

    .line 304
    :goto_68
    invoke-virtual {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    return-void
.end method
