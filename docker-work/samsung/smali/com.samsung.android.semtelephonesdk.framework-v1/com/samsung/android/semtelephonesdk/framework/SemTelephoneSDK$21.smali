.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->lambda$invokeOemRilRequestRaw$90$com-samsung-android-semtelephonesdk-framework-SemTelephoneSDK(I[BLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)V
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

    .line 1172
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z[BLjava/lang/String;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "success"    # Z
    .param p2, "result"    # [B
    .param p3, "err"    # Ljava/lang/String;

    .line 1184
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onResult$1(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZLjava/lang/String;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "success"    # Z
    .param p2, "err"    # Ljava/lang/String;

    .line 1186
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .registers 13
    .param p1, "success"    # Z
    .param p2, "resultList"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 1175
    if-eqz p2, :cond_2c

    .line 1176
    move-object v0, p2

    .line 1178
    .local v0, "theByteList":Ljava/util/List;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Byte;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Byte;

    .line 1179
    .local v2, "theBytes":[Ljava/lang/Byte;
    array-length v3, v2

    new-array v3, v3, [B

    .line 1180
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 1181
    .local v4, "i":I
    array-length v5, v2

    :goto_11
    if-ge v1, v5, :cond_21

    aget-object v6, v2, v1

    .line 1182
    .local v6, "b":Ljava/lang/Byte;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v3, v4

    .line 1181
    .end local v6    # "b":Ljava/lang/Byte;
    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_11

    .line 1184
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    new-instance v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, p1, v3, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z[BLjava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 1185
    .end local v0    # "theByteList":Ljava/util/List;
    .end local v2    # "theBytes":[Ljava/lang/Byte;
    .end local v3    # "result":[B
    .end local v4    # "i":I
    goto :goto_36

    .line 1186
    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$21$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 1188
    :goto_36
    return-void
.end method
