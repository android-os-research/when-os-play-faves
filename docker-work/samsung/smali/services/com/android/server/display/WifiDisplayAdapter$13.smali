.class public Lcom/android/server/display/WifiDisplayAdapter$13;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->setAllowWifiScan(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$allow:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .registers 3

    .line 689
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$allow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_16

    .line 694
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$allow:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/wifi/SemWifiManager;->setAllowWifiScan(Z)V

    :cond_16
    return-void
.end method
