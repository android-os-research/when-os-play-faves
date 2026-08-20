.class Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$2;
.super Ljava/lang/Object;
.source "SemWifiApUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->sendBroadcastForMDE(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MDE_SUGGESTION_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getOneUiVersion()I

    move-result v1

    const v2, 0x224d4

    if-lt v1, v2, :cond_16

    const-string v1, "com.samsung.android.smartsuggestions"

    .line 328
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    :cond_16
    const-string v1, "com.android.settings.intelligence"

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    :goto_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
