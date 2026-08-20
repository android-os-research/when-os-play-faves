.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperData"
.end annotation


# instance fields
.field public allowBackup:Z

.field public callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field public connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field public cropFile:Ljava/io/File;

.field public cropHint:Landroid/graphics/Rect;

.field public fromForegroundApp:Z

.field public imageWallpaperPending:Z

.field public lastDiedTime:J

.field public mIsColorExtractedFromDim:Z

.field public mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

.field public mUidToDimAmount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mWallpaperDimAmount:F

.field public name:Ljava/lang/String;

.field public nextWallpaperComponent:Landroid/content/ComponentName;

.field public primaryColors:Landroid/app/WallpaperColors;

.field public setComplete:Landroid/app/IWallpaperManagerCallback;

.field public userId:I

.field public wallpaperComponent:Landroid/content/ComponentName;

.field public wallpaperFile:Ljava/io/File;

.field public wallpaperId:I

.field public wallpaperObserver:Landroid/os/FileObserver;

.field public wallpaperUpdating:Z

.field public whichPending:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1503
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1538
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 1544
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    .line 1555
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 1565
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 1574
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 1580
    new-instance p1, Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-direct {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 1582
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "wallpaper_lock_orig"

    .line 1585
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 1586
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .line 1760
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1761
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 1762
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception p0

    .line 1765
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public cropExists()Z
    .registers 1

    .line 1595
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1599
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t userId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t wallpaperComponent = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t nextWallpaperComponent ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    :try_start_42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mTimeCreated = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCreationTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mWhich = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mWpType = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t cropHint = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mUri = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t wallpaperFile = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t getWallpaperFile() = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_111

    .line 1801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mMotionPkgName = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionPkgName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    :cond_111
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_134

    .line 1804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mAnimatedPkgName = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    :cond_134
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_1c5

    .line 1807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mVideoFilePath = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mVideoPkgName = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoPkgName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1809
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mVideoColor = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoColor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mVideoFileName = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\t\t mVideoDefaultHasBeenUsed = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoDefaultHasBeenUsed()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c0
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_1c0} :catch_1c1

    goto :goto_1c5

    :catch_1c1
    move-exception p0

    .line 1814
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1c5
    :goto_1c5
    return-void
.end method

.method public getNextWallpaperComponent()Landroid/content/ComponentName;
    .registers 1

    .line 1625
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getOrientation()I
    .registers 1

    .line 1707
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    .line 1736
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v1, 0x4

    if-eq v0, v1, :cond_29

    const/4 v1, 0x7

    const-string v2, ""

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    return-object v2

    .line 1744
    :cond_18
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1746
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_28

    .line 1747
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    return-object v2

    .line 1740
    :cond_29
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1742
    :cond_30
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionPkgName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1738
    :cond_37
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;
    .registers 1

    .line 1691
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    return-object p0
.end method

.method public getWallpaperComponent()Landroid/content/ComponentName;
    .registers 1

    .line 1617
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getWallpaperCropFile()Ljava/io/File;
    .registers 1

    .line 1687
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    return-object p0
.end method

.method public getWallpaperFile()Ljava/io/File;
    .registers 3

    .line 1658
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 1660
    :cond_17
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p0

    goto :goto_2e

    .line 1668
    :cond_1e
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object p0

    goto :goto_2e

    .line 1664
    :cond_25
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p0

    goto :goto_2e

    .line 1673
    :cond_2c
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    :goto_2e
    return-object p0
.end method

.method public isSameWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 6

    .line 1711
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v1

    const-string v2, "WallpaperManagerService"

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1712
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v0, 0x1

    if-nez p0, :cond_48

    .line 1713
    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v3, "com.android.systemui.ImageWallpaper"

    invoke-direct {p0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez p0, :cond_56

    :cond_42
    const-string p0, "Same Image Wallpaper!"

    .line 1717
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1721
    :cond_48
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    const-string p0, "Same Live wallpaper!"

    .line 1722
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_56
    const-string p0, "Different wallpaper"

    .line 1727
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .registers 5

    .line 1732
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1629
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 1631
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 1632
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    return-void
.end method

.method public setImageWallpaperPending(Z)V
    .registers 2

    .line 1695
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    return-void
.end method

.method public setNextWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 2

    .line 1621
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 2

    .line 1613
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public setWallpaperCropFile(Ljava/io/File;)V
    .registers 2

    .line 1683
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    return-void
.end method

.method public setWallpaperFile(Ljava/io/File;)V
    .registers 4

    .line 1636
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    .line 1650
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    goto :goto_24

    .line 1638
    :cond_13
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFirstFrameFile(Ljava/io/File;)V

    goto :goto_24

    .line 1646
    :cond_19
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedBackground(Ljava/io/File;)V

    goto :goto_24

    .line 1642
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionBackground(Ljava/io/File;)V

    :goto_24
    return-void
.end method

.method public setWhich(I)V
    .registers 2

    .line 1699
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWhich(I)V

    return-void
.end method

.method public setWhichPending(I)V
    .registers 2

    .line 1703
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    return-void
.end method

.method public sourceExists()Z
    .registers 1

    .line 1604
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1608
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string/jumbo v1, "type = "

    .line 1774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    .line 1775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", which = "

    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri= "

    .line 1777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaperComponent = "

    .line 1778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextWallpaperComponent = "

    .line 1779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 1781
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1783
    :goto_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
