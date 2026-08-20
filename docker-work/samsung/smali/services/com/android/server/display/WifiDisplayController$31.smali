.class public Lcom/android/server/display/WifiDisplayController$31;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .line 2168
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    const-string v0, "android.samsung.media.extra.AUDIO_MODE"

    .line 2172
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2173
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRemoteDisplayConnected(Lcom/android/server/display/WifiDisplayController;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 2174
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmAdvertisedDisplay(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendVoipModeMessageIfNecessary(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V

    :cond_24
    return-void
.end method
