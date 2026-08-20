.class abstract Lcom/android/server/connectivity/Vpn$VpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "VpnRunner"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .registers 3

    .line 3040
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3041
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final exit()V
    .registers 2

    .line 3060
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 3061
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exitVpnRunner()V

    .line 3062
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/Vpn;)V

    .line 3063
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public abstract exitVpnRunner()V
.end method

.method public abstract run()V
.end method
