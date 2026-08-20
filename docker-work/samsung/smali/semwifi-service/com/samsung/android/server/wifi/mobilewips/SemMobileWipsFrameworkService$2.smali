.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;
.super Landroid/content/BroadcastReceiver;
.source "SemMobileWipsFrameworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_43

    .line 173
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.wifi.mobilewips"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent.ACTION_PACKAGE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemMobileWipsFrameworkService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_43

    .line 181
    :cond_38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$mturnOnWips(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$2;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->-$$Nest$fputmRetrycount(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;I)V

    :cond_43
    :goto_43
    return-void
.end method
