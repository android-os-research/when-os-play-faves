.class public Lcom/android/server/sepunion/cover/CoverServiceManager$2;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;I)V
    .registers 3

    .line 205
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iput p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13

    .line 208
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$fgetmLock(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 211
    :try_start_28
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindActiveServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 213
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    .line 214
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mremoveCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 216
    :cond_38
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$sfgetSYSTEM_UI_COVER()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    goto :goto_5c

    .line 221
    :cond_4c
    new-instance v1, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget v6, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v3, v1

    move-object v5, p1

    move-object v7, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    goto :goto_73

    .line 218
    :cond_5c
    :goto_5c
    new-instance v8, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    new-instance v7, Landroid/os/UserHandle;

    .line 219
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, v8

    move-object v3, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    move-object v1, v8

    .line 224
    :goto_73
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bound:cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",type="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mupdateBindHistoryLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$fgetmActiveServices(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$maddBindingServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)V

    .line 229
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$fputmIsUserSwitching(Lcom/android/server/sepunion/cover/CoverServiceManager;Z)V

    .line 230
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_28 .. :try_end_ac} :catchall_bd

    .line 231
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->systemReady()V

    .line 232
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$fgetmCoverStateProvider(Lcom/android/server/sepunion/cover/CoverServiceManager;)Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void

    :catchall_bd
    move-exception p0

    .line 230
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7

    .line 237
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$fgetmLock(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_20
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindActiveServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_c4

    .line 242
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    .line 243
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mremoveCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 244
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbound:cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",type="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mupdateBindHistoryLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)V

    .line 245
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result p1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_60

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result p1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_6e

    :cond_60
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$sfgetLED_COVER()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    .line 247
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    :cond_6e
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    .line 248
    invoke-static {p1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result p1

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v2

    if-ne p1, v2, :cond_c4

    .line 250
    :cond_7e
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnect()Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 251
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceDisconnected : retry to connect cover service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mreconnectCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    goto :goto_c4

    .line 256
    :cond_a7
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : give up to connect cover service, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_c4
    :goto_c4
    monitor-exit v0

    return-void

    :catchall_c6
    move-exception p0

    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_20 .. :try_end_c8} :catchall_c6

    throw p0
.end method
