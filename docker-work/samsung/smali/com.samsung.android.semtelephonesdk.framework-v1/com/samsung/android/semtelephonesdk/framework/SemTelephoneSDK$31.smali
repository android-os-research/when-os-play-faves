.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCdmaRoamingPreference$110$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

.field final synthetic val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    .line 1495
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;ZLjava/lang/String;)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;
    .param p1, "success"    # Z
    .param p2, "err"    # Ljava/lang/String;

    .line 1499
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "err"    # Ljava/lang/String;

    .line 1498
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;

    if-eqz v0, :cond_c

    .line 1499
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$31$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnCompleteListener;ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 1501
    :cond_c
    return-void
.end method
