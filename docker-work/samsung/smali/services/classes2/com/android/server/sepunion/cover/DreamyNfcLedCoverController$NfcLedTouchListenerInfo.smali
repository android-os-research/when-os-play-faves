.class public Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "DreamyNfcLedCoverController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcLedTouchListenerInfo"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

.field public final token:Landroid/os/IBinder;

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7

    .line 620
    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 622
    iput-object p3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 623
    iput p4, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 624
    iput p5, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 625
    iput p6, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 630
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 632
    :try_start_21
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 633
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 634
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_32
    move-exception p0

    .line 633
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public onCoverTapLeft()V
    .registers 3

    .line 686
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 687
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null listener received onCoverTapLeft!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 692
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 694
    invoke-interface {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapLeft()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 697
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed onCoverTapLeft callback"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public onCoverTapMid()V
    .registers 3

    .line 702
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 703
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null listener received onCoverTapMid!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 708
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 710
    invoke-interface {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapMid()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 713
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed onCoverTapMid callback"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public onCoverTapRight()V
    .registers 3

    .line 718
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 719
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null listener received onCoverTapRight!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 724
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 726
    invoke-interface {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTapRight()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 729
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed onCoverTapRight callback"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public onCoverTouchAccept()V
    .registers 3

    .line 638
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 639
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null listener received TouchAccept!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 644
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 646
    invoke-interface {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 649
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed onCoverTouchAccept callback"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public onCoverTouchReject()V
    .registers 3

    .line 654
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 655
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null listener received TouchReject!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 660
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 662
    invoke-interface {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 665
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed onCoverTouchReject callback"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .registers 3

    .line 670
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_e

    .line 671
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null listener received onSystemCoverEvent!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 676
    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 678
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p0

    .line 681
    invoke-static {}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed onSystemCoverEvent callback"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method
