.class public Lcom/android/server/wm/MultiTaskingController$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;)V
    .registers 2

    .line 1252
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$2;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 1256
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 1257
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController$2;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1258
    invoke-static {}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "demo reset"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$2;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->resetPackageListStr(Landroid/content/Context;)V

    .line 1263
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCornerGestureEnabledWithSettings(Z)V

    goto :goto_54

    :cond_37
    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 1266
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1267
    invoke-static {}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "settings reset"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$2;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->resetPackageListStr(Landroid/content/Context;)V

    :cond_54
    :goto_54
    return-void
.end method
