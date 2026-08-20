.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCallBarringEnabled$43$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
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

    .line 598
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZILjava/lang/String;)V
    .registers 5
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "err"    # Ljava/lang/String;

    .line 604
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 602
    if-eqz p2, :cond_15

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_15

    .line 603
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, -0x1

    .line 604
    .local v0, "result":I
    :goto_16
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    new-instance v2, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, v0, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$9$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZILjava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method
