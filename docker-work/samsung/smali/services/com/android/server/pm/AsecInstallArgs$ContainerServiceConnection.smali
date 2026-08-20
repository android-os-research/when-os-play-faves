.class public final Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;
.super Ljava/lang/Object;
.source "AsecInstallArgs.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AsecInstallArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContainerServiceConnection"
.end annotation


# instance fields
.field public mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallArgs;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallArgs;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;->this$0:Lcom/android/server/pm/AsecInstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/AsecInstallArgs;Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;-><init>(Lcom/android/server/pm/AsecInstallArgs;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 404
    monitor-enter p0

    .line 406
    :try_start_1
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/pm/containerservice/IContainerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs$ContainerServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 408
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
