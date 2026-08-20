.class public Lcom/android/server/connectivity/EnterpriseVpn$Connection;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connection"
.end annotation


# instance fields
.field public mService:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;Lcom/android/server/connectivity/EnterpriseVpn$Connection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn$Connection;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 537
    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    .line 542
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method
