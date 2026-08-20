.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getCsgList$102$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

.field final synthetic val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    .line 1367
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;
    .registers 2
    .param p0, "x$0"    # Ljava/util/List;

    .line 1374
    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;->-$$Nest$smfromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CsgInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onResult$1(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZLjava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "success"    # Z
    .param p2, "list"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 1379
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "success"    # Z
    .param p2, "result"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 1370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    .local v0, "list":Ljava/util/List;
    if-eqz p1, :cond_3c

    .line 1373
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27$$ExternalSyntheticLambda0;-><init>()V

    .line 1374
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1375
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1376
    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    .line 1377
    .local v1, "count":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableNetworkList size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemTelephoneSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    .end local v1    # "count":J
    :cond_3c
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$27$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZLjava/util/List;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 1380
    return-void
.end method
