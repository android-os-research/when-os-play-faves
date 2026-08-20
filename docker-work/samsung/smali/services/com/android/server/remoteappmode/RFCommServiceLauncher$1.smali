.class public Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;
.super Ljava/lang/Object;
.source "RFCommServiceLauncher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/RFCommServiceLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;


# direct methods
.method public static synthetic $r8$lambda$wwhl5EG2EUEIFN6ZrFtxRIMVV2E(Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->lambda$onServiceDisconnected$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$0()V
    .registers 3

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdx.instanthotspot.action.RFCOMM_SERVICE_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    invoke-static {p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->-$$Nest$fgetmContext(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->-$$Nest$msendBroadcast(Lcom/android/server/remoteappmode/RFCommServiceLauncher;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    const-string p1, "RFCommServiceLauncher"

    const-string p2, "HotspotRFCommService is connected"

    .line 65
    invoke-static {p1, p2}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->-$$Nest$fputmBounded(Lcom/android/server/remoteappmode/RFCommServiceLauncher;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string p1, "RFCommServiceLauncher"

    const-string v0, "HotspotRFCommService is disconnected"

    .line 72
    invoke-static {p1, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->-$$Nest$fputmBounded(Lcom/android/server/remoteappmode/RFCommServiceLauncher;Z)V

    .line 76
    iget-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    invoke-static {p1}, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->-$$Nest$fgetmHandler(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
