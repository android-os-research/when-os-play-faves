.class public Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LcdOffDisableListenerInfo"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 6

    .line 542
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    .line 544
    iput-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    .line 545
    iput p4, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    .line 546
    iput p5, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 551
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$fgetmLcdOffDisableListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 553
    :try_start_21
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$fgetmLcdOffDisableListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$menableLcdOffByCoverIfPossibleLocked(Lcom/android/server/sepunion/cover/StateNotifier;)V

    .line 556
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_37

    .line 557
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_37
    move-exception p0

    .line 556
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method
