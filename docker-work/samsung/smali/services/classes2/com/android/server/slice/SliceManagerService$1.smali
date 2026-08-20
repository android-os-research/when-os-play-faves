.class public Lcom/android/server/slice/SliceManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 601
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "SliceManagerService"

    if-ne p1, v0, :cond_21

    .line 603
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent broadcast does not contain user handle: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 606
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 607
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    if-nez v0, :cond_44

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent broadcast does not contain package name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 612
    :cond_44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_78

    :cond_5c
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.REPLACING"

    .line 615
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_78

    .line 617
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {p0}, Lcom/android/server/slice/SliceManagerService;->-$$Nest$fgetmPermissions(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    goto :goto_78

    .line 621
    :cond_6f
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$1;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {p0}, Lcom/android/server/slice/SliceManagerService;->-$$Nest$fgetmPermissions(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/slice/SlicePermissionManager;->removePkg(Ljava/lang/String;I)V

    :cond_78
    :goto_78
    return-void
.end method
