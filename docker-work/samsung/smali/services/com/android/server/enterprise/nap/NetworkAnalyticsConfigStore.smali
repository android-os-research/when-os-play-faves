.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:ConfigStore"

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;


# instance fields
.field public activationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;",
            ">;"
        }
    .end annotation
.end field

.field public adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field public mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

.field public profileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 36
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activationMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public activateProfile(ILjava/lang/String;II)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "NetworkAnalytics:ConfigStore"

    if-gtz p1, :cond_b

    const-string p0, "addProfileToDatabase: Invalid admin userId"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :cond_b
    const-string/jumbo v1, "profile_name"

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "package_name"

    .line 99
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package_signature"

    .line 100
    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "flags"

    const/4 v6, -0x1

    .line 101
    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 103
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "profileName"

    .line 104
    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, -0x3e7

    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "client_userid"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "op_userid"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "adminUid"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "pkgName"

    .line 108
    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "pkgSign"

    .line 109
    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "jsondata"

    .line 111
    invoke-virtual {v7, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "activeState"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "flowType"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "intervalValue"

    invoke-virtual {v7, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    iget-object v9, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v10, "NAPProfileTable"

    invoke-virtual {v9, v10, v2, v2, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 117
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->DBG:Z

    if-eqz v7, :cond_a7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addProfileToDatabase: Added to database:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    if-eqz v2, :cond_10e

    .line 119
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->opUserId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 121
    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->jsonString(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 122
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 123
    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->packageSignature(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 124
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->adminUid(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 125
    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flags(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 126
    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->userId(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 127
    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->flowTypeForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 128
    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->intervalValueForProfile(I)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;

    .line 129
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$Builder;->build()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f7

    if-eqz v7, :cond_e5

    const-string p3, "addProfileToDatabase: adminToProfileMap.get(adminUid) = null"

    .line 133
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_e5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10d

    :cond_f7
    if-eqz v7, :cond_fe

    const-string p3, "addProfileToDatabase: adminToProfileMap.get(adminUid) is present"

    .line 139
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_fe
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->adminToProfileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10d
    move v6, v5

    :cond_10e
    if-eqz v7, :cond_124

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addProfileToDatabase: returnValue = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    return v6
.end method

.method public doesAdminOwnProfile(ILjava/lang/String;)I
    .registers 5

    .line 649
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->profileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    const-string v0, "NetworkAnalytics:ConfigStore"

    if-nez p0, :cond_22

    .line 652
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "doesAdminOwnProfile: Profile name not found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    .line 655
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result p0

    if-eq p0, p1, :cond_46

    .line 658
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doesAdminOwnProfile: Profile "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to adminUid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllActiveKeysForProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllProfilesForPackageinUser(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllProfilesForUser(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientProfileNames(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientProfiles(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientProfiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getJSonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSetActivatedProfiles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserIdLocationOfPackage(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final initializeActivationTable()V
    .registers 1

    return-void
.end method

.method public final initializeProfileTable()V
    .registers 1

    return-void
.end method

.method public initializeTables()V
    .registers 1

    return-void
.end method

.method public isActivatedPackage(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isAddedPackage(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isProfileActivatedForUser(Ljava/lang/String;I)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public removeProfileFromDatabase(ILjava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public updateBindUserIdForProfile(Ljava/lang/String;II)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public updateTablesForProfileRemoval(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public validateJsonContent(Lorg/json/JSONObject;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public validatePkgSignForAllProfiles(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method
