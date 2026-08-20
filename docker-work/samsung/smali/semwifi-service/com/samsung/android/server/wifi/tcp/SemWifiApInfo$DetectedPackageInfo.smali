.class public Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;
.super Ljava/lang/Object;
.source "SemWifiApInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectedPackageInfo"
.end annotation


# static fields
.field private static final PREVENTION_NORMAL_DETECTION_COUNT:I = 0x3

.field private static final PREVENTION_NORMAL_OPERATION_TIME_MINUTE:I = 0x1e


# instance fields
.field private mDetectedCount:I

.field private mLastDetectedTime:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mPackageNormalOperationTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDetectedCount(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastDetectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageNormalOperationTime(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 50
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    if-eqz p2, :cond_e

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getTimeString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_e
    const-string p1, ""

    :goto_10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return-void
.end method

.method private getTimeString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private increaseDetectedCount()V
    .registers 2

    .line 91
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    return-void
.end method

.method private setLastDetectedTime(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addPackageNormalOperationTime(I)I
    .registers 3

    .line 80
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return v0
.end method

.method public getDetectedCount()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    return p0
.end method

.method public getLastDetectedTime()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageNormalOperationTime()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return p0
.end method

.method public isPackageNormalOperationTimePrevention()Z
    .registers 3

    .line 86
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_d

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public resetDetectedCount()V
    .registers 2

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    return-void
.end method

.method public resetPackageNormalOperationTime()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return-void
.end method

.method public updateDetectedInfo()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->increaseDetectedCount()V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getTimeString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->setLastDetectedTime(Ljava/lang/String;)V

    return-void
.end method
