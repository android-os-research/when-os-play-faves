.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$setCallForwardingOption$53$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(IZIZLjava/lang/String;ILcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

.field final synthetic val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    .line 780
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .registers 6
    .param p1, "success"    # Z
    .param p2, "resultList"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 784
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$13;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$mhandleCallForwardingCallback(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;ZLjava/util/List;Ljava/lang/String;Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnTriResultListener;)V

    .line 785
    return-void
.end method
