.class Lorg/simalliance/openmobileapi/SEService$2;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/simalliance/openmobileapi/SEService;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/simalliance/openmobileapi/SEService;

    .line 122
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-static {p2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    move-result-object v1

    # setter for: Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v0, v1}, Lorg/simalliance/openmobileapi/SEService;->access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 128
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    # getter for: Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 129
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    # getter for: Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;

    move-result-object v0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-interface {v0, v1}, Lorg/simalliance/openmobileapi/SEService$CallBack;->serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V

    .line 131
    .end local p0    # "this":Lorg/simalliance/openmobileapi/SEService$2;
    :cond_1d
    const-string v0, "OMA_Lib_SEService"

    const-string v1, "Service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 132
    monitor-exit p0

    return-void

    .line 126
    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 135
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    const/4 v1, 0x0

    # setter for: Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v0, v1}, Lorg/simalliance/openmobileapi/SEService;->access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 136
    const-string v0, "OMA_Lib_SEService"

    const-string v1, "Service onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method
