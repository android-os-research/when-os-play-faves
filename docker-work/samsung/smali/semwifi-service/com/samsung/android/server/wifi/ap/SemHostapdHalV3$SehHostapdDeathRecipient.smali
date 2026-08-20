.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;
.super Ljava/lang/Object;
.source "SemHostapdHalV3.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SehHostapdDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;


# direct methods
.method public static synthetic $r8$lambda$KWWjgGWYNlrCpL3pXKEZvta7y2c(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;->lambda$serviceDied$0(J)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)V

    return-void
.end method

.method private synthetic lambda$serviceDied$0(J)V
    .registers 7

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 122
    :try_start_7
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehHostapd died: cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fputisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Z)V

    .line 124
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p0
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->-$$Nest$fputmISehHostapd(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;)V

    return-void
.end method
