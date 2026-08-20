.class final Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;
.super Ljava/lang/Object;
.source "AccessNetworksManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QualifiedNetworksServiceConnection"
.end annotation


# instance fields
.field private final blacklist mThrottleStatusCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$XGTDoJSvGLhuPnywBairr_7Be0E(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->lambda$unregisterForThrottleCallbacks$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$e80T_sxlA1er0SNZzkLMKPYoH1Y(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->lambda$registerDataThrottler$1(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$llM8A0xDx6E-hF4zP_SY9MdtQdA(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->lambda$registerDataThrottlersFirstTime$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterDataThrottler(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->registerDataThrottler(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 4

    .line 273
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->mThrottleStatusCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;

    return-void
.end method

.method private synthetic blacklist lambda$registerDataThrottler$1(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->mThrottleStatusCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->registerForThrottleStatusChanges(Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerDataThrottlersFirstTime$0()V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDataThrottlers(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataThrottler;

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->mThrottleStatusCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->registerForThrottleStatusChanges(Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method private synthetic blacklist lambda$unregisterForThrottleCallbacks$2()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDataThrottlers(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataThrottler;

    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->mThrottleStatusCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->unregisterForThrottleStatusChanges(Lcom/android/internal/telephony/dataconnection/DataThrottler$Callback;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method private blacklist registerDataThrottler(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist registerDataThrottlersFirstTime()V
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist unregisterForThrottleCallbacks()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 280
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p2}, Landroid/telephony/data/IQualifiedNetworksService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;Landroid/telephony/data/IQualifiedNetworksService;)V

    .line 281
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient-IA;)V

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;)V

    .line 282
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mgetQualifiedNetworksServicePackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmLastBoundPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    .line 285
    :try_start_1d
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 286
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;

    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback-IA;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/data/IQualifiedNetworksService;->createNetworkAvailabilityProvider(ILandroid/telephony/data/IQualifiedNetworksServiceCallback;)V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->registerDataThrottlersFirstTime()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_44} :catch_45

    goto :goto_5c

    :catch_45
    move-exception p1

    .line 292
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote exception. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 299
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->unregisterForThrottleCallbacks()V

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V

    return-void
.end method
