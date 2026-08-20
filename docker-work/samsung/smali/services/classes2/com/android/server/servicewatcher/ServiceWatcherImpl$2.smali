.class public Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;
.super Landroid/os/Handler;
.source "ServiceWatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 95
    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {v0}, Landroid/location/LocationConstants$STATE_TYPE;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3f

    .line 96
    sget-boolean p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    const-string v0, "location proxy service reconnection timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmConnectionRecord(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/nsflp/NSConnectionRecord;

    move-result-object v0

    const-string/jumbo v1, "record"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmInjector(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/injector/Injector;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 101
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$fgetmInjector(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)Lcom/android/server/location/injector/Injector;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getNSConnectionHelper()Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->PROXY_SERVICE_RECONNECTION_TIMEOUT:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    :cond_3f
    return-void
.end method
