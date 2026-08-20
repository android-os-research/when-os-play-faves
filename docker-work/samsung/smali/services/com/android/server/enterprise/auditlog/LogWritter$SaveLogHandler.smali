.class public Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;
.super Landroid/os/Handler;
.source "LogWritter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/LogWritter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveLogHandler"
.end annotation


# instance fields
.field public data:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/enterprise/auditlog/LogWritter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 158
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->data:Landroid/os/Bundle;

    const-string/jumbo v0, "swap"

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 161
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->-$$Nest$fgetmCircularBuffer(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->write(Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-static {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->-$$Nest$fgetmObserver(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/IObserver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyReadyToDump(Z)V

    goto :goto_48

    .line 164
    :cond_24
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->data:Landroid/os/Bundle;

    const-string/jumbo v0, "log"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 165
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->-$$Nest$fgetmCircularBuffer(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->data:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->write(Ljava/lang/String;)V

    goto :goto_48

    .line 168
    :cond_3f
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-static {p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->-$$Nest$fgetmCircularBuffer(Lcom/android/server/enterprise/auditlog/LogWritter;)Lcom/android/server/enterprise/auditlog/CircularBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    :goto_48
    return-void
.end method
