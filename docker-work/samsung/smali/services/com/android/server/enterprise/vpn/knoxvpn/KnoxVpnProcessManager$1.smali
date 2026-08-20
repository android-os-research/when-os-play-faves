.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxVpnProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4

    .line 43
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->-$$Nest$monApplicationStart(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->-$$Nest$monApplicationStop(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V

    return-void
.end method
