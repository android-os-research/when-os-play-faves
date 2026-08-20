.class public Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "SystemUIAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemUIAdapterCallbackDeathRecipient"
.end annotation


# instance fields
.field public final key:I

.field public final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-$$Nest$fgetmCallbacks(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 65
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-$$Nest$fgetmCallbacks(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-$$Nest$fgetmCallbacks(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_53
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-$$Nest$fgetmCallbacks(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_65

    .line 69
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-$$Nest$fputisCallbackDied(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Z)V

    :cond_65
    return-void
.end method
