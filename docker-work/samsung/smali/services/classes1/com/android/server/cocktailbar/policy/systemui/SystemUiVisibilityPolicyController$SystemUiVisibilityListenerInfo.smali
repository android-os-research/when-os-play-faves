.class public Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;
.super Ljava/lang/Object;
.source "SystemUiVisibilityPolicyController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemUiVisibilityListenerInfo"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 6

    .line 281
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    .line 283
    iput-object p3, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->component:Landroid/content/ComponentName;

    .line 284
    iput p4, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->pid:I

    .line 285
    iput p5, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 290
    invoke-static {}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$fgetmStateListeners(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 292
    :try_start_21
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$mnotifyStateToBinder(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/IBinder;)V

    .line 293
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    invoke-static {v1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$fgetmStateListeners(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 294
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_39

    .line 295
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_39
    move-exception p0

    .line 294
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SystemUiVisibilityListener: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onSystemUiVisibilityChanged(I)V
    .registers 3

    .line 299
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityListenerInfo;->token:Landroid/os/IBinder;

    if-nez p0, :cond_f

    .line 300
    invoke-static {}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onSystemUiVisibilityChanged : token is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 307
    invoke-interface {p0, p1}, Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback;->onSystemUiVisibilityChanged(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception p0

    .line 310
    invoke-static {}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onSystemUiVisibilityChanged : RemoteException : "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    :goto_24
    return-void
.end method
