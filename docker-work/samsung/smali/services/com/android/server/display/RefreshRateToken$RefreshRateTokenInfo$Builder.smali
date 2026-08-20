.class public Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;
.super Ljava/lang/Object;
.source "RefreshRateToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mAcquireTime:J

.field public mRefreshRate:I

.field public mTag:Ljava/lang/String;

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mToken:Landroid/os/IBinder;

    .line 109
    iput-object p2, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mTag:Ljava/lang/String;

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mAcquireTime:J

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;
    .registers 3

    .line 104
    new-instance v0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;-><init>(Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo-IA;)V

    return-object v0
.end method

.method public setRefreshRate(I)Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;
    .registers 2

    .line 114
    iput p1, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mRefreshRate:I

    return-object p0
.end method
