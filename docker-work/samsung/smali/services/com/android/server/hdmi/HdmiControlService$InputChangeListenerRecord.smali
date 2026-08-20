.class public final Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputChangeListenerRecord"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 3

    .line 2958
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2959
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiInputChangeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 2964
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2965
    :try_start_7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmInputChangeListenerRecord(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    move-result-object v1

    if-ne v1, p0, :cond_15

    .line 2966
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmInputChangeListenerRecord(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)V

    .line 2968
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method
