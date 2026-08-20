.class public Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

.field public final token:Landroid/os/IBinder;

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7

    .line 1566
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    iput-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 1568
    iput-object p3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 1569
    iput p4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 1570
    iput p5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 1571
    iput p6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1576
    invoke-static {}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1578
    :try_start_21
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1579
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 1580
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_32
    move-exception p0

    .line 1579
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public onCoverTouchAccept()V
    .registers 3

    .line 1584
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 1585
    invoke-static {}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null listener received TouchAccept!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1590
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1592
    invoke-interface {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 1595
    invoke-static {}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed onCoverTouchAccept callback"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public onCoverTouchReject()V
    .registers 3

    .line 1600
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 1601
    invoke-static {}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null listener received TouchReject!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1606
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1608
    invoke-interface {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 1611
    invoke-static {}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed onCoverTouchReject callback"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .registers 3

    .line 1616
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 1617
    invoke-static {}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null listener received TouchReject!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1622
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1624
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 1627
    invoke-static {}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed onSystemCoverEvent callback"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method
