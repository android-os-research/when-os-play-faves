.class public Lgov/nist/javax/sip/stack/UDPMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "UDPMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/ParseExceptionListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;
    }
.end annotation


# instance fields
.field private greylist incomingPacket:Ljava/net/DatagramPacket;

.field private greylist myAddress:Ljava/lang/String;

.field protected greylist myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

.field protected greylist myPort:I

.field private greylist peerAddress:Ljava/net/InetAddress;

.field private greylist peerPacketSourceAddress:Ljava/net/InetAddress;

.field private greylist peerPacketSourcePort:I

.field private greylist peerPort:I

.field private greylist peerProtocol:Ljava/lang/String;

.field private greylist pingBackRecord:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private greylist receptionTime:J

.field protected greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetpingBackRecord(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    return-object p0
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .registers 5
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    .line 173
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 174
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 175
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 177
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    .local v0, "mythread":Ljava/lang/Thread;
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 180
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 182
    const-string v1, "UDPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    .registers 6
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    .param p3, "packet"    # Ljava/net/DatagramPacket;

    .line 200
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 202
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 203
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 204
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 206
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 207
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 208
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v0, "mythread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 210
    const-string v1, "UDPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method protected constructor greylist <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .registers 8
    .param p1, "targetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    .line 227
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 228
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 229
    iput p2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 230
    const-string v0, "UDP"

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 231
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 232
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 233
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 234
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 235
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 236
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating message channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 239
    :cond_56
    return-void
.end method

.method private greylist processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    .registers 16
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    const-string v0, "rport"

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 319
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 321
    .local v1, "packetLength":I
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    .line 322
    .local v2, "bytes":[B
    new-array v3, v1, [B

    .line 323
    .local v3, "msgBytes":[B
    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 327
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UDPMessageChannel: processIncomingDataPacket : peerAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 329
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 330
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 334
    :cond_58
    const/4 v5, 0x0

    .line 336
    .local v5, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    const/4 v6, 0x0

    :try_start_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    .line 337
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-virtual {v7, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v7

    move-object v5, v7

    .line 338
    iput-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_end_69
    .catch Ljava/text/ParseException; {:try_start_5a .. :try_end_69} :catch_21b

    .line 379
    nop

    .line 384
    if-nez v5, :cond_e7

    .line 385
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 386
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v4, "Rejecting message !  + Null message parsed."

    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 388
    :cond_7f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e6

    .line 389
    const-string v0, "\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 390
    .local v0, "retval":[B
    new-instance v4, Ljava/net/DatagramPacket;

    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    move-object v6, v4

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 391
    .local v4, "keepalive":Ljava/net/DatagramPacket;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v6, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v6, v6, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v6, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 392
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 393
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    invoke-direct {v7, p0, v8, v9}, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;-><init>(Lgov/nist/javax/sip/stack/UDPMessageChannel;Ljava/lang/String;I)V

    const-wide/16 v8, 0x3e8

    .line 392
    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 395
    .end local v0    # "retval":[B
    .end local v4    # "keepalive":Ljava/net/DatagramPacket;
    :cond_e6
    return-void

    .line 397
    :cond_e7
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v4

    .line 399
    .local v4, "viaList":Lgov/nist/javax/sip/header/ViaList;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v6

    if-eqz v6, :cond_199

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v6

    if-eqz v6, :cond_199

    .line 400
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v6

    if-eqz v6, :cond_199

    .line 401
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    if-eqz v6, :cond_199

    .line 402
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v6

    if-nez v6, :cond_10b

    goto/16 :goto_199

    .line 418
    :cond_10b
    instance-of v6, v5, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v6, :cond_171

    .line 419
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/Via;

    .line 420
    .local v6, "v":Lgov/nist/javax/sip/header/Via;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v7

    .line 421
    .local v7, "hop":Ljavax/sip/address/Hop;
    invoke-interface {v7}, Ljavax/sip/address/Hop;->getPort()I

    move-result v8

    iput v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 422
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 425
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    iput v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 427
    :try_start_139
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 432
    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v8

    .line 433
    .local v8, "hasRPort":Z
    if-nez v8, :cond_155

    .line 434
    invoke-interface {v7}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 435
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_160

    .line 436
    :cond_155
    const-string v9, "received"

    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 437
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v6, v9, v10}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_160
    if-eqz v8, :cond_16b

    .line 441
    iget v9, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 442
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 441
    invoke-virtual {v6, v0, v9}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/text/ParseException; {:try_start_139 .. :try_end_16b} :catch_16c

    .line 446
    .end local v8    # "hasRPort":Z
    :cond_16b
    goto :goto_170

    .line 444
    :catch_16c
    move-exception v0

    .line 445
    .local v0, "ex1":Ljava/text/ParseException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 448
    .end local v0    # "ex1":Ljava/text/ParseException;
    .end local v6    # "v":Lgov/nist/javax/sip/header/Via;
    .end local v7    # "hop":Ljavax/sip/address/Hop;
    :goto_170
    goto :goto_195

    .line 450
    :cond_171
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 451
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 452
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 453
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 454
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 457
    :goto_195
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 459
    return-void

    .line 403
    :cond_199
    :goto_199
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 404
    .local v0, "badmsg":Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_21a

    .line 405
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 406
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> Dropped Bad Msg From = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 407
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "To = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 408
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CallId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 409
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CSeq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 410
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Via = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 411
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 413
    :cond_21a
    return-void

    .line 339
    .end local v0    # "badmsg":Ljava/lang/String;
    .end local v4    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :catch_21b
    move-exception v0

    .line 340
    .local v0, "ex":Ljava/text/ParseException;
    iput-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    .line 341
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_270

    .line 342
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rejecting message !  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 345
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 346
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    invoke-interface {v6, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 352
    :cond_270
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    move-object v4, v6

    .line 353
    .local v4, "msgString":Ljava/lang/String;
    const-string v6, "SIP/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d8

    const-string v6, "ACK "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d8

    .line 355
    invoke-virtual {p0, v4, v0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "badReqRes":Ljava/lang/String;
    if-eqz v6, :cond_2c5

    .line 357
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2a8

    .line 358
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Sending automatic 400 Bad Request:"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 360
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 363
    :cond_2a8
    :try_start_2a8
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 364
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    const-string v12, "UDP"

    const/4 v13, 0x0

    .line 363
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2a8 .. :try_end_2b9} :catch_2ba

    goto :goto_2c4

    .line 365
    :catch_2ba
    move-exception v7

    .line 366
    .local v7, "e":Ljava/io/IOException;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    invoke-interface {v8, v7}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 367
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2c4
    goto :goto_2d8

    .line 369
    :cond_2c5
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2d8

    .line 370
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 371
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    .line 372
    const-string v8, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 378
    .end local v6    # "badReqRes":Ljava/lang/String;
    :cond_2d8
    :goto_2d8
    return-void
.end method


# virtual methods
.method public greylist close()V
    .registers 1

    .line 938
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 869
    if-nez p1, :cond_4

    .line 870
    const/4 v0, 0x0

    return v0

    .line 872
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 873
    const/4 v0, 0x0

    .local v0, "retval":Z
    goto :goto_24

    .line 875
    .end local v0    # "retval":Z
    :cond_14
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    .line 876
    .local v0, "that":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 879
    .local v0, "retval":Z
    :goto_24
    return v0
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 2

    .line 827
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getKey()Ljava/lang/String;
    .registers 4

    .line 883
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    const-string v2, "UDP"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPeerAddress()Ljava/lang/String;
    .registers 2

    .line 854
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist getPeerInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 858
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerName()Ljava/lang/String;
    .registers 2

    .line 845
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourcePort()I
    .registers 2

    .line 887
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    return v0
.end method

.method public greylist getPeerPort()I
    .registers 2

    .line 927
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    return v0
.end method

.method public greylist getPeerProtocol()Ljava/lang/String;
    .registers 2

    .line 931
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 809
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 818
    const-string v0, "udp"

    return-object v0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .registers 2

    .line 900
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getViaPort()I
    .registers 2

    .line 909
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    return v0
.end method

.method public greylist handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p3, "hdrClass"    # Ljava/lang/Class;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 585
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 587
    :cond_11
    if-eqz p3, :cond_68

    const-class v0, Lgov/nist/javax/sip/header/From;

    .line 588
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    .line 589
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/Via;

    .line 590
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CallID;

    .line 591
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 592
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    .line 593
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 594
    :cond_4b
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 595
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "BAD MESSAGE!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 598
    :cond_67
    throw p1

    .line 600
    :cond_68
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public greylist isReliable()Z
    .registers 2

    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public greylist processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 11
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .line 468
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v0, :cond_f0

    .line 469
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 474
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 476
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    .line 477
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-wide v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    .line 476
    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 481
    :cond_45
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 482
    invoke-virtual {v1, v0, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object v1

    .line 484
    .local v1, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-nez v1, :cond_61

    .line 485
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 486
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    .line 487
    const-string v3, "Null request interface returned -- dropping request"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 491
    :cond_60
    return-void

    .line 493
    :cond_61
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    const-string v3, "/"

    if-eqz v2, :cond_93

    .line 494
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 495
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 497
    :cond_93
    :try_start_93
    invoke-interface {v1, v0, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_db

    .line 499
    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_a9

    .line 500
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 501
    .local v2, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_a9

    .line 502
    move-object v4, v1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 506
    .end local v2    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_a9
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 507
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Done processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 508
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 513
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v1    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_d9
    goto/16 :goto_183

    .line 499
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v1    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catchall_db
    move-exception v2

    instance-of v3, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_ef

    .line 500
    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 501
    .local v3, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_ef

    .line 502
    move-object v4, v1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 505
    .end local v3    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_ef
    throw v2

    .line 515
    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v1    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_f0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 517
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_f3
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_f6
    .catch Ljava/text/ParseException; {:try_start_f3 .. :try_end_f6} :catch_184

    .line 524
    nop

    .line 525
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 526
    invoke-virtual {v1, v0, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v1

    .line 527
    .local v1, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v1, :cond_170

    .line 529
    :try_start_ff
    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v2, :cond_144

    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 531
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v2

    if-nez v2, :cond_144

    .line 532
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 533
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping response message with invalid tag >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_ff .. :try_end_130} :catchall_15b

    .line 541
    :cond_130
    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_143

    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 543
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v2

    if-nez v2, :cond_143

    .line 544
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 536
    :cond_143
    return-void

    .line 539
    :cond_144
    :try_start_144
    invoke-interface {v1, v0, p0}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_15b

    .line 541
    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_15a

    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 543
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v2

    if-nez v2, :cond_15a

    .line 544
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 545
    :cond_15a
    goto :goto_183

    .line 541
    :catchall_15b
    move-exception v2

    instance-of v3, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_16f

    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 543
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v3

    if-nez v3, :cond_16f

    .line 544
    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 545
    :cond_16f
    throw v2

    .line 549
    :cond_170
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_183

    .line 550
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "null sipServerResponse!"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 555
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_183
    :goto_183
    return-void

    .line 518
    .restart local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catch_184
    move-exception v1

    .line 519
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 520
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping Badly formatted response message >>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 523
    :cond_1a9
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 246
    const/4 v0, 0x0

    .line 250
    .local v0, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    if-nez v1, :cond_f

    .line 251
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    .line 252
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    .line 257
    :cond_f
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_70

    .line 258
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v1, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 259
    :goto_1d
    :try_start_1d
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 260
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 262
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-boolean v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v3, :cond_33

    .line 263
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_6d

    return-void

    .line 267
    :cond_33
    if-nez v0, :cond_40

    .line 268
    :try_start_35
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v3

    .line 269
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v3

    move-object v0, v3

    .line 273
    :cond_40
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 278
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 280
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v4

    .line 279
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_50} :catch_51
    .catchall {:try_start_35 .. :try_end_50} :catchall_6d

    goto :goto_5c

    .line 281
    :catch_51
    move-exception v3

    .line 282
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_52
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v4, :cond_5c

    .line 283
    monitor-exit v1

    return-void

    .line 284
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_5c
    :goto_5c
    goto :goto_1d

    .line 286
    :cond_5d
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 287
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/DatagramPacket;

    .line 289
    .local v3, "packet":Ljava/net/DatagramPacket;
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_6d

    .line 290
    iput-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    goto :goto_72

    .line 289
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2

    .line 292
    :cond_70
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 297
    .restart local v3    # "packet":Ljava/net/DatagramPacket;
    :goto_72
    :try_start_72
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    .line 302
    goto :goto_82

    .line 298
    :catch_76
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Error while processing incoming UDP packet"

    invoke-interface {v4, v5, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_82
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ne v1, v2, :cond_89

    .line 305
    return-void

    .line 307
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    :cond_89
    goto/16 :goto_1
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 19
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "An exception occured while sending message"

    const-string v10, "Sent EMPTY Message"

    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    const/16 v11, 0x10

    if-eqz v0, :cond_3a

    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 615
    instance-of v0, v8, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v0, :cond_31

    move-object v0, v8

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 616
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 620
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v11}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    goto :goto_3a

    .line 622
    :cond_31
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v11}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 629
    :cond_3a
    :goto_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 631
    .local v12, "time":J
    const/16 v14, 0x20

    :try_start_40
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 632
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    .line 631
    array-length v1, v0

    const/4 v2, 0x0

    :goto_48
    if-ge v2, v1, :cond_d2

    aget-object v3, v0, v2

    move-object v15, v3

    .line 633
    .local v15, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 634
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v3

    iget v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    if-ne v3, v4, :cond_ce

    .line 635
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 637
    iget-object v3, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 638
    invoke-virtual {v15, v3, v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v3

    move-object v5, v3

    .line 640
    .local v5, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    instance-of v3, v5, Lgov/nist/javax/sip/stack/RawMessageChannel;

    if-eqz v3, :cond_cc

    .line 641
    move-object v0, v5

    check-cast v0, Lgov/nist/javax/sip/stack/RawMessageChannel;

    .line 642
    invoke-interface {v0, v8}, Lgov/nist/javax/sip/stack/RawMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 643
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 644
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "Self routing message"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_93} :catch_12e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_93} :catch_11e
    .catchall {:try_start_40 .. :try_end_93} :catchall_11c

    .line 663
    :cond_93
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v11}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 664
    iget-object v3, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v16, v5

    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .local v16, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_cb

    .line 663
    .end local v16    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_b4
    move-object/from16 v16, v5

    .line 665
    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v16    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v14}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 666
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 645
    :cond_cb
    :goto_cb
    return-void

    .line 640
    .end local v16    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_cc
    move-object/from16 v16, v5

    .line 631
    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v15    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_ce
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_48

    .line 651
    :cond_d2
    :try_start_d2
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 653
    .local v2, "msg":[B
    iget-object v3, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    iget-object v5, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    instance-of v6, v8, Lgov/nist/javax/sip/message/SIPRequest;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_e7} :catch_12e
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e7} :catch_11e
    .catchall {:try_start_d2 .. :try_end_e7} :catchall_11c

    .line 663
    .end local v2    # "msg":[B
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v11}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v0

    if-nez v0, :cond_106

    .line 664
    iget-object v3, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_11b

    .line 665
    :cond_106
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v14}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 666
    iget-object v0, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 668
    :cond_11b
    :goto_11b
    return-void

    .line 663
    :catchall_11c
    move-exception v0

    goto :goto_131

    .line 658
    :catch_11e
    move-exception v0

    .line 659
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_11f
    iget-object v1, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v9, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 660
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v12    # "time":J
    .end local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    throw v1

    .line 656
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v12    # "time":J
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_12e
    move-exception v0

    .line 657
    .local v0, "ex":Ljava/io/IOException;
    nop

    .end local v12    # "time":J
    .end local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    throw v0
    :try_end_131
    .catchall {:try_start_11f .. :try_end_131} :catchall_11c

    .line 663
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v12    # "time":J
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_131
    iget-object v1, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v11}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_151

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v1

    if-eqz v1, :cond_144

    goto :goto_151

    .line 664
    :cond_144
    iget-object v3, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_166

    .line 665
    :cond_151
    :goto_151
    iget-object v1, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v14}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 666
    iget-object v1, v7, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 667
    :cond_166
    :goto_166
    throw v0
.end method

.method protected greylist sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    .registers 15
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "peerProtocol"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    const/4 v0, -0x1

    if-ne p3, v0, :cond_37

    .line 753
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 754
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":sendMessage: Dropping reply!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 757
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Receiver port not set "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_37
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_74

    .line 760
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":sendMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n messageSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 764
    :cond_74
    const-string v0, "UDP"

    invoke-virtual {p4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ec

    .line 765
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p1

    invoke-direct {v0, p1, v2, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 770
    .local v0, "reply":Ljava/net/DatagramPacket;
    :try_start_82
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-eqz v2, :cond_8f

    .line 771
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v2, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .local v2, "sock":Ljava/net/DatagramSocket;
    goto :goto_99

    .line 775
    .end local v2    # "sock":Ljava/net/DatagramSocket;
    :cond_8f
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v2

    .line 777
    .restart local v2    # "sock":Ljava/net/DatagramSocket;
    :goto_99
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 778
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 779
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-interface {v3, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 782
    :cond_d8
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 783
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-nez v1, :cond_e4

    .line 784
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_e4} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_e4} :catch_e5

    .line 789
    .end local v2    # "sock":Ljava/net/DatagramSocket;
    :cond_e4
    goto :goto_e9

    .line 787
    :catch_e5
    move-exception v1

    .line 788
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 791
    .end local v0    # "reply":Ljava/net/DatagramPacket;
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_e9
    goto :goto_10d

    .line 785
    .restart local v0    # "reply":Ljava/net/DatagramPacket;
    :catch_ea
    move-exception v1

    .line 786
    .local v1, "ex":Ljava/io/IOException;
    throw v1

    .line 793
    .end local v0    # "reply":Ljava/net/DatagramPacket;
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_ec
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 794
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 793
    const-string v5, "tcp"

    move-object v3, p2

    move v4, p3

    move-object v6, p1

    move v7, p5

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object v0

    .line 796
    .local v0, "outputSocket":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 797
    .local v1, "myOutputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 798
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 801
    .end local v0    # "outputSocket":Ljava/net/Socket;
    .end local v1    # "myOutputStream":Ljava/io/OutputStream;
    :goto_10d
    return-void
.end method

.method protected greylist sendMessage([BLjava/net/InetAddress;IZ)V
    .registers 8
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "reConnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 686
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 688
    :cond_1b
    const/4 v0, -0x1

    if-ne p3, v0, :cond_52

    .line 689
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 690
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":sendMessage: Dropping reply!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 693
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Receiver port not set "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_52
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 696
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmessageSize =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "*******************\n"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 702
    :cond_a9
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    invoke-direct {v0, p1, v1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 706
    .local v0, "reply":Ljava/net/DatagramPacket;
    const/4 v1, 0x0

    .line 708
    .local v1, "created":Z
    :try_start_b0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-eqz v2, :cond_bd

    .line 713
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v2, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .local v2, "sock":Ljava/net/DatagramSocket;
    goto :goto_c3

    .line 721
    .end local v2    # "sock":Ljava/net/DatagramSocket;
    :cond_bd
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 722
    .restart local v2    # "sock":Ljava/net/DatagramSocket;
    const/4 v1, 0x1

    .line 724
    :goto_c3
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 725
    if-eqz v1, :cond_cb

    .line 726
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_cb} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cb} :catch_cc

    .line 731
    .end local v1    # "created":Z
    .end local v2    # "sock":Ljava/net/DatagramSocket;
    :cond_cb
    goto :goto_d0

    .line 729
    :catch_cc
    move-exception v1

    .line 730
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 732
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_d0
    return-void

    .line 727
    :catch_d1
    move-exception v1

    .line 728
    .local v1, "ex":Ljava/io/IOException;
    throw v1
.end method
