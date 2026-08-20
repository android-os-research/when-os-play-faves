.class public Lcom/android/server/display/WifiDisplayAdapter$9;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

.field public final synthetic val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .registers 4

    .line 552
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 556
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$wifidisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->val$callback:Landroid/hardware/display/IWifiDisplayConnectionCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V

    :cond_15
    return-void
.end method
