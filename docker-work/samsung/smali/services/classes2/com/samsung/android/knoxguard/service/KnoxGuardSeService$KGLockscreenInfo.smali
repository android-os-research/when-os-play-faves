.class Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
.super Ljava/lang/Object;
.source "KnoxGuardSeService.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KGLockscreenInfo"
.end annotation


# instance fields
.field private mClientName:Ljava/lang/String;

.field private mCustomAppName:Ljava/lang/String;

.field private mCustomAppPackageName:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSkipPin:Z

.field private mSkipSupport:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 8

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    invoke-virtual {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setClientName(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0, p4}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setMessage(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setEmailAddress(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0, p5}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setSkipPin(Z)V

    .line 815
    invoke-virtual {p0, p6}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setSkipSupport(Z)V

    .line 816
    invoke-virtual {p0, p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 4

    .line 868
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 869
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    const-string v2, "customer_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 870
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    const-string v1, "customer_app_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .registers 1

    .line 820
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    return-object p0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 1

    .line 844
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 828
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 1

    .line 836
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getSkipPin()Z
    .registers 1

    .line 860
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    return p0
.end method

.method public getSkipSupport()Z
    .registers 1

    .line 852
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    return p0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 876
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    .line 877
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    return-void

    :cond_8
    const-string v1, "customer_package_name"

    .line 881
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 883
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    goto :goto_19

    .line 885
    :cond_17
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    :goto_19
    const-string v1, "customer_app_name"

    .line 887
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 889
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    goto :goto_2a

    .line 891
    :cond_28
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    :goto_2a
    return-void
.end method

.method public setClientName(Ljava/lang/String;)V
    .registers 2

    .line 824
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .registers 2

    .line 848
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 832
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2

    .line 840
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSkipPin(Z)V
    .registers 2

    .line 864
    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    return-void
.end method

.method public setSkipSupport(Z)V
    .registers 2

    .line 856
    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    return-void
.end method
