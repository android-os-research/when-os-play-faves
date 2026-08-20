.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperDataManager"
.end annotation


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public final mType:I

.field public final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$P7MNFBm3dXMJOHhtSQo617UAvU0(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->lambda$print$0(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 5

    .line 8639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8633
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    .line 8640
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    .line 8641
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mType:I

    .line 8642
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-void
.end method

.method public static synthetic lambda$print$0(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    const-string v0, "     mDisplayId="

    .line 8774
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8775
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "     mToken="

    .line 8776
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8777
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "     mEngine="

    .line 8778
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8779
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "WallpaperDataManager"

    .line 8731
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8732
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const-string v0, "Home Wallpaper"

    .line 8733
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_10
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    const-string v0, "Lock Wallpaper"

    .line 8735
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8737
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 8738
    :goto_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 8739
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 8740
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->print(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 8742
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_42

    const-string p0, ""

    .line 8743
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_42
    move-exception p0

    .line 8742
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public get(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 3

    const/4 v0, 0x0

    .line 8646
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public get(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 5

    .line 8651
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->getMode(I)I

    move-result p2

    .line 8652
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8653
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    if-ne p2, v1, :cond_17

    if-lez p1, :cond_17

    const-string p1, "WallpaperManagerService"

    const-string v1, "get, dex mode support only user = 0"

    .line 8655
    invoke-static {p1, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_17
    add-int/2addr p1, p2

    .line 8658
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 8659
    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public get(IILandroid/content/ComponentName;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 7

    .line 8665
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->getMode(I)I

    .line 8666
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 8667
    :try_start_6
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8668
    :goto_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 8669
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 8670
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    if-ne v2, p1, :cond_25

    .line 8671
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_25

    invoke-virtual {v2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 8676
    :cond_28
    :goto_28
    monitor-exit p2

    return-object v1

    :catchall_2a
    move-exception p0

    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final getMode(I)I
    .registers 2

    .line 8747
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    .line 8748
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x4

    :cond_f
    return p0
.end method

.method public final print(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 8

    const-string p0, " User "

    .line 8756
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": id="

    .line 8757
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  mCropHint="

    .line 8758
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "  mName="

    .line 8759
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  mMode="

    .line 8760
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  mAllowBackup="

    .line 8761
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  mWallpaperComponent="

    .line 8762
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8764
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p0, :cond_88

    const-string p3, "  Wallpaper connection "

    .line 8766
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8767
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p3, ":"

    .line 8768
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8769
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz p3, :cond_67

    const-string p3, "    mInfo.component="

    .line 8770
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8771
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {p3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8773
    :cond_67
    new-instance p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    const-string p3, "    mService="

    .line 8781
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8782
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p0, "    mLastDiedTime="

    .line 8783
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8784
    iget-wide v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    :cond_88
    const-string p0, "  mSemWallpaperData="

    .line 8786
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public put(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8

    if-ltz p1, :cond_70

    const/16 v0, 0x96

    if-le p1, v0, :cond_a

    const/16 v0, 0xa0

    if-lt p1, v0, :cond_70

    :cond_a
    const/16 v0, 0x5f

    if-le p1, v0, :cond_13

    const/16 v0, 0x63

    if-ge p1, v0, :cond_13

    goto :goto_70

    :cond_13
    const-string v0, "WallpaperManagerService"

    .line 8688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "put, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8689
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->getMode(I)I

    move-result p2

    .line 8690
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8691
    :try_start_41
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    .line 8692
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    if-eqz p3, :cond_5d

    if-lez p1, :cond_57

    const-string p0, "WallpaperManagerService"

    const-string/jumbo p1, "put, dex mode support only user = 0"

    .line 8694
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8695
    monitor-exit v0

    return-void

    .line 8697
    :cond_57
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsDesktopWallpaper(Z)V

    :cond_5d
    if-eqz p3, :cond_67

    .line 8700
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mType:I

    or-int/2addr p0, p2

    invoke-virtual {v2, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWhich(I)V

    :cond_67
    add-int/2addr p1, p2

    .line 8702
    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8703
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_41 .. :try_end_6f} :catchall_6d

    throw p0

    :cond_70
    :goto_70
    const-string p0, "WallpaperManagerService"

    .line 8685
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "put, invalid userId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remove(I)V
    .registers 3

    const/4 v0, 0x0

    .line 8707
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->remove(II)V

    return-void
.end method

.method public remove(II)V
    .registers 4

    .line 8711
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->getMode(I)I

    move-result p2

    .line 8712
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8713
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    add-int/2addr p1, p2

    .line 8714
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8715
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public size()I
    .registers 2

    .line 8725
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8726
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 8727
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public valueAt(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 3

    .line 8719
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8720
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDataManager;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 8721
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
