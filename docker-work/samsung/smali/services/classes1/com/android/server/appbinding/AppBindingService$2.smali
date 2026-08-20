.class public Lcom/android/server/appbinding/AppBindingService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Lcom/android/server/appbinding/AppBindingService;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 231
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "AppBindingService"

    if-ne p1, v0, :cond_21

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent broadcast does not contain user handle: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_REMOVED"

    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 240
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monUserRemoved(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void

    .line 244
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 245
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    if-nez v2, :cond_56

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent broadcast does not contain package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    const/4 v1, 0x0

    const-string v3, "android.intent.extra.REPLACING"

    .line 252
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_7e

    :cond_71
    if-eqz p2, :cond_7e

    .line 257
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    goto :goto_7e

    .line 261
    :cond_79
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, v2, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$mhandlePackageAddedReplacing(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    :cond_7e
    :goto_7e
    return-void
.end method
