.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;
.super Ljava/lang/Object;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnServiceConnection"
.end annotation


# instance fields
.field public adminUid:I

.field public containerId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;II)V
    .registers 4

    .line 820
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;->containerId:I

    .line 822
    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnServiceConnection;->adminUid:I

    return-void
.end method


# virtual methods
.method public declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    monitor-enter p0

    .line 873
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    monitor-enter p0

    .line 828
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    monitor-enter p0

    .line 852
    monitor-exit p0

    return-void
.end method
