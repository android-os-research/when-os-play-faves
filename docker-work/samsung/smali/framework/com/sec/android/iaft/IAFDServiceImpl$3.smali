.class Lcom/sec/android/iaft/IAFDServiceImpl$3;
.super Ljava/lang/Object;
.source "IAFDServiceImpl.java"

# interfaces
.implements Lcom/samsung/android/sm/iafdlib/CheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iaft/IAFDServiceImpl;->checkUpdate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

.field final synthetic blacklist val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sec/android/iaft/IAFDServiceImpl;

    .line 242
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    iput-object p2, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "resultCode"    # I
    .param p2, "versionCode"    # J
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "pkgName"    # Ljava/lang/String;

    .line 251
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 252
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->val$bundle:Landroid/os/Bundle;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const-string v3, "hasUpdate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 254
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 255
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$3;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmHandler(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method
