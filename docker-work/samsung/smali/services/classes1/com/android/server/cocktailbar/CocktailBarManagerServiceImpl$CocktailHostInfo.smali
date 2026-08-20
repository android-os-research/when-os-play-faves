.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CocktailHostInfo"
.end annotation


# instance fields
.field public final callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

.field public category:I

.field public mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V
    .registers 5

    .line 2911
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2912
    iput-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    .line 2913
    invoke-interface {p3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    .line 2914
    iput p4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    .line 2915
    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    .line 2916
    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmCommandLogger(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostStart(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2918
    :try_start_19
    invoke-interface {p3, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_26

    .line 2920
    :catch_1d
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CocktailHostInfo : linkToDeath error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 2926
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "panel_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 2928
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->stopPinMode()V

    .line 2930
    :cond_32
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "edge_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_58

    .line 2932
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmEdgeStartHandler(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2933
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmEdgeStartHandler(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2936
    :cond_58
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmHost(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2937
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmCommandLogger(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostEnd(Ljava/lang/String;)V

    .line 2938
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmHost(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 2939
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmHost(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2941
    :cond_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_93

    .line 2943
    :try_start_88
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_8d
    .catch Ljava/util/NoSuchElementException; {:try_start_88 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception p0

    .line 2945
    invoke-virtual {p0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    :goto_92
    return-void

    :catchall_93
    move-exception p0

    .line 2941
    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z
    .registers 2

    .line 2950
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final stopPinMode()V
    .registers 4

    .line 2963
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.appsedge"

    const-string v2, "com.samsung.android.app.appsedge.pin.AppsEdgePinService"

    .line 2964
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2965
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public unlinkBinder()V
    .registers 3

    .line 2955
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmCommandLogger(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostEnd(Ljava/lang/String;)V

    .line 2956
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    .line 2958
    invoke-virtual {p0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    :goto_16
    return-void
.end method
