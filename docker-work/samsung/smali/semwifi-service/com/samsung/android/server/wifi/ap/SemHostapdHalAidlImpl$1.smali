.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;
.super Landroid/os/Handler;
.source "SemHostapdHalAidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Landroid/os/Looper;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 189
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_1c

    .line 191
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->initialize()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 193
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    const-string p1, "SemHostapdHalAidlImpl  NO IHostapd for SemHostapdHalAidlImpl AIDL  :"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    const-string p0, "SemHostapdHalAidlImpl"

    const-string p1, " uable to initialized IHostapd , null "

    .line 194
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    return-void
.end method
