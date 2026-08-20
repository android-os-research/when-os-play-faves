.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDataDelivery"

.field public static appset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;",
            ">;"
        }
    .end annotation
.end field

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field public static pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;


# instance fields
.field public dataEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public registeredDataRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation
.end field

.field public startTimer:J

.field public syncObject:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetdataEntry(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetstartTimer(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputstartTimer(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 140
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    .line 208
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageManagerImpl()Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 146
    iput-wide v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    .line 160
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 162
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    .line 166
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    .line 168
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->dataEntry:Ljava/util/List;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->startTimer:J

    return-void
.end method

.method public static checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 661
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 667
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "which "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 669
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 671
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 675
    :goto_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 677
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30

    .line 681
    :cond_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 685
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    .line 701
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v1, :cond_6

    return-object v0

    .line 705
    :cond_6
    invoke-virtual {v1, p0}, Lcom/android/server/pm/IPackageManagerBase;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_bc

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    if-nez v1, :cond_2c

    .line 709
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the packages for uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for processName: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 715
    :cond_2c
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c0

    .line 719
    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCacheBasedOnUid(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    return-object v3

    :cond_37
    const/4 v3, 0x0

    .line 727
    aget-object v6, v1, v3

    .line 729
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v3, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/pm/IPackageManagerBase;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 731
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_c0

    .line 733
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7f

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the process:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for package "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for uid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 745
    :cond_7f
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 749
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_bb

    .line 753
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_a9

    .line 755
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object v4, v2

    move v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_b8

    .line 761
    :cond_a9
    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object v4, v2

    move v5, p0

    move-object v7, v8

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 767
    :goto_b8
    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_bb} :catch_bc

    :cond_bb
    return-object p1

    :catch_bc
    move-exception p0

    .line 785
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c0
    return-object v0
.end method

.method public static clearHashCacheEntire()V
    .registers 5

    .line 551
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 553
    :try_start_3
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_23

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearHashCacheEntire Called : cache size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_23
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    if-eqz v1, :cond_46

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDelivery hash cache entire deletion : cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public static compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_d3

    if-eqz p2, :cond_d3

    if-eqz p3, :cond_d3

    if-eqz p4, :cond_d3

    .line 1059
    :try_start_9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_cf

    const-string v2, "for uid "

    const-string v3, "for package "

    const-string/jumbo v4, "unable to find the file location for the process:"

    const-string v5, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const/16 v6, 0xf

    if-le v1, v6, :cond_80

    .line 1061
    :try_start_1a
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1063
    :cond_2f
    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_d3

    .line 1065
    new-instance v1, Ljava/io/File;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_5f

    .line 1071
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1077
    :cond_5f
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 1081
    new-instance p4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v1, p4

    move v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1085
    invoke-static {p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V

    return-object p1

    .line 1101
    :cond_80
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1103
    iget-object v1, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v1, :cond_d3

    .line 1105
    new-instance v1, Ljava/io/File;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_b6

    .line 1111
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1117
    :cond_b6
    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 1121
    new-instance p4, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object v1, p4

    move v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1125
    invoke-static {p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_ce} :catch_cf

    return-object p1

    :catch_cf
    move-exception p0

    .line 1145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d3
    return-object v0
.end method

.method public static getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    .line 799
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v1, :cond_6

    return-object v0

    .line 803
    :cond_6
    invoke-virtual {v1, p0}, Lcom/android/server/pm/IPackageManagerBase;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    .line 809
    :cond_d
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_e7

    aget-object v5, v1, v4

    .line 813
    sget-object v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v7, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/server/pm/IPackageManagerBase;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 815
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v7, :cond_2f

    if-eqz p1, :cond_2f

    .line 817
    invoke-static {p0, p1, v5, v7, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2f

    return-object v7

    .line 831
    :cond_2f
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v8, 0x4

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/android/server/pm/IPackageManagerBase;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_5b

    .line 835
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_5b

    .line 839
    array-length v8, v7

    move v9, v3

    :goto_43
    if-ge v9, v8, :cond_5b

    aget-object v10, v7, v9

    if-eqz v10, :cond_58

    .line 841
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_58

    if-eqz p1, :cond_58

    if-eqz v6, :cond_58

    .line 843
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_58

    return-object v10

    :cond_58
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 863
    :cond_5b
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v8, 0x8

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/android/server/pm/IPackageManagerBase;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_87

    .line 867
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_87

    .line 871
    array-length v8, v7

    move v9, v3

    :goto_6f
    if-ge v9, v8, :cond_87

    aget-object v10, v7, v9

    if-eqz v10, :cond_84

    .line 873
    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_84

    if-eqz p1, :cond_84

    if-eqz v6, :cond_84

    .line 875
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_84

    return-object v10

    :cond_84
    add-int/lit8 v9, v9, 0x1

    goto :goto_6f

    .line 895
    :cond_87
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v8, 0x2

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/android/server/pm/IPackageManagerBase;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_b3

    .line 899
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_b3

    .line 903
    array-length v8, v7

    move v9, v3

    :goto_9b
    if-ge v9, v8, :cond_b3

    aget-object v10, v7, v9

    if-eqz v10, :cond_b0

    .line 905
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_b0

    if-eqz p1, :cond_b0

    if-eqz v6, :cond_b0

    .line 907
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b0

    return-object v10

    :cond_b0
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    .line 927
    :cond_b3
    sget-object v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v8, 0x1

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/android/server/pm/IPackageManagerBase;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_df

    .line 931
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_df

    .line 935
    array-length v8, v7

    move v9, v3

    :goto_c7
    if-ge v9, v8, :cond_df

    aget-object v10, v7, v9

    if-eqz v10, :cond_dc

    .line 937
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_dc

    if-eqz p1, :cond_dc

    if-eqz v6, :cond_dc

    .line 939
    invoke-static {p0, p1, v5, v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->compareProcessNamesAndCalculateHash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v10
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d9} :catch_e3

    if-eqz v10, :cond_dc

    return-object v10

    :cond_dc
    add-int/lit8 v9, v9, 0x1

    goto :goto_c7

    :cond_df
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :catch_e3
    move-exception p0

    .line 959
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e7
    return-object v0
.end method

.method public static getHash(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const-string v0, "close FileInputStream: IOException"

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "SHA-256"

    .line 1165
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1167
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_10} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_10} :catch_6e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_60
    .catchall {:try_start_5 .. :try_end_10} :catchall_5e

    const/16 p0, 0x400

    :try_start_12
    new-array p0, p0, [B

    .line 1173
    :goto_14
    invoke-virtual {v4, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_20

    .line 1175
    invoke-virtual {v3, p0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_14

    .line 1179
    :cond_20
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1181
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_29} :catch_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_29} :catch_58
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_29} :catch_55
    .catchall {:try_start_12 .. :try_end_29} :catchall_91

    move v5, v7

    .line 1183
    :goto_2a
    :try_start_2a
    array-length v6, p0

    if-ge v5, v6, :cond_46

    const-string v6, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 1185
    aget-byte v9, p0, v5

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_43} :catch_53
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_43} :catch_51
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_43} :catch_4f
    .catchall {:try_start_2a .. :try_end_43} :catchall_91

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 1207
    :cond_46
    :try_start_46
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_89

    :catch_4a
    move-exception p0

    .line 1213
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    :catch_4f
    move-exception p0

    goto :goto_63

    :catch_51
    move-exception p0

    goto :goto_71

    :catch_53
    move-exception p0

    goto :goto_7f

    :catch_55
    move-exception p0

    move-object v3, v2

    goto :goto_63

    :catch_58
    move-exception p0

    move-object v3, v2

    goto :goto_71

    :catch_5b
    move-exception p0

    move-object v3, v2

    goto :goto_7f

    :catchall_5e
    move-exception p0

    goto :goto_93

    :catch_60
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    :goto_63
    :try_start_63
    const-string v5, "getHash: IOException"

    .line 1199
    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_91

    if-eqz v4, :cond_89

    .line 1207
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_4a

    goto :goto_89

    :catch_6e
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    :goto_71
    :try_start_71
    const-string v5, "getHash: FileNotFoundException"

    .line 1195
    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_91

    if-eqz v4, :cond_89

    .line 1207
    :try_start_78
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_4a

    goto :goto_89

    :catch_7c
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    :goto_7f
    :try_start_7f
    const-string v5, "getHash: NoSuchAlgorithmException"

    .line 1191
    invoke-static {v1, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_91

    if-eqz v4, :cond_89

    .line 1207
    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_4a

    :cond_89
    :goto_89
    if-nez v3, :cond_8c

    return-object v2

    .line 1223
    :cond_8c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_91
    move-exception p0

    move-object v2, v4

    :goto_93
    if-eqz v2, :cond_9d

    .line 1207
    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_9d

    :catch_99
    move-exception v2

    .line 1213
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    :cond_9d
    :goto_9d
    throw p0
.end method

.method public static getHashFromCache(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 427
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 429
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 435
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_9

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 437
    :cond_29
    iget-object p0, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 443
    :cond_2d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public static getHashFromCacheBasedOnUid(I)Ljava/lang/String;
    .registers 5

    .line 453
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 455
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 457
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 461
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_9

    .line 463
    iget-object p0, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 469
    :cond_1d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public static getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 1

    .line 228
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    if-nez v0, :cond_b

    .line 230
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-direct {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 232
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method public static getPackageHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 571
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHashFromCache(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    .line 583
    :cond_8
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkIfProcessIsDaemon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 585
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 587
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_29

    return-object v0

    .line 597
    :cond_29
    invoke-static {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4e

    return-object p0

    .line 611
    :cond_30
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->checkSingleUidAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    return-object v1

    .line 621
    :cond_37
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getFileLocationFromProcessNameAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    return-object v1

    .line 631
    :cond_3e
    invoke-static {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_45

    if-eqz p0, :cond_4e

    return-object p0

    :catch_45
    move-exception p0

    const-string p1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "getPackageHash: Exception"

    .line 649
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    return-object v0
.end method

.method public static getPackageManagerImpl()Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
    .registers 1

    .line 1231
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v0, :cond_f

    const-string/jumbo v0, "package"

    .line 1233
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 1237
    :cond_f
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    return-object v0
.end method

.method public static getPackageNameFromPathAndCalculateHash(ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    .line 973
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    const-string v1, "/"

    .line 979
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 981
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_a6

    const/4 v2, 0x2

    .line 983
    aget-object v4, v1, v2

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_1f

    .line 985
    aget-object v1, v1, v5

    goto :goto_42

    .line 987
    :cond_1f
    array-length v4, v1

    const/4 v6, 0x5

    if-lt v4, v6, :cond_41

    aget-object v2, v1, v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aget-object v4, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 989
    aget-object v1, v1, v3

    goto :goto_42

    :cond_41
    move-object v1, v0

    :goto_42
    if-eqz v1, :cond_a6

    .line 995
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/IPackageManagerBase;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4d

    return-object v0

    .line 1001
    :cond_4d
    array-length v3, v2

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v3, :cond_a6

    aget-object v5, v2, v4

    .line 1003
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 1005
    sget-object v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->pmsImp:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v7, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/server/pm/IPackageManagerBase;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_9f

    .line 1007
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v6, :cond_9f

    .line 1009
    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_98

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find the file location for the deamon path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for uid "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1021
    :cond_98
    invoke-static {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9c} :catch_a2

    if-eqz v5, :cond_9f

    return-object v5

    :cond_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :catch_a2
    move-exception p0

    .line 1043
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a6
    return-object v0
.end method

.method public static insertHashIntoCache(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;)V
    .registers 5

    .line 479
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_c

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v2, "insertHashIntoCache Called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_c
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v1

    if-eqz v0, :cond_51

    :try_start_11
    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataDelivery hash cache insertion uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pacName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " procName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trunProcName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_51
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    monitor-exit v1

    return-void

    :goto_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_11 .. :try_end_59} :catchall_5a

    throw p0

    :catchall_5a
    move-exception p0

    goto :goto_58
.end method

.method public static updateHashCache(ILjava/lang/String;)V
    .registers 8

    .line 495
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "updateHashCache Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 499
    :try_start_f
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 501
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 503
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 505
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    if-ne v3, p0, :cond_15

    iget-object v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 507
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_71

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataDelivery hash cache deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 515
    :cond_75
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_f .. :try_end_79} :catchall_77

    throw p0
.end method

.method public static updateHashCacheForUser(I)V
    .registers 7

    .line 523
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string/jumbo v1, "updateHashCacheForUser Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    monitor-enter v0

    .line 527
    :try_start_f
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->appset:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 529
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 531
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;

    .line 533
    iget v3, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->userId:I

    if-ne v3, p0, :cond_15

    .line 535
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_69

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataDelivery hash cache user deletion uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pacName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " procName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " trunProcName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->truncatedProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$AppInfoSet;->hash:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    .line 543
    :cond_6d
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_f .. :try_end_71} :catchall_6f

    throw p0
.end method


# virtual methods
.method public accumulateData(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->sendMessageToHandler(IIILjava/lang/Object;)V

    return v1
.end method

.method public addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V
    .registers 7

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding recipient failed for recipient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 248
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v1, :cond_42

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_42
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 252
    :try_start_45
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v4

    .line 252
    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_72

    .line 256
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_72

    const-string p0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added recipient for data collection:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_72
    monitor-exit v2

    return-void

    :catchall_74
    move-exception p0

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_45 .. :try_end_76} :catchall_74

    throw p0
.end method

.method public deliverData(Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_8e

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto/16 :goto_8e

    .line 336
    :cond_b
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 340
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1b

    goto :goto_7e

    .line 348
    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_8b

    .line 352
    :try_start_2b
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v3

    .line 354
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_58

    .line 358
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v3, :cond_1f

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliverData: service connection is null for entry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 364
    :cond_58
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 366
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_65

    goto :goto_1f

    .line 372
    :cond_65
    invoke-interface {v3, v4, v2}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_68} :catch_72
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_68} :catch_69
    .catchall {:try_start_2b .. :try_end_68} :catchall_8b

    goto :goto_1f

    :catch_69
    move-exception v2

    :try_start_6a
    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v4, "deliverData: Exception "

    .line 380
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_72
    move-exception v2

    const-string v3, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string v4, "deliverData: RemoteException "

    .line 376
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 385
    :cond_7b
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    .line 342
    :cond_7e
    :goto_7e
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz p0, :cond_89

    const-string p0, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string p1, "deliverData: No data delivery herlper entries."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_89
    monitor-exit v1

    return v0

    :catchall_8b
    move-exception p0

    .line 385
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_6a .. :try_end_8d} :catchall_8b

    throw p0

    :cond_8e
    :goto_8e
    return v0
.end method

.method public final getAugmentedData(Lcom/android/server/enterprise/nap/DataDeliveryHelper;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2c

    if-nez p2, :cond_6

    goto :goto_2c

    .line 1269
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 1271
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1275
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->processData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1277
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2b
    return-object p0

    .line 1263
    :cond_2c
    :goto_2c
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz p1, :cond_37

    const-string p1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    const-string p2, "getAugmentedData: Helper or data is null."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object p0
.end method

.method public getRecipientList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/DataDeliveryHelper;",
            ">;"
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    if-nez v1, :cond_e

    .line 1343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    .line 1345
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->registeredDataRecipients:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 1347
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public initializeHandlerThread()V
    .registers 4

    .line 415
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataDeliveryHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    .line 417
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 419
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    return-void
.end method

.method public final isDataRecipientPresent(Ljava/lang/String;I)I
    .registers 6

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 1317
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 1319
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1321
    sget-boolean p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz p0, :cond_43

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDataRecipientPresent: found recipient:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_42
    const/4 v0, -0x1

    :cond_43
    :goto_43
    return v0
.end method

.method public removeDataRecipientsForPackage(Ljava/lang/String;I)V
    .registers 8

    .line 296
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    .line 300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 302
    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 304
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    .line 306
    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 308
    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v2

    if-ne v2, p2, :cond_b

    .line 310
    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDataRecipientsForPackage: removing recipient for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 322
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public removeNAPDataRecipient(Ljava/lang/String;I)V
    .registers 8

    .line 270
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->isDataRecipientPresent(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_b

    .line 276
    monitor-exit v0

    return-void

    .line 280
    :cond_b
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->DBG:Z

    if-eqz v2, :cond_2a

    const-string v2, "NetworkAnalytics:NetworkAnalyticsDataDelivery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeNAPDataRecipient: removing recipient for data collection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getRecipientList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final sendMessageToHandler(IIILjava/lang/Object;)V
    .registers 6

    .line 1245
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    if-eqz v0, :cond_d

    .line 1247
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1249
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_d
    return-void
.end method

.method public terminateHandlerThread()V
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_7

    .line 407
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_7
    return-void
.end method

.method public final validateRecipientObject(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 1295
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1297
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 p0, 0x1

    :cond_12
    :goto_12
    return p0
.end method
