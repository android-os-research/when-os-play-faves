.class public Lcom/sec/epdg/EpdgManager;
.super Ljava/lang/Object;
.source "EpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgManager$ConnectionListener;,
        Lcom/sec/epdg/EpdgManager$EpdgListener;
    }
.end annotation


# static fields
.field private static final EPDGSERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.epdg.EpdgService"

.field private static final EPDGSERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.epdg"

.field public static final EPDG_CONNECTED:I = 0x3

.field public static final EPDG_CONNECTING:I = 0x1

.field public static final EPDG_DISCONNECTED:I = 0x0

.field public static final LTE_CONNECTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EPDG_Manager"


# instance fields
.field private mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

.field private final mContext:Landroid/content/Context;

.field private mEpdgConnection:Landroid/content/ServiceConnection;

.field private final mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

.field private final mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/EpdgManager$EpdgListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/EpdgManager$EpdgListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/sec/epdg/IEpdgManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;
    .registers 1

    iget-object p0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/epdg/EpdgManager;Lcom/sec/epdg/IEpdgManager;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/epdg/EpdgManager$ConnectionListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 25
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Lcom/sec/epdg/EpdgManager$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$1;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Lcom/sec/epdg/EpdgManager$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$2;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 274
    new-instance v1, Lcom/sec/epdg/EpdgManager$3;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$3;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    .line 199
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 201
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/sec/epdg/IEpdgManager;)V
    .registers 4
    .param p1, "service"    # Lcom/sec/epdg/IEpdgManager;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 25
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Lcom/sec/epdg/EpdgManager$1;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$1;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Lcom/sec/epdg/EpdgManager$2;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$2;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    .line 274
    new-instance v1, Lcom/sec/epdg/EpdgManager$3;

    invoke-direct {v1, p0}, Lcom/sec/epdg/EpdgManager$3;-><init>(Lcom/sec/epdg/EpdgManager;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    .line 188
    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    .line 189
    if-eqz p1, :cond_32

    .line 190
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    goto :goto_39

    .line 192
    :cond_32
    const-string v0, "EPDG_Manager"

    const-string v1, "missing Epdg Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_39
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEpdgService()Lcom/sec/epdg/IEpdgManager;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/sec/epdg/EpdgManager$EpdgListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->addListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    .line 472
    return-void
.end method

.method public addListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;
    .param p2, "phoneId"    # I

    .line 475
    const-string v0, "EPDG_Manager"

    const-string v1, "Register ePDG Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-eqz p1, :cond_95

    .line 480
    if-nez p2, :cond_45

    .line 481
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_35

    .line 482
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 485
    :cond_35
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 486
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v1, "ePDG Listener (PhoneID 0) : Already added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 490
    :cond_45
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6f

    .line 491
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 494
    :cond_6f
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 495
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v1, "ePDG Listener (PhoneID 1) : Already added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_7e
    if-nez p2, :cond_88

    .line 502
    :try_start_80
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->addListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    goto :goto_8f

    .line 504
    :cond_88
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->addListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V
    :try_end_8f
    .catch Ljava/lang/NullPointerException; {:try_start_80 .. :try_end_8f} :catch_90
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_8f} :catch_90

    .line 508
    :goto_8f
    goto :goto_94

    .line 506
    :catch_90
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_94
    return-void

    .line 477
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkEpdgExtraFeature(ILjava/lang/String;)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->checkEpdgExtraFeature(ILjava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 455
    :catch_7
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    const/4 v1, 0x0

    return v1
.end method

.method public connect(Ljava/lang/String;)I
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->connectBySim(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public connectBySim(Ljava/lang/String;I)I
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, v1, p2}, Lcom/sec/epdg/IEpdgManager;->connectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 350
    :catch_c
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    const/4 v1, -0x1

    return v1
.end method

.method public connectService()V
    .registers 5

    .line 237
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getEpdgService()Lcom/sec/epdg/IEpdgManager;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    if-nez v0, :cond_39

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectService() on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "epdgIntent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg"

    const-string v2, "com.sec.epdg.EpdgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 242
    .end local v0    # "epdgIntent":Landroid/content/Intent;
    goto :goto_3e

    .line 243
    :cond_39
    const-string v0, "EpdgService is already connected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_3e
    return-void
.end method

.method public disconnect(Ljava/lang/String;)I
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->disconnectBySim(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disconnectBySim(Ljava/lang/String;I)I
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, v1, p2}, Lcom/sec/epdg/IEpdgManager;->disconnectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 363
    :catch_c
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const/4 v1, -0x1

    return v1
.end method

.method public disconnectService()V
    .registers 5

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectService() on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 252
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9e

    .line 257
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_9e
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getEpdgService()Lcom/sec/epdg/IEpdgManager;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c8

    .line 262
    const-string v0, "disconnectService() : unbindService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mEpdgConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    .line 265
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    if-eqz v0, :cond_cd

    .line 266
    const-string v0, "disconnectService() : mConnListener.onDisconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mConnListener:Lcom/sec/epdg/EpdgManager$ConnectionListener;

    invoke-interface {v0}, Lcom/sec/epdg/EpdgManager$ConnectionListener;->onDisconnected()V

    goto :goto_cd

    .line 270
    :cond_c8
    const-string v0, "EpdgService is already disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_cd
    :goto_cd
    return-void
.end method

.method public enableTestRilAdapter(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->enableTestRilAdapterBySim(ZI)I

    move-result v0

    return v0
.end method

.method public enableTestRilAdapterBySim(ZI)I
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->enableTestRilAdapterBySim(ZI)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 376
    :catch_7
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const/4 v1, -0x1

    return v1
.end method

.method public getCurrentImsPdnStatus()I
    .registers 2

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgManager;->getCurrentImsPdnStatusBySim(I)I

    move-result v0

    return v0
.end method

.method public getCurrentImsPdnStatusBySim(I)I
    .registers 4
    .param p1, "phoneId"    # I

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->getCurrentImsPdnStatusBySim(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 415
    :catch_7
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    const/4 v1, 0x0

    return v1
.end method

.method public isDuringHandoverForIMS()Z
    .registers 2

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgManager;->isDuringHandoverForIMSBySim(I)Z

    move-result v0

    return v0
.end method

.method public isDuringHandoverForIMSBySim(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->isDuringHandoverForIMSBySim(I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 402
    :catch_7
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    const/4 v1, 0x0

    return v1
.end method

.method public isPossibleW2LHOAfterCallEnd()Z
    .registers 2

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v0

    return v0
.end method

.method public isPossibleW2LHOAfterCallEndBySim(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 428
    :catch_7
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    const/4 v1, 0x0

    return v1
.end method

.method public removeListener(Lcom/sec/epdg/EpdgManager$EpdgListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/epdg/EpdgManager;->removeListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    .line 513
    return-void
.end method

.method public removeListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/epdg/EpdgManager$EpdgListener;
    .param p2, "phoneId"    # I

    .line 516
    const-string v0, "EPDG_Manager"

    const-string v1, "Unregister ePDG Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-eqz p1, :cond_65

    .line 520
    if-nez p2, :cond_2d

    .line 521
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 524
    :cond_2d
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager;->mListeners2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_4e
    if-nez p2, :cond_58

    .line 530
    :try_start_50
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->removeListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    goto :goto_5f

    .line 532
    :cond_58
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mEpdgHandoverListener2:Lcom/sec/epdg/IEpdgHandoverListener$Stub;

    invoke-interface {v0, v1, p2}, Lcom/sec/epdg/IEpdgManager;->removeListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_50 .. :try_end_5f} :catch_60
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5f} :catch_60

    .line 536
    :goto_5f
    goto :goto_64

    .line 534
    :catch_60
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_64
    return-void

    .line 518
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendEventToStateMachine(II)I
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "event"    # I

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/epdg/EpdgManager;->sendEventToStateMachineBySim(III)I

    move-result v0

    return v0
.end method

.method public sendEventToStateMachineBySim(III)I
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "phoneId"    # I

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/sec/epdg/IEpdgManager;->sendEventToStateMachineBySim(IILandroid/os/IBinder;I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 389
    :catch_c
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const/4 v1, -0x1

    return v1
.end method

.method public setEmergencyQualifiedNetwork(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmergencyQualifiedNetwork: phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :try_start_22
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->setEmergencyQualifiedNetwork(II)V
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_27} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    .line 545
    goto :goto_2c

    .line 543
    :catch_28
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public setEpdgNotAvailableDuringEmergencyCall(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->setEpdgNotAvailableDuringEmergencyCall(I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 464
    :catch_7
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    const/4 v1, 0x0

    return v1
.end method

.method public setReleaseCallBeforeHO(IZ)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "setReleaseCall"    # Z

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1, p2}, Lcom/sec/epdg/IEpdgManager;->setReleaseCallBeforeHO(IZ)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 437
    :catch_7
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 439
    const/4 v1, 0x0

    return v1
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/app/PendingIntent;)I
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/epdg/EpdgManager;->startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I

    move-result v0

    return v0
.end method

.method public startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I
    .registers 11
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "phoneId"    # I

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager;->startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    .line 337
    :catch_10
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    const/4 v1, -0x1

    return v1
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/app/PendingIntent;)I
    .registers 5
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/epdg/EpdgManager;->startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/app/PendingIntent;I)I
    .registers 11
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "phoneId"    # I

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager;->startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return v0

    .line 324
    :catch_10
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    const/4 v1, -0x1

    return v1
.end method

.method public startService(Landroid/content/Intent;)V
    .registers 5
    .param p1, "epdgIntent"    # Landroid/content/Intent;

    .line 213
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getEpdgService()Lcom/sec/epdg/IEpdgManager;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    if-nez v0, :cond_39

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startservice() on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-nez p1, :cond_2c

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p1, v0

    .line 218
    :cond_2c
    const-string v0, "com.sec.epdg"

    const-string v1, "com.sec.epdg.EpdgService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3e

    .line 221
    :cond_39
    const-string v0, "EpdgService is already connected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_3e
    return-void
.end method

.method public stopService()V
    .registers 4

    .line 226
    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    if-eqz v0, :cond_30

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopservice() on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, "epdgIntent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg"

    const-string v2, "com.sec.epdg.EpdgService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/sec/epdg/EpdgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 231
    .end local v0    # "epdgIntent":Landroid/content/Intent;
    goto :goto_35

    .line 232
    :cond_30
    const-string v0, "context null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_35
    return-void
.end method

.method public triggerHOAfterReleaseCall(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager;->mService:Lcom/sec/epdg/IEpdgManager;

    invoke-interface {v0, p1}, Lcom/sec/epdg/IEpdgManager;->triggerHOAfterReleaseCall(I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 446
    :catch_7
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const/4 v1, 0x0

    return v1
.end method
