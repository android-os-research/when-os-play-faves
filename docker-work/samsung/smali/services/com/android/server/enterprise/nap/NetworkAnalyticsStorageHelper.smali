.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
.super Ljava/lang/Object;
.source "NetworkAnalyticsStorageHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:StorageHelper"

.field public static mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

.field public static mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mSynObj:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mSynObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mContext:Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mSynObj:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_9
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v1, :cond_16

    .line 41
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mContext:Landroid/content/Context;

    .line 42
    new-instance p0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    if-nez v1, :cond_e

    .line 49
    new-instance v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 51
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public updateFields(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method
