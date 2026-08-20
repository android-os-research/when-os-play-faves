.class Lcom/samsung/android/nfc/mpos/MPOSAdapter$1;
.super Ljava/lang/Object;
.source "MPOSAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/nfc/mpos/MPOSAdapter;->getServiceInterface()Lcom/samsung/android/nfc/mpos/IMPOSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 185
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.nfc.action.START_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.nfc.extra.TYPE"

    const-string v2, "mpos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/samsung/android/nfc/mpos/MPOSAdapter;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1c

    .line 189
    :catch_1b
    move-exception v0

    :goto_1c
    nop

    .line 190
    return-void
.end method
