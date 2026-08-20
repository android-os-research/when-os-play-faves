.class public Lcom/samsung/android/sec_platform_library/FactoryPhone;
.super Ljava/lang/Object;
.source "FactoryPhone.java"


# static fields
.field private static final BASE_ID:I = 0x3e8


# instance fields
.field private BIND_CLASS_NAME:Ljava/lang/String;

.field private HOST_NAME:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mDummyHandler:Landroid/os/Handler;

.field private mPendingMessage:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 25
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 46
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idxRil"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 25
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 46
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->setMultiRilSupport(I)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recv"    # Landroid/content/BroadcastReceiver;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 25
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 46
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService(Landroid/content/BroadcastReceiver;)V

    .line 70
    return-void
.end method

.method private _insertActionIntoMap(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 133
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_invokeOemRilRequestRaw([BLandroid/os/Message;Z)V

    .line 134
    return-void
.end method

.method private _invokeOemRilRequestRaw([BLandroid/os/Message;Z)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "isString"    # Z

    .line 142
    if-nez p2, :cond_a

    .line 143
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 145
    :cond_a
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "req":Landroid/os/Bundle;
    if-eqz p3, :cond_1a

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->convertByteToString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 150
    :cond_1a
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 152
    :goto_1f
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 153
    new-instance v1, Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 155
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_4f

    .line 156
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServiceMessenger is null, add message to pending queue..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->addMessageToPendingQueue(Landroid/os/Message;)V

    .line 158
    return-void

    .line 162
    :cond_4f
    :try_start_4f
    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_53

    .line 165
    goto :goto_54

    .line 163
    :catch_53
    move-exception v1

    .line 166
    :goto_54
    return-void
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .registers 5
    .param p1, "data"    # [B

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 171
    aget-byte v2, p1, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 172
    .end local v1    # "i":I
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setMultiRilSupport(I)V
    .registers 6
    .param p1, "idxRil"    # I

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "strRilIdxPostfix":Ljava/lang/String;
    if-lez p1, :cond_49

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiRilSupport() : bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 81
    :cond_49
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiRilSupport() : Wrong index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_6d
    return-void
.end method


# virtual methods
.method public declared-synchronized addMessageToPendingQueue(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addMessageToPendingQueue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_27

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->sendPendingMessage()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 181
    .end local p0    # "this":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :cond_27
    monitor-exit p0

    return-void

    .line 175
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connectToRilService()V
    .registers 9

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bind SecPhone Service with FactoryPhone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "userHandle":Landroid/os/UserHandle;
    const/4 v1, 0x1

    :try_start_1c
    const-string v2, "android.os.UserHandle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 99
    .local v2, "c":Ljava/lang/Class;
    const-string v3, "semOf"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 100
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3e} :catch_40

    move-object v0, v4

    .line 103
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_44

    .line 101
    :catch_40
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_44
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.sec.phone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/content/Context;->semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 108
    return-void
.end method

.method public connectToRilService(Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p1, "recv"    # Landroid/content/BroadcastReceiver;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " peek SecPhone Service with FactoryPhone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Landroid/content/BroadcastReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 116
    .local v1, "service":Landroid/os/IBinder;
    if-eqz v1, :cond_35

    .line 117
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 118
    :cond_35
    return-void
.end method

.method public disconnectFromRilService()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "disconnect from Ril service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2c

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_2c

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 126
    :cond_2c
    return-void
.end method

.method public insertActionIntoMap(Landroid/os/Handler;Ljava/lang/String;I)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "what"    # I

    .line 129
    invoke-static {p1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_insertActionIntoMap(Ljava/lang/String;Landroid/os/Message;)V

    .line 130
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invokeOemRilRequestRaw()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_invokeOemRilRequestRaw([BLandroid/os/Message;Z)V

    .line 139
    return-void
.end method

.method registerAction()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "default registerAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public declared-synchronized sendPendingMessage()V
    .registers 4

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sendPendingMessage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_1b
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_35

    if-eqz v0, :cond_33

    .line 187
    :try_start_23
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_31
    .catchall {:try_start_23 .. :try_end_30} :catchall_35

    .line 190
    goto :goto_1b

    .line 188
    .end local p0    # "this":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :catch_31
    move-exception v0

    .line 190
    goto :goto_1b

    .line 192
    :cond_33
    monitor-exit p0

    return-void

    .line 183
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
