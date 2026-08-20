.class public Lcom/android/server/sepunion/VDCObserverService$1;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "VDCObserverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/VDCObserverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$1;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .registers 8

    .line 153
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 154
    iput v1, v0, Landroid/os/Message;->what:I

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_13

    const-string/jumbo p1, "null"

    goto :goto_17

    .line 157
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_17
    const-string v2, "component_name"

    .line 159
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "pkg_name"

    .line 160
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "user_id"

    .line 161
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "is_foreground"

    .line 162
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 165
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$1;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p0}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$fgetmHandler(Lcom/android/server/sepunion/VDCObserverService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
