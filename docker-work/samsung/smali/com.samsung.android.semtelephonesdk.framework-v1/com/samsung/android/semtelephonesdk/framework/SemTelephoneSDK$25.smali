.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$getAvailableNetworkList$98$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
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

    .line 1298
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .registers 2
    .param p0, "x$0"    # Ljava/util/List;

    .line 1306
    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->-$$Nest$smfromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onResult$1(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZLjava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "success"    # Z
    .param p2, "list"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 1311
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .registers 10
    .param p1, "success"    # Z
    .param p2, "result"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableNetworkList result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephoneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v0, "list":Ljava/util/List;
    if-eqz p1, :cond_5c

    .line 1305
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25$$ExternalSyntheticLambda0;-><init>()V

    .line 1306
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1307
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1308
    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    .line 1309
    .local v2, "count":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableNetworkList count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    .end local v2    # "count":J
    :cond_5c
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$25$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZLjava/util/List;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 1312
    return-void
.end method
