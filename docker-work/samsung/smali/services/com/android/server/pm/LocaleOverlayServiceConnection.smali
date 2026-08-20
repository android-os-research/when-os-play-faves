.class public final Lcom/android/server/pm/LocaleOverlayServiceConnection;
.super Ljava/lang/Object;
.source "LocaleOverlayServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mLocaleOverlayService:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocaleOverlayService()Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/server/pm/LocaleOverlayServiceConnection;->mLocaleOverlayService:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    return-object p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 38
    monitor-enter p0

    .line 43
    :try_start_1
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/LocaleOverlayServiceConnection;->mLocaleOverlayService:Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 45
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
