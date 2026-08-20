.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;
.super Ljava/lang/Object;
.source "WifiContinuityService.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/continuity/WifiContinuityAdapter$ContinuityServiceBindResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;->bindToContinuityService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 2

    const-string p0, "SemWifi.Continuity"

    const-string v0, "failed to bind continuity service"

    .line 326
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->sendMessage(I)V

    return-void
.end method
