.class public abstract Lcom/gsma/services/rcs/RcsService;
.super Ljava/lang/Object;
.source "RcsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/RcsService$Build;,
        Lcom/gsma/services/rcs/RcsService$ReadStatus;,
        Lcom/gsma/services/rcs/RcsService$Direction;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_PROVISIONING_DATA_CHANGED:Ljava/lang/String; = "com.gsma.services.rcs.action.SERVICE_PROVISIONING_DATA_CHANGED"

.field public static final ACTION_SERVICE_UP:Ljava/lang/String; = "com.gsma.services.rcs.action.SERVICE_UP"


# instance fields
.field private api:Landroid/os/IInterface;

.field protected ctx:Landroid/content/Context;

.field private mCommonServiceConfiguration:Lcom/gsma/services/rcs/CommonServiceConfiguration;

.field protected mRegistrationReason:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

.field private final mapForRegisterListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/RcsServiceRegistrationListener;",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

.field private version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    .line 221
    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;

    .line 229
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->ctx:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/gsma/services/rcs/RcsService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    .line 231
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mCommonServiceConfiguration:Lcom/gsma/services/rcs/CommonServiceConfiguration;

    .line 232
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mRegistrationReason:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 233
    return-void
.end method

.method private callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "paramClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_39

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 247
    .local v0, "c":Ljava/lang/Class;
    const/4 v1, 0x0

    if-eqz p2, :cond_1f

    .line 248
    const/4 v2, 0x1

    :try_start_c
    new-array v3, v2, [Ljava/lang/Class;

    aput-object p3, v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 249
    .local v3, "m":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 251
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_1f
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 252
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2d} :catch_2e

    return-object v1

    .line 254
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_39
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/gsma/services/rcs/RcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_18

    .line 330
    move-object v0, p1

    .line 331
    .local v0, "callBackListener":Lcom/gsma/services/rcs/RcsServiceRegistrationListener;
    new-instance v1, Lcom/gsma/services/rcs/RcsService$1;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/RcsService$1;-><init>(Lcom/gsma/services/rcs/RcsService;Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V

    .line 342
    .local v1, "interfaceListener":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-class v2, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    const-string v3, "addEventListener"

    invoke-direct {p0, v3, v1, v2}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 344
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/RcsServiceRegistrationListener;
    .end local v1    # "interfaceListener":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    nop

    .line 347
    return-void

    .line 345
    :cond_18
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public getCommonConfiguration()Lcom/gsma/services/rcs/CommonServiceConfiguration;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mCommonServiceConfiguration:Lcom/gsma/services/rcs/CommonServiceConfiguration;

    return-object v0
.end method

.method public getServiceRegistrationReasonCode()Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mRegistrationReason:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    return-object v0
.end method

.method public getServiceVersion()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_26

    .line 296
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;

    if-nez v0, :cond_1f

    .line 298
    :try_start_8
    const-string v0, "getServiceVersion"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    .line 301
    goto :goto_1f

    .line 299
    :catch_14
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 305
    :cond_26
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isServiceConnected()Z
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isServiceRegistered()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_12

    .line 317
    const-string v0, "isServiceRegistered"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 319
    :cond_12
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/RcsServiceRegistrationListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/RcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_1c

    .line 356
    iget-object v0, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    .line 357
    .local v0, "interfaceListener":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    if-eqz v0, :cond_15

    .line 358
    const-class v1, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    const-string v2, "removeEventListener"

    invoke-direct {p0, v2, v0, v1}, Lcom/gsma/services/rcs/RcsService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 360
    :cond_15
    iget-object v1, p0, Lcom/gsma/services/rcs/RcsService;->mapForRegisterListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v0    # "interfaceListener":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    nop

    .line 364
    return-void

    .line 362
    :cond_1c
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 2
    .param p1, "api"    # Landroid/os/IInterface;

    .line 267
    iput-object p1, p0, Lcom/gsma/services/rcs/RcsService;->api:Landroid/os/IInterface;

    .line 268
    return-void
.end method
