.class public final Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ClirConstants;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallForwardingConstants;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringConstants;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;,
        Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    }
.end annotation


# static fields
.field private static final API_REV_2018102701:I = 0x7849cdad

.field private static final API_REV_2018102901:I = 0x7849ce75

.field private static final API_REV_2018110301:I = 0x7849eb5d

.field private static final API_REV_2018111401:I = 0x7849efa9

.field private static final API_REV_2020060901:I = 0x7867aee5

.field private static final API_REV_2021070801:I = 0x787717d1

.field public static final DEFAULT_SLOT_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemTelephoneSDK"

.field private static final VERSION:Ljava/lang/String; = "1.1.1"

.field private static final sHandlerThread:Landroid/os/HandlerThread;

.field private static final sMainHandler:Landroid/os/Handler;

.field private static volatile sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

.field private static final sWorkerHandler:Landroid/os/Handler;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$mhandleCallForwardingCallback(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ZLjava/util/List;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->handleCallForwardingCallback(ZLjava/util/List;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smpostOnMain(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sMainHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemTelephoneSDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sHandlerThread:Landroid/os/HandlerThread;

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sWorkerHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private createIcBarringResultListener(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            ">;)",
            "Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;"
        }
    .end annotation

    .line 701
    .local p1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    return-object v0
.end method

.method private static getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-static {}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->needToReconnect()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 109
    const-class v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    monitor-enter v0

    .line 110
    :try_start_9
    invoke-static {}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->needToReconnect()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 111
    const-string v1, "SemTelephoneSDK"

    const-string v2, "ServiceBindHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    .line 114
    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1f

    throw v1

    .line 116
    :cond_22
    :goto_22
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->waitToGetConnected()V

    .line 117
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->getServiceApi()Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 98
    const-string v0, "1.1.1"

    return-object v0
.end method

.method private handleCallForwardingCallback(ZLjava/util/List;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 15
    .param p1, "success"    # Z
    .param p3, "err"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 796
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallForwardingCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephoneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v0, 0x3

    .line 799
    .local v0, "expectedSizeOfList":I
    if-eqz p2, :cond_5f

    :try_start_2d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5f

    .line 800
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 801
    .local v6, "status":I
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 802
    .local v7, "timeSecond":I
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 803
    .local v8, "number":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;

    move-object v3, v2

    move-object v4, p4

    move v5, p1

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda86;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 804
    .end local v6    # "status":I
    .end local v7    # "timeSecond":I
    .end local v8    # "number":Ljava/lang/String;
    goto :goto_67

    .line 805
    :cond_5f
    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda87;

    invoke-direct {v2, p4, p1, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda87;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_67
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2d .. :try_end_67} :catch_68
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_67} :catch_68

    .line 811
    :goto_67
    goto :goto_76

    .line 807
    :catch_68
    move-exception v2

    .line 809
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "handleCallForwardingCallback"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda88;

    invoke-direct {v1, p4, p1, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda88;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 812
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_76
    return-void
.end method

.method static synthetic lambda$changeCallBarringPassword$44(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 643
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$changeIccFdnPassword$29(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$changeIccFdnPasswordBySupplyPuk2$31(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 446
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getActiveFgCall$61(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "state"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 884
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getActiveFgCall$62(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 887
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->IDLE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAllowedNetworkTypes$84(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "networkMode"    # I

    .line 1121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAllowedNetworkTypes$85(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1124
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAvailableNetworkList$97(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1316
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getCallForwardingOption$50(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V
    .registers 9
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 752
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getCallingLineIdentificationRestriction$116(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1592
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getCdmaRoamingPreference$95(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;Ljava/lang/Exception;)V
    .registers 6
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1281
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v0, v2, v3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getCsgList$101(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1384
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getEnhancedVoicePrivacy$57(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 837
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPersoSubState$33(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/String;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "persoSubStateAsString"    # Ljava/lang/String;

    .line 467
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPersoSubState$34(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 470
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2Blocked$8(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isIccPin2Blocked"    # Z

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2Blocked$9(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 210
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2RetryCount$5(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "pin2RetryCount"    # I

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPin2RetryCount$6(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 190
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPuk2RetryCount$11(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "pin2RetryCount"    # I

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIccPuk2RetryCount$12(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 230
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getIncomingCallBarringInfoList$46(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 663
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getPreferredNetworkInfoList$76(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getPreferredNetworkType$80(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1070
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$54(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "success"    # Z
    .param p2, "status"    # I
    .param p3, "timeSecond"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "err"    # Ljava/lang/String;

    .line 803
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$55(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V
    .registers 10
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "success"    # Z
    .param p2, "err"    # Ljava/lang/String;

    .line 805
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, v4

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleCallForwardingCallback$56(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;ZLjava/lang/String;)V
    .registers 10
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "success"    # Z
    .param p2, "err"    # Ljava/lang/String;

    .line 810
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, v4

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$invokeOemRilRequestRaw$89(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1192
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isCallBarringEnabled$40(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 566
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isCallWaitingEnabled$36(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 498
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isCspPlmnEnabled$64(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 904
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isCspPlmnEnabled$65(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 907
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isFdnAvailable$17(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 267
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isFdnAvailable$18(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isIccFdnEnabled$14(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 247
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isIccFdnEnabled$15(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 250
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isNetworkPolicyRestrictBackground$2(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isRestricted"    # Z

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isNetworkPolicyRestrictBackground$3(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isOcsglAvailable$67(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "isEnabled"    # Z

    .line 924
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isOcsglAvailable$68(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 927
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setAllowedNetworkTypes$87(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1154
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCallBarringEnabled$42(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 609
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCallForwardingOption$52(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V
    .registers 9
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 789
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCallWaitingEnabled$38(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 526
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCallingLineIdentificationRestriction$118(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1617
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCdmaRoamingPreference$109(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1506
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCdmaSubscription$93(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1251
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCsg$103(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1417
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setCsg$107(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1476
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabled$70(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 945
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabled$71(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 950
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setEnhancedVoicePrivacy$59(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 865
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccEpsLoci$22(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 329
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccFdnEnabled$20(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 300
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccFplmn$120(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1646
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccLoci$27(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 384
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccNetworkDepersonalization$114(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1562
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccPsLoci$24(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 349
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIccPsLoci$25(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 354
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setIncomingCallBarringInfoList$48(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 695
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setInternalPdnEnabled$111(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1526
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setInternalPdnEnabled$112(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1531
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setNetwork$91(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setNetwork$99(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1349
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setPreferredNetworkInfo$78(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setPreferredNetworkType$82(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1101
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setRadioPowerEnabled$73(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 970
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setRadioPowerEnabled$74(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 975
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setVoiceMailNumber$105(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1447
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method private static needToReconnect()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    .line 103
    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$misServiceDisconnected(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 102
    :goto_10
    return v0
.end method

.method private static post(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 121
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method private static postOnMain(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 125
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method private requireApiRevision(I)V
    .registers 5
    .param p1, "minRevision"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->getApiRevision()I

    move-result v0

    if-ge v0, p1, :cond_d

    goto :goto_e

    .line 134
    :cond_d
    return-void

    .line 131
    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires API revision "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    if-nez v2, :cond_2c

    const-string v2, "unknown"

    goto :goto_36

    :cond_2c
    sget-object v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->sServiceBindHelper:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->getApiRevision()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 630
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda102;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda102;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method public changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 402
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda19;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public changeIccFdnPasswordBySupplyPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 433
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda77;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda77;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method public getActiveFgCall(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;",
            ">;)V"
        }
    .end annotation

    .line 880
    .local p1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda81;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda81;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 890
    return-void
.end method

.method public getAllowedNetworkTypes(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1116
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    const-string v0, "SemTelephoneSDK"

    const-string v1, "getAllowedNetworkTypes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1127
    return-void
.end method

.method public getAvailableNetworkList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/util/List<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1296
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/util/List<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;>;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1319
    return-void
.end method

.method public getCallForwardingOption(IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 740
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda62;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method public getCallingLineIdentificationRestriction(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1577
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda89;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1595
    return-void
.end method

.method public getCdmaRoamingPreference(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1266
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1284
    return-void
.end method

.method public getCsgList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/util/List<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1365
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/util/List<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;>;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda22;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1387
    return-void
.end method

.method public getEnhancedVoicePrivacy(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 823
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda75;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda75;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 840
    return-void
.end method

.method public getIccPersoSubState(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda69;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda69;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method public getIccPin2Blocked(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public getIccPin2RetryCount(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public getIccPuk2RetryCount(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda35;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public getIncomingCallBarringInfoList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 658
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 666
    return-void
.end method

.method public getPreferredNetworkInfoList(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/util/List<",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 991
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/util/List<Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;>;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda92;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda92;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method

.method public getPreferredNetworkType(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1057
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda120;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda120;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1073
    return-void
.end method

.method public invokeOemRilRequestRaw(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "rawRequest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[B>;)V"
        }
    .end annotation

    .line 1170
    .local p3, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[B>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1195
    return-void
.end method

.method public isCallBarringEnabled(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p4, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda58;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda58;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public isCallWaitingEnabled(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 484
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda79;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda79;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method public isCspPlmnEnabled(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 901
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda44;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 910
    return-void
.end method

.method public isFdnAvailable(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda63;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public isIccFdnEnabled(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda96;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda96;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method public isNetworkPolicyRestrictBackground(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda52;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public isOcsglAvailable(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 921
    .local p2, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda37;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 930
    return-void
.end method

.method synthetic lambda$changeCallBarringPassword$45$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$10;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$10;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 644
    goto :goto_1f

    .line 641
    :catch_f
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "changeCallBarringPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda116;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda116;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$changeIccFdnPassword$30$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$4;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$4;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 417
    goto :goto_21

    .line 412
    :catch_f
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "changeIccFdnPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    if-eqz p4, :cond_21

    .line 415
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda111;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda111;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$changeIccFdnPasswordBySupplyPuk2$32$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "puk2"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$5;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$5;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 448
    goto :goto_21

    .line 443
    :catch_f
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "changeIccFdnPasswordBySupplyPuk2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    if-eqz p4, :cond_21

    .line 446
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda47;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda47;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 449
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$getActiveFgCall$63$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getActiveFgCallState()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "stateStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    move-result-object v1

    .line 884
    .local v1, "state":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda50;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_17

    .line 888
    .end local v0    # "stateStr":Ljava/lang/String;
    .end local v1    # "state":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    goto :goto_27

    .line 885
    :catch_17
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getActiveFgCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda51;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 889
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method

.method synthetic lambda$getAllowedNetworkTypes$86$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1119
    const v0, 0x787717d1

    :try_start_3
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getAllowedNetworkTypes(I)I

    move-result v0

    .line 1121
    .local v0, "networkMode":I
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_18} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_18} :catch_19

    .line 1125
    .end local v0    # "networkMode":I
    goto :goto_29

    .line 1122
    :catch_19
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getAllowedNetworkTypes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1124
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method synthetic lambda$getAvailableNetworkList$98$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1298
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1317
    goto :goto_1f

    .line 1314
    :catch_f
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getAvailableNetworkList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda33;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1318
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$getCallForwardingOption$51$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$12;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$12;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_f

    .line 753
    goto :goto_1f

    .line 750
    :catch_f
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getCallForwardingOption"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda67;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda67;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 754
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$getCallingLineIdentificationRestriction$117$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1579
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$33;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$33;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1593
    goto :goto_1f

    .line 1590
    :catch_f
    move-exception v0

    .line 1591
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getCallingLineIdentificationRestriction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1592
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda27;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda27;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1594
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$getCdmaRoamingPreference$96$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$24;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$24;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCdmaRoamingPreference(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1282
    goto :goto_1f

    .line 1279
    :catch_f
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getCdmaRoamingPreference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda31;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda31;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnBiResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$getCsgList$102$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1385
    goto :goto_1f

    .line 1382
    :catch_f
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getAvailableNetworkList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda95;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda95;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1386
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$getEnhancedVoicePrivacy$58$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$14;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$14;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 838
    goto :goto_1f

    .line 835
    :catch_f
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getEnhancedVoicePrivacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda117;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda117;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 839
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$getIccPersoSubState$35$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPersoSubStateAsString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "persoSubStateAsString":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda24;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 471
    .end local v0    # "persoSubStateAsString":Ljava/lang/String;
    goto :goto_23

    .line 468
    :catch_13
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPersoSubState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda25;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$getIccPin2Blocked$10$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isIccPin2Blocked(I)Z

    move-result v0

    .line 207
    .local v0, "isIccPin2Blocked":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda83;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda83;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 211
    .end local v0    # "isIccPin2Blocked":Z
    goto :goto_23

    .line 208
    :catch_13
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPin2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda84;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda84;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$getIccPin2RetryCount$7$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPin2RetryCount(I)I

    move-result v0

    .line 187
    .local v0, "pin2RetryCount":I
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda72;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda72;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 191
    .end local v0    # "pin2RetryCount":I
    goto :goto_23

    .line 188
    :catch_13
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPin2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda73;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda73;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$getIccPuk2RetryCount$13$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getIccPuk2retryCount(I)I

    move-result v0

    .line 227
    .local v0, "pin2RetryCount":I
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda104;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda104;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;I)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 231
    .end local v0    # "pin2RetryCount":I
    goto :goto_23

    .line 228
    :catch_13
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIccPuk2RetryCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda105;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda105;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$getIncomingCallBarringInfoList$47$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->createIcBarringResultListener(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 664
    goto :goto_1e

    .line 661
    :catch_e
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getIncomingCallBarringInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method synthetic lambda$getPreferredNetworkInfoList$77$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$16;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$16;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1011
    goto :goto_1f

    .line 1008
    :catch_f
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getPreferredNetworkInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda59;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda59;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1012
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$getPreferredNetworkType$81$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1059
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$18;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$18;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1071
    goto :goto_1f

    .line 1068
    :catch_f
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "getPreferredNetworkType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda26;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1072
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$invokeOemRilRequestRaw$90$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "rawRequest"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1172
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1193
    goto :goto_1f

    .line 1190
    :catch_f
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "invokeOemRilRequestRaw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1192
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda78;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda78;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$isCallBarringEnabled$41$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$8;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$8;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 567
    goto :goto_1f

    .line 564
    :catch_f
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isCallBarringEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda80;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda80;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$isCallWaitingEnabled$37$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 499
    goto :goto_1f

    .line 496
    :catch_f
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isCallWaitingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda36;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda36;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$isCspPlmnEnabled$66$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isCspPlmnEnabled(I)Z

    move-result v0

    .line 904
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda39;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda39;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    .line 908
    .end local v0    # "isEnabled":Z
    goto :goto_23

    .line 905
    :catch_13
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isCspPlmnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda40;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda40;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 909
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$isFdnAvailable$19$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isFdnAvailable(I)Z

    move-result v0

    .line 267
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda56;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda56;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 271
    .end local v0    # "isEnabled":Z
    goto :goto_23

    .line 268
    :catch_13
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isFdnAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda57;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda57;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$isIccFdnEnabled$16$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isIccFdnEnabled(I)Z

    move-result v0

    .line 247
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda45;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda45;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 251
    .end local v0    # "isEnabled":Z
    goto :goto_23

    .line 248
    :catch_13
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isIccFdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda46;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda46;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$isNetworkPolicyRestrictBackground$4$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isNetworkPolicyRestrictBackground()Z

    move-result v0

    .line 167
    .local v0, "isRestricted":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda93;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda93;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 171
    .end local v0    # "isRestricted":Z
    goto :goto_23

    .line 168
    :catch_13
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isNetworkPolicyRestrictBackground"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda94;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda94;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$isOcsglAvailable$69$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->isOCSGLAvailable(I)Z

    move-result v0

    .line 924
    .local v0, "isEnabled":Z
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    .line 928
    .end local v0    # "isEnabled":Z
    goto :goto_23

    .line 925
    :catch_13
    move-exception v0

    .line 926
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "isOcsglAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 929
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method synthetic lambda$notifyVoicemailNumberChanged$1$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I)V
    .registers 6
    .param p1, "slotId"    # I

    .line 146
    const-string v0, "SemTelephoneSDK"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 147
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 149
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVoicemailNumberChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->notifyVoicemailNumberChanged(I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_3d} :catch_3e

    .line 153
    .end local v1    # "subId":I
    goto :goto_44

    .line 151
    :catch_3e
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "notifyVoicemailNumberChanged"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method synthetic lambda$preBind$0$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK()V
    .registers 4

    .line 85
    const-string v0, "SemTelephoneSDK"

    :try_start_2
    const-string v1, "preBind() try to bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    .line 89
    goto :goto_13

    .line 87
    :catch_d
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "preBind()"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_13
    return-void
.end method

.method synthetic lambda$setAllowedNetworkTypes$88$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1142
    const v0, 0x787717d1

    :try_start_3
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$20;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$20;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setAllowedNetworkTypes(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_14} :catch_15

    .line 1156
    goto :goto_27

    .line 1151
    :catch_15
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setAllowedNetworkTypes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    if-eqz p3, :cond_27

    .line 1154
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    return-void
.end method

.method synthetic lambda$setCallBarringEnabled$43$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 15
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    new-instance v7, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;

    invoke-direct {v7, p0, p6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14

    .line 610
    goto :goto_24

    .line 607
    :catch_14
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCallBarringEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda54;

    invoke-direct {v1, p6, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda54;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 611
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method synthetic lambda$setCallForwardingOption$53$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 19
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    move-object v1, p0

    move-object/from16 v2, p7

    .line 779
    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v3

    new-instance v10, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;

    invoke-direct {v10, p0, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v10}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_19} :catch_1a

    .line 790
    goto :goto_2a

    .line 787
    :catch_1a
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SemTelephoneSDK"

    const-string v4, "setCallForwardingOption"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    new-instance v3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda53;

    invoke-direct {v3, v2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda53;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;Ljava/lang/Exception;)V

    invoke-static {v3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 791
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method synthetic lambda$setCallWaitingEnabled$39$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$7;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$7;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 528
    goto :goto_21

    .line 523
    :catch_f
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCallWaitingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    if-eqz p3, :cond_21

    .line 526
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda82;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda82;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setCallingLineIdentificationRestriction$119$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1609
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$34;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$34;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1618
    goto :goto_1f

    .line 1615
    :catch_f
    move-exception v0

    .line 1616
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCallingLineIdentificationRestriction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1617
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda107;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda107;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1619
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method synthetic lambda$setCdmaRoamingPreference$110$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "roamingType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1495
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCdmaRoamingPreference(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1508
    goto :goto_21

    .line 1503
    :catch_f
    move-exception v0

    .line 1504
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "invokeUssdCommand"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1505
    if-eqz p3, :cond_21

    .line 1506
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda42;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda42;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setCdmaSubscription$94$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "cdmaSubscriptionType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$23;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$23;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1253
    goto :goto_21

    .line 1248
    :catch_f
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCdmaSubscription"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    if-eqz p3, :cond_21

    .line 1251
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda43;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda43;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setCsg$104$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->-$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$28;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$28;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 1419
    goto :goto_25

    .line 1414
    :catch_13
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCsg2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1416
    if-eqz p4, :cond_25

    .line 1417
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda48;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda48;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1420
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-void
.end method

.method synthetic lambda$setCsg$108$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$30;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$30;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1478
    goto :goto_21

    .line 1473
    :catch_f
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setCsg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1475
    if-eqz p2, :cond_21

    .line 1476
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda16;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1479
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setDataRoamingEnabled$72$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setDataRoamingEnabled(IZ)V

    .line 944
    if-eqz p3, :cond_13

    .line 945
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda100;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda100;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_14

    .line 952
    :cond_13
    goto :goto_26

    .line 947
    :catch_14
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setDataRoamingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    if-eqz p3, :cond_26

    .line 950
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda101;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda101;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    return-void
.end method

.method synthetic lambda$setEnhancedVoicePrivacy$60$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$15;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$15;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 867
    goto :goto_21

    .line 862
    :catch_f
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setEnhancedVoicePrivacy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    if-eqz p3, :cond_21

    .line 865
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda61;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda61;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setIccEpsLoci$23$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$2;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$2;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 331
    goto :goto_21

    .line 326
    :catch_f
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccEpsLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    if-eqz p3, :cond_21

    .line 329
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda103;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda103;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setIccFdnEnabled$21$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$1;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$1;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 302
    goto :goto_21

    .line 297
    :catch_f
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccFdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    if-eqz p4, :cond_21

    .line 300
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda108;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda108;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setIccFplmn$121$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "plmn"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1635
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$35;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$35;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1648
    goto :goto_21

    .line 1643
    :catch_f
    move-exception v0

    .line 1644
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccFplmn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1645
    if-eqz p3, :cond_21

    .line 1646
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda28;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda28;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1649
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setIccLoci$28$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 372
    const v0, 0x7849efa9

    :try_start_3
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 373
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$3;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$3;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_14} :catch_15

    .line 386
    goto :goto_27

    .line 381
    :catch_15
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    if-eqz p3, :cond_27

    .line 384
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda8;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_27
    return-void
.end method

.method synthetic lambda$setIccNetworkDepersonalization$115$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1551
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$32;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$32;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1564
    goto :goto_21

    .line 1559
    :catch_f
    move-exception v0

    .line 1560
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccNetworkDepersonalization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    if-eqz p4, :cond_21

    .line 1562
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda118;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda118;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1565
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setIccPsLoci$26$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 346
    const v0, 0x7849eb5d

    :try_start_3
    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->requireApiRevision(I)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIccPsLoci(I[B)V

    .line 348
    if-eqz p3, :cond_19

    .line 349
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda97;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda97;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_19} :catch_1a

    .line 356
    :cond_19
    goto :goto_2c

    .line 351
    :catch_1a
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIccPsLoci"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    if-eqz p3, :cond_2c

    .line 354
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda98;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda98;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2c
    :goto_2c
    return-void
.end method

.method synthetic lambda$setIncomingCallBarringInfoList$49$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK([Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 13
    .param p1, "info"    # [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    .param p2, "slotId"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    .line 681
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    .local v0, "icbList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x3

    .line 684
    .local v1, "capacity":I
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_32

    aget-object v5, p1, v4

    .line 685
    .local v5, "icbInfo":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    new-instance v6, Landroid/os/Bundle;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 686
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "time"

    invoke-static {v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->-$$Nest$mgetFormattedTime(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v7, "icbnumber"

    iget-object v8, v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v7, "barringEnabled"

    iget-boolean v8, v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;->barringEnabled:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 689
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    nop

    .end local v5    # "icbInfo":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    .end local v6    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 692
    :cond_32
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v2

    new-array v3, v3, [Landroid/os/Bundle;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    invoke-direct {p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->createIcBarringResultListener(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;

    move-result-object v4

    invoke-interface {v2, p2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_47} :catch_48
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_47} :catch_48

    .line 696
    .end local v0    # "icbList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v1    # "capacity":I
    goto :goto_58

    .line 693
    :catch_48
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setIncomingCallBarringInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda91;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda91;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 697
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_58
    return-void
.end method

.method synthetic lambda$setInternalPdnEnabled$113$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1524
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setInternalPdnEnabled(IZ)V

    .line 1525
    if-eqz p3, :cond_13

    .line 1526
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda64;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda64;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1533
    :cond_13
    goto :goto_26

    .line 1528
    :catch_14
    move-exception v0

    .line 1529
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setInternalPdnEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1530
    if-eqz p3, :cond_26

    .line 1531
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda65;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda65;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1534
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    return-void
.end method

.method synthetic lambda$setNetwork$100$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1337
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->-$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$26;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$26;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1, p3, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 1351
    goto :goto_25

    .line 1346
    :catch_13
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setNetwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1348
    if-eqz p4, :cond_25

    .line 1349
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda12;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1352
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-void
.end method

.method synthetic lambda$setNetwork$92$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1208
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$22;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$22;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1221
    goto :goto_21

    .line 1216
    :catch_f
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setNetwork1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    if-eqz p2, :cond_21

    .line 1219
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda109;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda109;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setPreferredNetworkInfo$79$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "networkInfo"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1028
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    .line 1029
    invoke-static {p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->-$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$17;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$17;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    .line 1028
    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13

    .line 1042
    goto :goto_25

    .line 1037
    :catch_13
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setPreferredNetworkInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    if-eqz p3, :cond_25

    .line 1040
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda66;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda66;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1043
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-void
.end method

.method synthetic lambda$setPreferredNetworkType$83$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1090
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$19;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$19;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1103
    goto :goto_21

    .line 1098
    :catch_f
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setPreferredNetworkType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    if-eqz p3, :cond_21

    .line 1101
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda32;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda32;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method synthetic lambda$setRadioPowerEnabled$75$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 968
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setRadioPower(IZ)V

    .line 969
    if-eqz p3, :cond_13

    .line 970
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda112;

    invoke-direct {v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda112;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_14

    .line 977
    :cond_13
    goto :goto_26

    .line 972
    :catch_14
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setRadioPowerEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    if-eqz p3, :cond_26

    .line 975
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda113;

    invoke-direct {v1, p3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda113;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    return-void
.end method

.method synthetic lambda$setVoiceMailNumber$106$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->getServiceApi(Landroid/content/Context;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$29;

    invoke-direct {v1, p0, p4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$29;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1449
    goto :goto_21

    .line 1444
    :catch_f
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemTelephoneSDK"

    const-string v2, "setVoiceMailNumber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1446
    if-eqz p4, :cond_21

    .line 1447
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda76;

    invoke-direct {v1, p4, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda76;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->postOnMain(Ljava/lang/Runnable;)V

    .line 1450
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-void
.end method

.method public notifyVoicemailNumberChanged(I)V
    .registers 3
    .param p1, "slotId"    # I

    .line 143
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public preBind()V
    .registers 2

    .line 83
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public setAllowedNetworkTypes(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1139
    const-string v0, "SemTelephoneSDK"

    const-string v1, "setAllowedNetworkTypes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda70;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1158
    return-void
.end method

.method public setCallBarringEnabled(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 16
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 596
    .local p6, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v8, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda99;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v8}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method

.method public setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 18
    .param p1, "slotId"    # I
    .param p2, "isVideo"    # Z
    .param p3, "reason"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 777
    .local p7, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v9, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda55;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda55;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    invoke-static {v9}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method public setCallWaitingEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 513
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda85;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda85;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method public setCallingLineIdentificationRestriction(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1607
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda90;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1621
    return-void
.end method

.method public setCdmaRoamingPreference(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "roamingType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1493
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda34;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1510
    return-void
.end method

.method public setCdmaSubscription(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "cdmaSubscriptionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1235
    .local p3, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda106;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1255
    return-void
.end method

.method public setCsg(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1403
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda49;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda49;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1421
    return-void
.end method

.method public setCsg(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1463
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda114;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda114;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1480
    return-void
.end method

.method public setDataRoamingEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 941
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda71;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda71;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 954
    return-void
.end method

.method public setEnhancedVoicePrivacy(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 852
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda119;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda119;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 869
    return-void
.end method

.method public setIccEpsLoci(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 316
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda21;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 287
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda30;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda30;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public setIccFplmn(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "plmn"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1633
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1650
    return-void
.end method

.method public setIccLoci(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 370
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method public setIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1549
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda13;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1566
    return-void
.end method

.method public setIccPsLoci(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "loci"    # [B
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 344
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public setIncomingCallBarringInfoList(I[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "info"    # [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<",
            "[",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 679
    .local p3, "listener":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;, "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener<[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda68;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda68;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method public setInternalPdnEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1522
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda38;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1535
    return-void
.end method

.method public setNetwork(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1206
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda115;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda115;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1223
    return-void
.end method

.method public setNetwork(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .param p3, "isPersistent"    # Z
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1335
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda60;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda60;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1353
    return-void
.end method

.method public setPreferredNetworkInfo(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "networkInfo"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1026
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1044
    return-void
.end method

.method public setPreferredNetworkType(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1088
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda110;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda110;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method

.method public setRadioPowerEnabled(IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 966
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda74;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;IZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 979
    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    .line 1434
    new-instance v6, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda121;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$$ExternalSyntheticLambda121;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V

    invoke-static {v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->post(Ljava/lang/Runnable;)V

    .line 1451
    return-void
.end method
