.class Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
.source "WifiContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fputisBound(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Z)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetbindResultCallback(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetbindResultCallback(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;->onSuccess()V

    :cond_17
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fputisBound(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;Z)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetadapter(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;->-$$Nest$fgetcontext(Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->release(Landroid/content/Context;)V

    :cond_1d
    const-string p0, "SemWifi.Continuity"

    const-string v0, "onServiceDisconnected"

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
