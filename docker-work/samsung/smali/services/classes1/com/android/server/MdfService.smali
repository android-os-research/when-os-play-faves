.class public Lcom/android/server/MdfService;
.super Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;
.source "MdfService.java"


# instance fields
.field public mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    const-string v0, "MdfService"

    if-nez p1, :cond_14

    const-string/jumbo p0, "mdfService is null"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 25
    :cond_14
    invoke-virtual {p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_42

    .line 28
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    move-result p0

    if-eqz p0, :cond_47

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initCCMode res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_3c} :catch_3d

    goto :goto_47

    :catch_3d
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 33
    throw p0

    :cond_42
    const-string p0, "This device does not support the MDF"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public initCCMode()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez p0, :cond_6

    const/4 p0, -0x2

    return p0

    .line 46
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    move-result p0
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 50
    throw p0
.end method
