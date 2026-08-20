.class public Lcom/android/server/display/WifiDisplayAdapter$12;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->sendBroadcastScreenRatio(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$mode:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .registers 3

    .line 677
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->val$mode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->val$mode:Z

    const-string/jumbo v2, "screenratiovalue"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 683
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->val$mode:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wlan.wfd.screenratiovalue"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
