.class Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;
.super Ljava/lang/Object;
.source "SemCapabilityManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemCapabilityManagerRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;-><init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 331
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v2}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmServiceDeath(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 332
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V

    .line 334
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmConnection(Lcom/samsung/android/ims/options/SemCapabilityManager;Landroid/content/ServiceConnection;)V
    :try_end_27
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_27} :catch_28

    .line 337
    goto :goto_29

    .line 335
    :catch_28
    move-exception v0

    .line 338
    :goto_29
    return-void
.end method
