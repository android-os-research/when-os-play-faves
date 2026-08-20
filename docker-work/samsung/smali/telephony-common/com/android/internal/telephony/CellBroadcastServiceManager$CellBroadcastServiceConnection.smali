.class Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;
.super Ljava/lang/Object;
.source "CellBroadcastServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellBroadcastServiceConnection"
.end annotation


# instance fields
.field blacklist mService:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;-><init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    const-string p0, "CellBroadcastServiceManager"

    const-string p1, "Binding died"

    .line 336
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    const-string p0, "CellBroadcastServiceManager"

    const-string p1, "Null binding"

    .line 341
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "CellBroadcastServiceManager"

    const-string v0, "connected to CellBroadcastService"

    .line 324
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "CellBroadcastServiceManager"

    const-string v0, "mICellBroadcastService has disconnected unexpectedly"

    .line 330
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-void
.end method
