.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemUIAdapterCallbackDeathRecipient"
.end annotation


# instance fields
.field public key:I

.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V
    .registers 3

    .line 11542
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11543
    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 11547
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmSystemUiCallbacks(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 11550
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmSystemUiCallbacks(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 11551
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmSystemUiCallbacks(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11552
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmSystemUiCallbacks(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11554
    :cond_44
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmSystemUiCallbacks(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_56

    .line 11555
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fputmIsCallbackDied(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)V

    :cond_56
    return-void
.end method
