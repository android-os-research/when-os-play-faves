.class public Lcom/android/server/connectivity/PacProxyService$3;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacProxyService;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 388
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 391
    :try_start_6
    new-instance p2, Lcom/android/server/connectivity/PacProxyService$3$1;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/PacProxyService$3$1;-><init>(Lcom/android/server/connectivity/PacProxyService$3;)V

    invoke-interface {p1, p2}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 412
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
