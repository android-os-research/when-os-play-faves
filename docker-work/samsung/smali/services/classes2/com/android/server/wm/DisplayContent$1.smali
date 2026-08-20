.class public Lcom/android/server/wm/DisplayContent$1;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayContent;->sendApplicationFocusMonitoringIntent(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic val$focusMonitorIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/content/Intent;)V
    .registers 3

    .line 1437
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$1;->this$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$1;->val$focusMonitorIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$1;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$1;->val$focusMonitorIntent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
