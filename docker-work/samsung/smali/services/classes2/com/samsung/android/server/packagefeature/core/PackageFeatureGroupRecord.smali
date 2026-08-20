.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;
.super Ljava/lang/Object;
.source "PackageFeatureGroupRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;
    }
.end annotation


# instance fields
.field public final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

.field public mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

.field public mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public final mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsAllFeaturesDisabled:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;


# direct methods
.method public static synthetic $r8$lambda$ouuv21HGfeoqQPLyCa-u5gVQ5Fc(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->lambda$dispatchUnformattedPackageFeatureFileChanged$1(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVNK83BCHuc84-bEVjikgJEu7YQ(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->lambda$dispatchPackageFeatureDataChanged$0(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/samsung/android/server/util/CoreLogger;",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->NULL:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 80
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 81
    new-instance p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;

    invoke-direct {p2, p1, p3, p4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;)V

    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;

    .line 84
    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    return-void
.end method

.method private synthetic lambda$dispatchPackageFeatureDataChanged$0(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 8

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 195
    invoke-interface {p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;->onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_33

    :catchall_1b
    move-exception p2

    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_33
    return-void
.end method

.method private synthetic lambda$dispatchUnformattedPackageFeatureFileChanged$1(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 9

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 208
    invoke-interface {p2, p3, p4}, Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;->onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Ljava/util/function/Function;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_33

    :catchall_1b
    move-exception p2

    .line 210
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p3, 0x5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_33
    return-void
.end method


# virtual methods
.method public dispatchPackageFeatureDataChanged(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchUnformattedPackageFeatureFileChanged(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 242
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "GroupName="

    .line 243
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-boolean v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    if-eqz v0, :cond_1a

    const-string v0, ", Unformatted=true"

    .line 246
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    const-string v0, ", Version="

    .line 248
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-eqz v0, :cond_73

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-eq v0, v1, :cond_73

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_73

    .line 254
    :cond_57
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V

    :cond_73
    :goto_73
    return-void
.end method

.method public executeDebugMode(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 223
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "Can not execute, There is no registered callback."

    return-object p0

    .line 226
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "All package features disabled."

    return-object p0

    .line 231
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    goto :goto_27

    .line 232
    :cond_22
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;-><init>(I)V

    .line 233
    :goto_27
    sget-object v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->DEBUG_MODE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)Z

    .line 234
    array-length v2, p2

    :goto_2d
    if-ge v1, v2, :cond_38

    aget-object v3, p2, v1

    const/4 v4, 0x0

    .line 235
    invoke-virtual {v0, p1, v4, v3, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->putPackageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 237
    :cond_38
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Packages="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Extra="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVersion()I
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getVersion()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final getPackageFeatureData(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1a

    .line 219
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getCopiedPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    move-result-object p0

    return-object p0

    .line 217
    :cond_1a
    :goto_1a
    new-instance p0, Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;-><init>()V

    return-object p0
.end method

.method public initialize()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: GroupName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v2, v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 89
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->INITIALIZE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->setGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;

    invoke-virtual {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->loadFromCacheFile()Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->CACHE_FILE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)Z

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->loadFromRawResource(I)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->RAW_RESOURCE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)Z

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    return-void
.end method

.method public propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V
    .registers 9

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "to propagate to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-le p5, p1, :cond_35

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    :cond_35
    const-string p1, ""

    :goto_37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->dispatchPackageFeatureDataChanged(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    return-void
.end method

.method public propagateToCallbacks()V
    .registers 15

    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_a0

    .line 161
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mIsAllFeaturesDisabled:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 162
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->POLICY_DISABLED:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    goto :goto_21

    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 163
    :goto_21
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to propagate to callbacks("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v4, v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_60
    :goto_60
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/List;

    .line 169
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_81

    goto :goto_60

    .line 172
    :cond_81
    invoke-virtual {p0, v9}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getPackageFeatureData(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    move-result-object v11

    .line 173
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v1, 0x0

    :goto_8a
    if-ge v1, v12, :cond_60

    .line 175
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    add-int/lit8 v13, v1, 0x1

    move-object v1, p0

    move-object v2, v9

    move-object v4, v11

    move v5, v13

    move v6, v12

    move-object v7, v0

    .line 176
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V

    move v1, v13

    goto :goto_8a

    :cond_a0
    :goto_a0
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .registers 10

    .line 97
    iget-boolean v0, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    if-nez v0, :cond_23

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageFeature("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not enabled."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-void

    .line 102
    :cond_23
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_34

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :cond_34
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-nez p1, :cond_41

    return-void

    .line 113
    :cond_41
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getPackageFeatureData(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "registerCallback"

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V

    return-void
.end method

.method public final setGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 154
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    return-void
.end method

.method public final updateGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 148
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->setGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateGroupDataDummyFromScpm()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-nez v0, :cond_c

    .line 135
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 137
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->SCPM:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)Z

    return-void
.end method

.method public updateGroupDataFromScpm(Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    if-eqz p1, :cond_14

    .line 118
    :try_start_c
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_15

    :catchall_12
    move-exception p1

    goto :goto_45

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_1d

    if-eqz v0, :cond_1c

    .line 128
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_12

    :cond_1c
    return-void

    .line 122
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    move-result v1

    .line 122
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->loadFromScpm(ILjava/io/Reader;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    move-result-object p1

    .line 124
    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->SCPM:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupData(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->saveToCacheFile(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;)V
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_3b

    .line 128
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_12

    goto :goto_4d

    :catchall_3b
    move-exception p1

    .line 118
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v0

    :try_start_41
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_12

    .line 129
    :goto_45
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v0, 0x5

    const-string v1, "Failed to newFileReader"

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_4d
    return-void
.end method
