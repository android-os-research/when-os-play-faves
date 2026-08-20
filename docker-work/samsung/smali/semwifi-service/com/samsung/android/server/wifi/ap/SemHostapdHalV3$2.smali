.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;
.super Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;
.source "SemHostapdHalV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IServiceNotification.onRegistration for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " preexisting="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "isSamsungV3_0:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isSamsungV3_0()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fputisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Z)V

    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$minitSehHostapdService(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 106
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "initalizing ISehHostapd failed."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fputmISehHostapd(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;)V

    goto :goto_64

    .line 109
    :cond_5b
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Completed initialization of ISehHostapd."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_64
    monitor-exit v0

    return-void

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_66

    throw p0
.end method
