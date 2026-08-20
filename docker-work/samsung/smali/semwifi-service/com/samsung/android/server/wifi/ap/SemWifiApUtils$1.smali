.class Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$1;
.super Ljava/lang/Object;
.source "SemWifiApUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$toastMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 295
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$1;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$1;->val$toastMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$1;->val$appContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils$1;->val$toastMessage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
