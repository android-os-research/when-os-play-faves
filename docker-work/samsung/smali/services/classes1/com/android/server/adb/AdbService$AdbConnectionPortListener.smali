.class public Lcom/android/server/adb/AdbService$AdbConnectionPortListener;
.super Ljava/lang/Object;
.source "AdbService.java"

# interfaces
.implements Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdbConnectionPortListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 2

    .line 450
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPortReceived(I)V
    .registers 4

    if-lez p1, :cond_f

    const v0, 0xffff

    if-gt p1, v0, :cond_f

    .line 453
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object v0, v0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_2b

    .line 455
    :cond_f
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object p1, p1, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 458
    :try_start_17
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p1}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_wifi_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_23} :catch_24

    goto :goto_2b

    :catch_24
    const-string p1, "AdbService"

    const-string v0, "ADB_ENABLED is restricted."

    .line 463
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_2b
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object p1, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/adb/AdbService;->-$$Nest$mbroadcastPortInfo(Lcom/android/server/adb/AdbService;I)V

    return-void
.end method
