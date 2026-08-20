.class Lcom/samsung/android/server/wifi/SemIWCMonitor$1;
.super Landroid/app/IProcessObserver$Stub;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7

    .line 273
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentUid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result p1

    if-eq p2, p1, :cond_b

    if-nez p3, :cond_b

    return-void

    .line 277
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/app/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_18

    return-void

    .line 283
    :cond_18
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v0, :cond_31

    goto :goto_22

    :cond_31
    if-nez p3, :cond_9e

    .line 288
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_9e

    .line 290
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentUid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v1

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v2, :cond_44

    goto :goto_22

    :cond_44
    const/4 p3, 0x1

    .line 294
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurrentUid(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "SemIWCMonitor"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentUid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") has came on foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    const-string v0, "com.sec.android.app.servicemodeapp"

    .line 298
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "SemIWCMonitor"

    const-string v1, "updateIWCSystemProp"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateIWCSystemProp()V

    goto :goto_22

    .line 302
    :cond_9e
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_aa

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_22

    .line 306
    :cond_aa
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 309
    :cond_b1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentServicePackageNameList(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b8} :catch_c2

    .line 310
    :try_start_b8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurrentServicePackageNameList(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/util/ArrayList;)V

    .line 311
    monitor-exit p1

    goto :goto_c6

    :catchall_bf
    move-exception p0

    monitor-exit p1
    :try_end_c1
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_bf

    :try_start_c1
    throw p0
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c2} :catch_c2

    :catch_c2
    move-exception p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c6
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
