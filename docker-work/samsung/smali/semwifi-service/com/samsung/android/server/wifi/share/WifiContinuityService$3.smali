.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$3;
.super Landroid/database/ContentObserver;
.source "WifiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Landroid/os/Handler;)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$3;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$3;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 196
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z

    move-result p1

    const/16 v0, 0x23

    .line 195
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(II)V

    return-void
.end method
