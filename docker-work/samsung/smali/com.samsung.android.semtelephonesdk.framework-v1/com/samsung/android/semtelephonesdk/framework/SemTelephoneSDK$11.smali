.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->createIcBarringResultListener(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
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

    .line 701
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;

    iput-object p2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;Ljava/lang/String;)V
    .registers 4
    .param p0, "listener"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;
    .param p1, "success"    # Z
    .param p2, "info"    # [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    .param p3, "err"    # Ljava/lang/String;

    .line 718
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .registers 16
    .param p1, "success"    # Z
    .param p2, "resultList"    # Ljava/util/List;
    .param p3, "err"    # Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    if-eqz p2, :cond_3c

    .line 707
    move-object v1, p2

    .line 708
    .local v1, "icbList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;

    .line 709
    .local v2, "info":[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    const/4 v3, 0x0

    .line 710
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 711
    .local v5, "icbValue":Landroid/os/Bundle;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    new-instance v7, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;

    const-string v8, "time"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 712
    const-string v10, "icbnumber"

    const-string v11, ""

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 713
    const-string v11, "barringEnabled"

    invoke-virtual {v5, v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-direct {v7, v8, v10, v11, v9}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo-IA;)V

    aput-object v7, v2, v3

    .line 714
    .end local v5    # "icbValue":Landroid/os/Bundle;
    move v3, v6

    goto :goto_f

    .line 715
    .end local v1    # "icbList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v6    # "i":I
    :cond_3b
    goto :goto_3e

    .line 716
    .end local v2    # "info":[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    :cond_3c
    new-array v2, v0, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;

    .line 718
    .restart local v2    # "info":[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;
    :goto_3e
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11;->val$listener:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;

    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, v2, p3}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$11$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OnResultListener;Z[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallBarringInfo;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;->-$$Nest$smpostOnMain(Ljava/lang/Runnable;)V

    .line 719
    return-void
.end method
