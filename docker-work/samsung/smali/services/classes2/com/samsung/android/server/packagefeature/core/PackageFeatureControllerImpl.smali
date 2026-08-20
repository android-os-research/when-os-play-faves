.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;
.super Ljava/lang/Thread;
.source "PackageFeatureControllerImpl.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureController;
.implements Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$LazyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Thread;",
        "Lcom/samsung/android/server/packagefeature/PackageFeatureController;",
        "Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final LAZY_UPDATE_DELAY:J = 0x3e8L


# instance fields
.field public mGetFileDescriptor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

.field public mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

.field public mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

.field public mStarted:Z

.field public final mTmpUpdateRequestedGroupNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUpdateRequestedGroupNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RW9PjjHH5OpG3B3t2xWiK_BsLDs(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->lambda$updateGroupData$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UgPWCXbT-E_etJs8YCFTHC43pYE(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->lambda$initializeGroups$1(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$obg2KcJK4Fr2nMVKk-ZeYCujcHY(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupDataImmediately()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;-><init>()V

    return-void
.end method

.method public static getController()Lcom/samsung/android/server/packagefeature/PackageFeatureController;
    .registers 1

    .line 60
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$LazyHolder;->sController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    return-object v0
.end method

.method public static synthetic lambda$initializeGroups$1(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 1

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->initialize()V

    return-void
.end method

.method private synthetic lambda$updateGroupData$0(Ljava/lang/String;)V
    .registers 5

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->getGroupNames()Ljava/util/Set;

    move-result-object v0

    if-nez p1, :cond_c

    .line 166
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    .line 167
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_17
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    return-void
.end method


# virtual methods
.method public deleteCacheFiles()Ljava/lang/String;
    .registers 1

    .line 235
    invoke-static {}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->deleteCacheFiles()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "PackageFeatureController"

    .line 201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_8
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_13

    const-string v1, "dump"

    .line 205
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 206
    monitor-exit v0

    return-void

    .line 208
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 209
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 210
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const-string v0, "  "

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/util/CoreLogger;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :catchall_23
    move-exception p0

    .line 209
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public executeDebugMode(Lcom/samsung/android/server/packagefeature/PackageFeature;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 241
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    iget-object v2, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v2, v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p1, "Group is null."

    goto :goto_18

    .line 245
    :cond_12
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->executeDebugMode(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 247
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-object p1

    :catchall_20
    move-exception p0

    .line 246
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_f

    const-string p2, "executeShellCommand"

    .line 217
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 p0, 0x0

    .line 218
    monitor-exit v0

    return p0

    .line 220
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    if-nez v1, :cond_1a

    .line 221
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    .line 223
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_22

    .line 224
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_22
    move-exception p0

    .line 223
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getGroupNames()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_14

    const-string v1, "getGroupNames"

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 106
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    monitor-exit v0

    return-object p0

    .line 108
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1c

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroupNames()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 108
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getScpmVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->getCurrentVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 265
    :cond_15
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public initializeGroups()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    .line 230
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "The controller has not started yet."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    if-eqz p2, :cond_21

    .line 255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public onSettingsChanged()V
    .registers 6

    .line 191
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    invoke-virtual {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->isAllFeaturesDisabled()Z

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->updateAllFeaturesDisabled(Z)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 194
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSettingsChanged, mAllFeaturesDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 196
    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-nez v1, :cond_10

    const-string/jumbo p1, "registerCallback"

    const/4 p2, 0x0

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->logNotStarted(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 124
    monitor-exit v0

    return-void

    .line 126
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 128
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public run()V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    invoke-static {}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->deleteLegacyFiles()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->initializeGroups()V

    .line 136
    :goto_d
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mGetFileDescriptor:Ljava/util/function/Function;

    if-nez v3, :cond_2c

    goto :goto_3b

    .line 144
    :cond_2c
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    move-result-object v2

    if-nez v2, :cond_35

    goto :goto_1b

    .line 148
    :cond_35
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mGetFileDescriptor:Ljava/util/function/Function;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupDataFromScpm(Ljava/util/function/Function;)V

    goto :goto_1b

    .line 150
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_41

    goto :goto_59

    :catchall_41
    move-exception v1

    .line 152
    :try_start_42
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "What a Terrible Failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_59
    monitor-exit v0

    goto :goto_d

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public setFileDescriptorFunction(Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 116
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public startController(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V
    .registers 6

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    if-eqz v1, :cond_11

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p1, 0x5

    const-string p2, "The controller has already been started."

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 89
    monitor-exit v0

    return-void

    .line 92
    :cond_11
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 94
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/PackageFeatureController;Lcom/samsung/android/server/util/CoreLogger;)V

    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 95
    new-instance p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V

    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 96
    new-instance p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mStarted:Z

    .line 98
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public updateGroupData(Ljava/lang/String;)V
    .registers 6

    .line 160
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1c

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGroupData groupName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 163
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateGroupDataImmediately()V
    .registers 6

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 182
    monitor-exit v0

    return-void

    .line 184
    :cond_19
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateGroupData, Queue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mUpdateRequestedGroupNames:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method
