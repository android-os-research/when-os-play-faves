.class public Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoTimeSettingObserver"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mMsg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 4

    .line 403
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 404
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    .line 405
    iput-object p2, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    .line 406
    iput p3, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    return-void
.end method


# virtual methods
.method public final isAutomaticTimeEnabled()Z
    .registers 3

    .line 426
    iget-object p0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    const/4 v1, 0x0

    .line 427
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public observe()V
    .registers 4

    .line 410
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    .line 411
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->isAutomaticTimeEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 418
    iget-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method
