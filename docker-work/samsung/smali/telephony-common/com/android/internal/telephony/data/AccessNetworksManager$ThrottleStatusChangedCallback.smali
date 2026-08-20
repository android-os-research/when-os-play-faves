.class Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;
.super Ljava/lang/Object;
.source "AccessNetworksManager.java"

# interfaces
.implements Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThrottleStatusChangedCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$bGsW1CN7TUtri-12R1njHwDcjg4(Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->lambda$onThrottleStatusChanged$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h8W8KSTjwkwFDkgrGqWpA-eMURA(Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;Landroid/telephony/data/ThrottleStatus;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->lambda$onThrottleStatusChanged$0(Landroid/telephony/data/ThrottleStatus;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    return-void
.end method

.method private synthetic blacklist lambda$onThrottleStatusChanged$0(Landroid/telephony/data/ThrottleStatus;)Z
    .registers 2

    .line 337
    invoke-virtual {p1}, Landroid/telephony/data/ThrottleStatus;->getSlotIndex()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private synthetic blacklist lambda$onThrottleStatusChanged$1(Ljava/util/List;)V
    .registers 4

    .line 336
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;)V

    .line 337
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 338
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/telephony/data/IQualifiedNetworksService;->reportThrottleStatusChanged(ILjava/util/List;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_3b

    :catch_33
    move-exception p1

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const-string v0, "onThrottleStatusChanged"

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public blacklist onThrottleStatusChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
