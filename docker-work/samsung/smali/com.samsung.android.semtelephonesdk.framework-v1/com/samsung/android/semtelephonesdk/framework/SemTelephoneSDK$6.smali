.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$isCallWaitingEnabled$37$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
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

    .line 486
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZZLjava/lang/String;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "success"    # Z
    .param p2, "result"    # Z
    .param p3, "err"    # Ljava/lang/String;

    .line 493
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p1, "success"    # Z
    .param p2, "resultList"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 490
    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 491
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 492
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    nop

    .line 493
    .local v0, "result":Z
    :goto_18
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$6$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZZLjava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method
