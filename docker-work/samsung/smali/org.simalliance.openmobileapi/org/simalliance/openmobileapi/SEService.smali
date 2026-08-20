.class public Lorg/simalliance/openmobileapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/SEService$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OMA_Lib_SEService"


# instance fields
.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mReaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/simalliance/openmobileapi/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lorg/simalliance/openmobileapi/SEService$1;

    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/SEService$1;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    .line 115
    if-eqz p1, :cond_4c

    .line 119
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 122
    new-instance v0, Lorg/simalliance/openmobileapi/SEService$2;

    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/SEService$2;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.simalliance.openmobileapi.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.se"

    const-string v2, "com.android.se.SecureElementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 145
    .local v1, "bindingSuccessful":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindingSuccessful: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OMA_Lib_SEService"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bindingSuccessful":Z
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .registers 2
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;
    .param p1, "x1"    # Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 47
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;
    .registers 2
    .param p0, "x0"    # Lorg/simalliance/openmobileapi/SEService;

    .line 47
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    return-object v0
.end method

.method private getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 224
    .local v0, "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v1, p1, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v1

    .line 225
    .local v1, "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->isSet()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 226
    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 228
    :cond_14
    return-object v1

    .line 229
    .end local v0    # "error":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v1    # "reader":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :catch_15
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initReadersMap()V
    .registers 8

    .line 244
    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReaders()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_4a

    .line 247
    .local v0, "readerNames":[Ljava/lang/String;
    nop

    .line 249
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    .line 250
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_49

    aget-object v3, v0, v2

    .line 252
    .local v3, "readerName":Ljava/lang/String;
    :try_start_14
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    new-instance v5, Lorg/simalliance/openmobileapi/Reader;

    invoke-direct {p0, v3}, Lorg/simalliance/openmobileapi/SEService;->getReader(Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lorg/simalliance/openmobileapi/Reader;-><init>(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;Ljava/lang/String;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_23

    .line 256
    goto :goto_46

    .line 253
    :catch_23
    move-exception v4

    .line 255
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adding reader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OMA_Lib_SEService"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v3    # "readerName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 258
    :cond_49
    return-void

    .line 245
    .end local v0    # "readerNames":[Ljava/lang/String;
    :catch_4a
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private sortReaders()[Lorg/simalliance/openmobileapi/Reader;
    .registers 7

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "readersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/simalliance/openmobileapi/Reader;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simalliance/openmobileapi/Reader;

    move-object v3, v2

    .local v3, "reader":Lorg/simalliance/openmobileapi/Reader;
    if-eqz v2, :cond_2a

    .line 271
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 275
    .end local v1    # "i":I
    :cond_2a
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    const-string v2, "SIM - UICC"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simalliance/openmobileapi/Reader;

    .line 276
    .end local v3    # "reader":Lorg/simalliance/openmobileapi/Reader;
    .local v1, "reader":Lorg/simalliance/openmobileapi/Reader;
    if-eqz v1, :cond_39

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_39
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3a
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eSE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simalliance/openmobileapi/Reader;

    move-object v1, v3

    if-eqz v3, :cond_5e

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 287
    .end local v2    # "i":I
    :cond_5e
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    const-string v3, "eSE - SmartMX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/simalliance/openmobileapi/Reader;

    .line 288
    if-eqz v1, :cond_6e

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_6e
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_6f
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simalliance/openmobileapi/Reader;

    move-object v1, v3

    if-eqz v3, :cond_93

    .line 295
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 299
    .end local v2    # "i":I
    :cond_93
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simalliance/openmobileapi/Reader;

    .line 300
    .local v3, "r":Lorg/simalliance/openmobileapi/Reader;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b2

    .line 301
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v3    # "r":Lorg/simalliance/openmobileapi/Reader;
    :cond_b2
    goto :goto_9d

    .line 305
    :cond_b3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/simalliance/openmobileapi/Reader;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/simalliance/openmobileapi/Reader;

    return-object v2
.end method


# virtual methods
.method getCallback()Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .registers 2

    .line 235
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    return-object v0
.end method

.method public getReaders()[Lorg/simalliance/openmobileapi/Reader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v0, :cond_10

    .line 172
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 173
    invoke-direct {p0}, Lorg/simalliance/openmobileapi/SEService;->initReadersMap()V

    .line 176
    :cond_b
    invoke-direct {p0}, Lorg/simalliance/openmobileapi/SEService;->sortReaders()[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    return-object v0

    .line 169
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 214
    const-string v0, "3.1"

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public shutdown()V
    .registers 5

    .line 188
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:Ljava/util/Map;

    if-eqz v1, :cond_25

    .line 190
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simalliance/openmobileapi/Reader;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_33

    .line 192
    .local v2, "reader":Lorg/simalliance/openmobileapi/Reader;
    :try_start_1f
    invoke-virtual {v2}, Lorg/simalliance/openmobileapi/Reader;->closeSessions()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_33

    .line 194
    goto :goto_24

    .line 193
    :catch_23
    move-exception v3

    .line 195
    .end local v2    # "reader":Lorg/simalliance/openmobileapi/Reader;
    :goto_24
    goto :goto_13

    .line 198
    :cond_25
    :try_start_25
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2c} :catch_2d
    .catchall {:try_start_25 .. :try_end_2c} :catchall_33

    .line 202
    goto :goto_2e

    .line 199
    :catch_2d
    move-exception v1

    .line 203
    :goto_2e
    const/4 v1, 0x0

    :try_start_2f
    iput-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v1
.end method
