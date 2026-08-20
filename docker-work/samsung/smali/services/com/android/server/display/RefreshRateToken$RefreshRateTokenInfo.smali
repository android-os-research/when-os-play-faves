.class public Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;
.super Ljava/lang/Object;
.source "RefreshRateToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RefreshRateToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshRateTokenInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;
    }
.end annotation


# instance fields
.field public mAcquireTime:J

.field public mRefreshRate:I

.field public mTag:Ljava/lang/String;

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-object v0, p1, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 92
    iget-object v0, p1, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 93
    iget-wide v0, p1, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mAcquireTime:J

    iput-wide v0, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 94
    iget p1, p1, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;->mRefreshRate:I

    iput p1, p0, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;-><init>(Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo$Builder;)V

    return-void
.end method
