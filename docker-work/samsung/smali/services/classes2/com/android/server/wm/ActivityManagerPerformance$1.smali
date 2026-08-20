.class public Lcom/android/server/wm/ActivityManagerPerformance$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityManagerPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .registers 2

    .line 1332
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 1336
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ActivityManagerPerformance"

    if-eqz p2, :cond_1e

    .line 1337
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_17

    const-string p1, "Screen state changed. mIsScreenOn: false"

    .line 1338
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$fputmIsScreenOn(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    goto :goto_3a

    :cond_1e
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 1340
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1341
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_2f

    const-string p1, "Screen state changed. mIsScreenOn: true"

    .line 1342
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_2f
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$fputmIsScreenOn(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    .line 1344
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$1;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$fputneedSkipResume(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    :cond_3a
    :goto_3a
    return-void
.end method
