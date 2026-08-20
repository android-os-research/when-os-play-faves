.class public abstract Lgov/nist/javax/sip/stack/SIPTransactionStack;
.super Ljava/lang/Object;
.source "SIPTransactionStack.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;,
        Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;
    }
.end annotation


# static fields
.field public static final greylist BASE_TIMER_INTERVAL:I = 0x1f4

.field public static final greylist CONNECTION_LINGER_TIME:I = 0x8

.field protected static final greylist dialogCreatingMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected greylist addressResolver:Lgov/nist/core/net/AddressResolver;

.field protected greylist cacheClientConnections:Z

.field protected greylist cacheServerConnections:Z

.field protected greylist cancelClientTransactionChecked:Z

.field protected greylist checkBranchId:Z

.field private greylist clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist clientTransactionTableHiwaterMark:I

.field protected greylist clientTransactionTableLowaterMark:I

.field protected greylist defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

.field protected greylist dialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private greylist forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist forkedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist generateTimeStampHeader:Z

.field protected greylist ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

.field protected greylist isAutomaticDialogErrorHandlingEnabled:Z

.field protected greylist isAutomaticDialogSupportEnabled:Z

.field protected greylist isBackToBackUserAgent:Z

.field protected greylist isDialogTerminatedEventDeliveredForNullDialog:Z

.field protected greylist logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

.field protected greylist logStackTraceOnMessageSend:Z

.field protected greylist maxConnections:I

.field protected greylist maxContentLength:I

.field protected greylist maxForkTime:I

.field protected greylist maxListenerResponseTime:I

.field protected greylist maxMessageSize:I

.field private greylist mergeTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private greylist messageProcessors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lgov/nist/javax/sip/stack/MessageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist needsLogging:Z

.field protected greylist networkLayer:Lgov/nist/core/net/NetworkLayer;

.field private greylist non2XXAckPassedToListener:Z

.field protected greylist outboundProxy:Ljava/lang/String;

.field private greylist pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist readTimeout:I

.field protected greylist receiveUdpBufferSize:I

.field protected greylist remoteTagReassignmentAllowed:Z

.field protected greylist retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist rfc2543Supported:Z

.field protected greylist router:Ljavax/sip/address/Router;

.field protected greylist routerPath:Ljava/lang/String;

.field protected greylist sendUdpBufferSize:I

.field protected greylist serverLogger:Lgov/nist/core/ServerLogger;

.field private greylist serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist serverTransactionTableHighwaterMark:I

.field protected greylist serverTransactionTableLowaterMark:I

.field protected greylist sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

.field protected greylist stackAddress:Ljava/lang/String;

.field protected greylist stackDoesCongestionControl:Z

.field protected greylist stackInetAddress:Ljava/net/InetAddress;

.field private greylist stackLogger:Lgov/nist/core/StackLogger;

.field protected greylist stackName:Ljava/lang/String;

.field private greylist terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist threadAuditor:Lgov/nist/core/ThreadAuditor;

.field protected greylist threadPoolSize:I

.field private greylist timer:Ljava/util/Timer;

.field protected greylist toExit:Z

.field greylist udpFlag:Z

.field protected greylist unlimitedClientTransactionTableSize:Z

.field protected greylist unlimitedServerTransactionTableSize:Z

.field protected greylist useRouterForAll:Z


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetforkedClientTransactionTable(Lgov/nist/javax/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static constructor greylist <clinit>()V
    .registers 2

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    .line 415
    const-string v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method protected constructor greylist <init>()V
    .registers 5

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    .line 141
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    .line 145
    const/16 v1, 0x1388

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    .line 149
    const/16 v1, 0xfa0

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    .line 154
    const/16 v1, 0x3e8

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    .line 157
    const/16 v1, 0x320

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    .line 159
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 326
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    .line 330
    new-instance v1, Lgov/nist/core/ThreadAuditor;

    invoke-direct {v1}, Lgov/nist/core/ThreadAuditor;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    .line 336
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    .line 339
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    .line 341
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 349
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    .line 351
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 355
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 357
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 362
    iput v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    .line 424
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    .line 425
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    .line 428
    const/4 v1, -0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 431
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 434
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 436
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 440
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    .line 443
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    .line 445
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 449
    new-instance v0, Lgov/nist/javax/sip/DefaultAddressResolver;

    invoke-direct {v0}, Lgov/nist/javax/sip/DefaultAddressResolver;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    .line 456
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 457
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 459
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 460
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 461
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 462
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 463
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 467
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 468
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 471
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 473
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 475
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 477
    :cond_c1
    return-void
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .registers 2
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1014
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    .line 1015
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1016
    return-void
.end method

.method private greylist addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 7
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1521
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1522
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_6b

    .line 1523
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v1, :cond_39

    .line 1524
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    if-le v1, v2, :cond_3e

    .line 1526
    :try_start_16
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_28

    .line 1527
    :try_start_19
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 1528
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1529
    monitor-exit v1

    goto :goto_38

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .end local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :try_start_27
    throw v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    .line 1531
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .restart local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catch_28
    move-exception v1

    .line 1532
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1533
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v3, "Exception occured while waiting for room"

    invoke-interface {v2, v3, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1536
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_38
    :goto_38
    goto :goto_3e

    .line 1539
    :cond_39
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1541
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1542
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1545
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " putTransactionHash :  key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1547
    .end local v1    # "key":Ljava/lang/String;
    :cond_6a
    goto :goto_97

    .line 1548
    :cond_6b
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1550
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1551
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " putTransactionHash :  key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1553
    :cond_8f
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    .end local v1    # "key":Ljava/lang/String;
    :goto_97
    return-void
.end method

.method private greylist auditDialogs(Ljava/util/Set;J)Ljava/lang/String;
    .registers 20
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J

    .line 2134
    move-object/from16 v1, p0

    const-string v2, "  Leaked dialogs:\n"

    .line 2135
    .local v2, "auditReport":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2136
    .local v3, "leakedDialogs":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2142
    .local v4, "currentTime":J
    iget-object v6, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v6

    .line 2143
    :try_start_c
    new-instance v0, Ljava/util/LinkedList;

    iget-object v7, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2144
    .local v0, "dialogs":Ljava/util/LinkedList;
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_f6

    .line 2151
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2152
    .local v6, "it":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 2154
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 2157
    .local v7, "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    const/4 v8, 0x0

    if-eqz v7, :cond_30

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v9

    goto :goto_31

    :cond_30
    move-object v9, v8

    .line 2158
    .local v9, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    :goto_31
    if-eqz v9, :cond_37

    invoke-interface {v9}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v8

    .line 2161
    .local v8, "callID":Ljava/lang/String;
    :cond_37
    if-eqz v7, :cond_ca

    if-eqz v8, :cond_ca

    move-object/from16 v10, p1

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cc

    .line 2163
    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_4f

    .line 2165
    iput-wide v4, v7, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    goto/16 :goto_cc

    .line 2169
    :cond_4f
    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    sub-long v11, v4, v11

    cmp-long v11, v11, p2

    if-ltz v11, :cond_cc

    .line 2171
    add-int/lit8 v3, v3, 0x1

    .line 2174
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v11

    .line 2175
    .local v11, "dialogState":Ljavax/sip/DialogState;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dialog id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dialog state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2177
    if-eqz v11, :cond_7d

    invoke-virtual {v11}, Ljavax/sip/DialogState;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_7f

    :cond_7d
    const-string v13, "null"

    :goto_7f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2178
    .local v12, "dialogReport":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2181
    sget v13, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v7, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2182
    iget-object v13, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v13}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_cc

    .line 2183
    iget-object v13, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "auditDialogs: leaked "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_cc

    .line 2161
    .end local v11    # "dialogState":Ljavax/sip/DialogState;
    .end local v12    # "dialogReport":Ljava/lang/String;
    :cond_ca
    move-object/from16 v10, p1

    .line 2187
    .end local v7    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v8    # "callID":Ljava/lang/String;
    .end local v9    # "callIdHeader":Ljavax/sip/header/CallIdHeader;
    :cond_cc
    :goto_cc
    goto/16 :goto_1c

    .line 2190
    :cond_ce
    move-object/from16 v10, p1

    if-lez v3, :cond_f4

    .line 2191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    Total: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " leaked dialogs detected and removed.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f5

    .line 2194
    :cond_f4
    const/4 v2, 0x0

    .line 2196
    :goto_f5
    return-object v2

    .line 2144
    .end local v0    # "dialogs":Ljava/util/LinkedList;
    .end local v6    # "it":Ljava/util/Iterator;
    :catchall_f6
    move-exception v0

    move-object/from16 v10, p1

    :goto_f9
    :try_start_f9
    monitor-exit v6
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_fb

    throw v0

    :catchall_fb
    move-exception v0

    goto :goto_f9
.end method

.method private greylist auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;
    .registers 19
    .param p1, "transactionsMap"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p2, "a_nLeakedTransactionTimer"    # J

    .line 2206
    move-object v0, p0

    const-string v1, "  Leaked transactions:\n"

    .line 2207
    .local v1, "auditReport":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2208
    .local v2, "leakedTransactions":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2213
    .local v3, "currentTime":J
    new-instance v5, Ljava/util/LinkedList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2216
    .local v5, "transactionsList":Ljava/util/LinkedList;
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2217
    .local v6, "it":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 2218
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 2219
    .local v7, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v7, :cond_be

    .line 2220
    iget-wide v8, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2f

    .line 2222
    iput-wide v3, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    goto/16 :goto_be

    .line 2226
    :cond_2f
    iget-wide v8, v7, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    sub-long v8, v3, v8

    cmp-long v8, v8, p2

    if-ltz v8, :cond_be

    .line 2228
    add-int/lit8 v2, v2, 0x1

    .line 2231
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v8

    .line 2232
    .local v8, "transactionState":Ljavax/sip/TransactionState;
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    .line 2233
    .local v9, "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-eqz v9, :cond_48

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    goto :goto_49

    .line 2234
    :cond_48
    const/4 v10, 0x0

    :goto_49
    nop

    .line 2235
    .local v10, "origRequestMethod":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2237
    const-string v12, "null"

    if-eqz v8, :cond_6a

    invoke-virtual {v8}, Ljavax/sip/TransactionState;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6b

    .line 2238
    :cond_6a
    move-object v13, v12

    :goto_6b
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", OR: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2239
    if-eqz v10, :cond_78

    move-object v12, v10

    :cond_78
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2240
    .local v11, "transactionReport":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2243
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 2244
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_be

    .line 2245
    iget-object v12, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "auditTransactions: leaked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2249
    .end local v7    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v8    # "transactionState":Ljavax/sip/TransactionState;
    .end local v9    # "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v10    # "origRequestMethod":Ljava/lang/String;
    .end local v11    # "transactionReport":Ljava/lang/String;
    :cond_be
    :goto_be
    goto/16 :goto_15

    .line 2252
    :cond_c0
    if-lez v2, :cond_e4

    .line 2253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    Total: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " leaked transactions detected and removed.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e5

    .line 2256
    :cond_e4
    const/4 v1, 0x0

    .line 2258
    :goto_e5
    return-object v1
.end method

.method public static greylist isDialogCreated(Ljava/lang/String;)Z
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .line 581
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist addExtensionMethod(Ljava/lang/String;)V
    .registers 4
    .param p1, "extensionMethod"    # Ljava/lang/String;

    .line 590
    const-string v0, "NOTIFY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 591
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 592
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "NOTIFY Supported Natively"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_25

    .line 594
    :cond_18
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/Utils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_25
    :goto_25
    return-void
.end method

.method public greylist addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .registers 4
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2485
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2486
    return-void
.end method

.method protected greylist addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .registers 4
    .param p1, "newMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v0

    .line 1900
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1902
    monitor-exit v0

    .line 1903
    return-void

    .line 1902
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .registers 5
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1439
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1440
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1441
    :cond_20
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1443
    return-void
.end method

.method public greylist addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 5
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1510
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1511
    :cond_20
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->map()V

    .line 1513
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1515
    return-void
.end method

.method public greylist addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 4
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 852
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 854
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_15
    return-void
.end method

.method public greylist auditStack(Ljava/util/Set;JJ)Ljava/lang/String;
    .registers 13
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J
    .param p4, "leakedTransactionTimer"    # J

    .line 2111
    const/4 v0, 0x0

    .line 2112
    .local v0, "auditReport":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditDialogs(Ljava/util/Set;J)Ljava/lang/String;

    move-result-object v1

    .line 2113
    .local v1, "leakedDialogs":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v2, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v2

    .line 2115
    .local v2, "leakedServerTransactions":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v3

    .line 2117
    .local v3, "leakedClientTransactions":Ljava/lang/String;
    if-nez v1, :cond_17

    if-nez v2, :cond_17

    if-eqz v3, :cond_41

    .line 2119
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP Stack Audit:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    if-eqz v1, :cond_28

    move-object v6, v1

    goto :goto_29

    :cond_28
    move-object v6, v5

    :goto_29
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2120
    if-eqz v2, :cond_31

    move-object v6, v2

    goto :goto_32

    :cond_31
    move-object v6, v5

    :goto_32
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2121
    if-eqz v3, :cond_39

    move-object v5, v3

    :cond_39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2123
    :cond_41
    return-object v0
.end method

.method public greylist checkBranchId()Z
    .registers 2

    .line 2463
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    return v0
.end method

.method public greylist createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .registers 4
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1384
    new-instance v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {v0, p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 1385
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1386
    return-object v0
.end method

.method public greylist createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 4
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 687
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V

    return-object v0
.end method

.method public greylist createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 6
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 664
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "dialogId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 666
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 667
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 668
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 669
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 673
    :cond_29
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v2, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    move-object v1, v2

    .line 675
    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public greylist createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 7
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_49

    .line 634
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "dialogId":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 636
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 637
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-ne v3, v4, :cond_2f

    goto :goto_3b

    .line 640
    :cond_2f
    new-instance v3, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v3, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object v0, v3

    .line 641
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 638
    :cond_3b
    :goto_3b
    move-object v0, v2

    .line 643
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :goto_3c
    goto :goto_48

    .line 644
    :cond_3d
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object v0, v2

    .line 645
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .end local v1    # "dialogId":Ljava/lang/String;
    :goto_48
    goto :goto_4f

    .line 648
    :cond_49
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object v0, v1

    .line 651
    :goto_4f
    return-object v0
.end method

.method public greylist createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 10
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "mp"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1351
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    .line 1352
    .local v0, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 1353
    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    .line 1354
    .local v1, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v1, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 1355
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 1356
    invoke-virtual {p2, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    .line 1360
    .local v2, "mc":Lgov/nist/javax/sip/stack/MessageChannel;
    if-nez v2, :cond_23

    .line 1361
    const/4 v3, 0x0

    return-object v3

    .line 1363
    :cond_23
    invoke-virtual {p0, p1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v3

    .line 1365
    .local v3, "returnChannel":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v4, v3

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaPort(I)V

    .line 1366
    move-object v4, v3

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaHost(Ljava/lang/String;)V

    .line 1367
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1372
    return-object v3
.end method

.method protected greylist createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;
    .registers 7
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1940
    const-string v0, "Error initializing SCTP"

    const-string v1, "udp"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1941
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    invoke-direct {v0, p1, p0, p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1943
    .local v0, "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1944
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    .line 1945
    return-object v0

    .line 1946
    .end local v0    # "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    :cond_16
    const-string v1, "tcp"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1947
    new-instance v0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-direct {v0, p1, p0, p2}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1949
    .local v0, "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1951
    return-object v0

    .line 1952
    .end local v0    # "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_27
    const-string v1, "tls"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1953
    new-instance v0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-direct {v0, p1, p0, p2}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1955
    .local v0, "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1957
    return-object v0

    .line 1958
    .end local v0    # "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_38
    const-string v1, "sctp"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1963
    :try_start_40
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "gov.nist.javax.sip.stack.sctp.SCTPMessageProcessor"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1964
    .local v1, "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 1965
    .local v2, "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v2, p1, p2, p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 1966
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_56} :catch_65
    .catch Ljava/lang/InstantiationException; {:try_start_40 .. :try_end_56} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_56} :catch_57

    .line 1967
    return-object v2

    .line 1972
    .end local v1    # "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_57
    move-exception v1

    .line 1973
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1970
    .end local v1    # "ie":Ljava/lang/IllegalAccessException;
    :catch_5e
    move-exception v1

    .line 1971
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1968
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    :catch_65
    move-exception v0

    .line 1969
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SCTP not supported (needs Java 7 and SCTP jar in classpath)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1976
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad transport"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 11
    .param p1, "sourceIpAddress"    # Ljava/lang/String;
    .param p2, "sourcePort"    # I
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 2013
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    .line 2014
    .local v0, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 2015
    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    .line 2016
    .local v1, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v1, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 2017
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 2020
    const/4 v2, 0x0

    .line 2021
    .local v2, "newChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2022
    .local v3, "processorIterator":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    if-nez v2, :cond_76

    .line 2023
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 2026
    .local v4, "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2027
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2028
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v5

    if-ne p2, v5, :cond_22

    .line 2032
    :try_start_52
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5
    :try_end_56
    .catch Ljava/net/UnknownHostException; {:try_start_52 .. :try_end_56} :catch_67
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_58

    move-object v2, v5

    .line 2042
    :cond_57
    :goto_57
    goto :goto_22

    .line 2037
    :catch_58
    move-exception v5

    .line 2038
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 2039
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_57

    .line 2033
    .end local v5    # "e":Ljava/io/IOException;
    :catch_67
    move-exception v5

    .line 2034
    .local v5, "ex":Ljava/net/UnknownHostException;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 2035
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 2036
    :cond_75
    throw v5

    .line 2046
    .end local v4    # "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v5    # "ex":Ljava/net/UnknownHostException;
    :cond_76
    return-object v2
.end method

.method public greylist createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 9
    .param p1, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1398
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    if-eqz v0, :cond_a

    .line 1399
    new-instance v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    return-object v0

    .line 1401
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 1403
    .local v0, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    float-to-double v5, v0

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 1404
    .local v1, "decision":Z
    :goto_28
    if-eqz v1, :cond_2c

    .line 1405
    const/4 v2, 0x0

    return-object v2

    .line 1407
    :cond_2c
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    return-object v2
.end method

.method protected greylist decrementActiveClientTransactionCount()V
    .registers 3

    .line 1565
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    if-gt v0, v1, :cond_1b

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v0, :cond_1b

    .line 1567
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1569
    :try_start_11
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1571
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1

    .line 1573
    :cond_1b
    :goto_1b
    return-void
.end method

.method public declared-synchronized greylist dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .registers 5
    .param p1, "dialogErrorEvent"    # Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    monitor-enter p0

    .line 1625
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1626
    .local v0, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    move-object v1, p0

    check-cast v1, Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v1

    .line 1628
    .local v1, "sipListener":Ljavax/sip/SipListener;
    if-eqz v0, :cond_17

    instance-of v2, v1, Lgov/nist/javax/sip/SipListenerExt;

    if-nez v2, :cond_17

    .line 1629
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1631
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :cond_17
    monitor-exit p0

    return-void

    .line 1624
    .end local v0    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v1    # "sipListener":Ljavax/sip/SipListener;
    .end local p1    # "dialogErrorEvent":Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist disableLogging()V
    .registers 2

    .line 542
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->disableLogging()V

    .line 543
    return-void
.end method

.method public greylist enableLogging()V
    .registers 2

    .line 550
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->enableLogging()V

    .line 551
    return-void
.end method

.method public greylist findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .registers 7
    .param p1, "cancelRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "isServer"    # Z

    .line 976
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 977
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findCancelTransaction request= \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nfindCancelRequest isServer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 981
    :cond_2a
    if-eqz p2, :cond_4e

    .line 982
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 983
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 984
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 986
    .local v1, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 987
    .local v2, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 988
    return-object v2

    .line 989
    .end local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v2    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_4c
    goto :goto_36

    .line 991
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_4d
    goto :goto_6f

    .line 992
    :cond_4e
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 993
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 994
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 996
    .restart local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 997
    .local v2, "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 998
    return-object v2

    .line 1000
    .end local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v2    # "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_6e
    goto :goto_58

    .line 1003
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1004
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Could not find transaction for cancel request"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1005
    :cond_7e
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 12
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1045
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1049
    return-object v1

    .line 1051
    :cond_e
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "mergeId":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1053
    .local v2, "mergedTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-nez v0, :cond_1d

    .line 1054
    return-object v1

    .line 1055
    :cond_1d
    if-eqz v2, :cond_26

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1056
    return-object v2

    .line 1061
    :cond_26
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/Dialog;

    .line 1062
    .local v4, "dialog":Ljavax/sip/Dialog;
    move-object v5, v4

    check-cast v5, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1063
    .local v5, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 1064
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v6

    instance-of v6, v6, Ljavax/sip/ServerTransaction;

    if-eqz v6, :cond_78

    .line 1065
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1066
    .local v6, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v7

    .line 1067
    .local v7, "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v6, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v8

    if-nez v8, :cond_78

    .line 1068
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 1069
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v1

    .line 1072
    .end local v4    # "dialog":Ljavax/sip/Dialog;
    .end local v5    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v6    # "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v7    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_78
    goto :goto_30

    .line 1073
    :cond_79
    return-object v1
.end method

.method public greylist findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 5
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1027
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1028
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for pending tx for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1029
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1031
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public greylist findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .registers 14
    .param p1, "notifyMessage"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "listeningPoint"    # Lgov/nist/javax/sip/ListeningPointImpl;

    .line 790
    const-string v0, "findSubscribeTransaction : returning "

    const/4 v1, 0x0

    .line 792
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :try_start_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 793
    .local v2, "it":Ljava/util/Iterator;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 794
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ct table size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 795
    :cond_33
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_18d

    .line 796
    .local v3, "thisToTag":Ljava/lang/String;
    if-nez v3, :cond_5d

    .line 797
    nop

    .line 839
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v4}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 840
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 797
    :cond_5c
    return-object v1

    .line 799
    :cond_5d
    :try_start_5d
    const-string v4, "Event"

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Event;

    .line 800
    .local v4, "eventHdr":Lgov/nist/javax/sip/header/Event;
    if-nez v4, :cond_96

    .line 801
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 802
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v6, "event Header is null -- returning null"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_18d

    .line 805
    :cond_76
    nop

    .line 839
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 840
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 805
    :cond_95
    return-object v1

    .line 807
    :cond_96
    :goto_96
    :try_start_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16d

    .line 808
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 809
    .local v5, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SUBSCRIBE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    .line 810
    goto :goto_96

    .line 813
    :cond_af
    iget-object v6, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->from:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 814
    .local v6, "fromTag":Ljava/lang/String;
    iget-object v7, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->event:Lgov/nist/javax/sip/header/Event;

    .line 817
    .local v7, "hisEvent":Lgov/nist/javax/sip/header/Event;
    if-nez v7, :cond_ba

    .line 818
    goto :goto_96

    .line 819
    :cond_ba
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_122

    .line 820
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ct.fromTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 821
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thisToTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 822
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hisEvent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 823
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eventHdr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 826
    :cond_122
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16b

    if-eqz v7, :cond_16b

    .line 828
    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Event;->match(Lgov/nist/javax/sip/header/Event;)Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 829
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    .line 830
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v9

    .line 829
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 831
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z

    move-result v8
    :try_end_148
    .catchall {:try_start_96 .. :try_end_148} :catchall_18d

    if-eqz v8, :cond_14b

    .line 832
    move-object v1, v5

    .line 833
    :cond_14b
    nop

    .line 839
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_16a

    .line 840
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 833
    :cond_16a
    return-object v1

    .line 835
    .end local v5    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v6    # "fromTag":Ljava/lang/String;
    .end local v7    # "hisEvent":Lgov/nist/javax/sip/header/Event;
    :cond_16b
    goto/16 :goto_96

    .line 837
    :cond_16d
    nop

    .line 839
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 840
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 837
    :cond_18c
    return-object v1

    .line 839
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "thisToTag":Ljava/lang/String;
    .end local v4    # "eventHdr":Lgov/nist/javax/sip/header/Event;
    :catchall_18d
    move-exception v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 840
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 842
    :cond_1ac
    throw v2
.end method

.method public greylist findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .registers 11
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "isServer"    # Z

    .line 908
    const/4 v0, 0x0

    .line 910
    .local v0, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    const-string v1, "z9hg4bk"

    const-string v2, "findTransaction: returning  : "

    if-eqz p2, :cond_ba

    .line 911
    :try_start_7
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    .line 912
    .local v3, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_76

    .line 913
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v0, v5

    .line 916
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 917
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverTx: looking for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 920
    :cond_4c
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_182

    if-eqz v1, :cond_76

    .line 921
    nop

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 963
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 921
    :cond_75
    return-object v0

    .line 927
    .end local v4    # "key":Ljava/lang/String;
    :cond_76
    :try_start_76
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 928
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 929
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 930
    .local v4, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v5
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_182

    if-eqz v5, :cond_b7

    .line 931
    move-object v0, v4

    .line 932
    nop

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 963
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 932
    :cond_b6
    return-object v0

    .line 934
    .end local v4    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_b7
    goto :goto_80

    .line 936
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    .end local v3    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_b8
    goto/16 :goto_15f

    .line 937
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    .line 938
    .restart local v3    # "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11d

    .line 939
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 941
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clientTx: looking for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 942
    :cond_ea
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v0, v5

    .line 943
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_f7
    .catchall {:try_start_ba .. :try_end_f7} :catchall_182

    if-eqz v1, :cond_11d

    .line 944
    nop

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 963
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 944
    :cond_11c
    return-object v0

    .line 951
    .end local v4    # "key":Ljava/lang/String;
    :cond_11d
    :try_start_11d
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 952
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :goto_127
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 953
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 954
    .local v4, "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v5
    :try_end_137
    .catchall {:try_start_11d .. :try_end_137} :catchall_182

    if-eqz v5, :cond_15e

    .line 955
    move-object v0, v4

    .line 956
    nop

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 963
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 956
    :cond_15d
    return-object v0

    .line 958
    .end local v4    # "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_15e
    goto :goto_127

    .line 962
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    .end local v3    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_15f
    :goto_15f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_181

    .line 963
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 966
    :cond_181
    return-object v0

    .line 962
    :catchall_182
    move-exception v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 963
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 965
    :cond_1a5
    throw v1
.end method

.method public greylist findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 4
    .param p1, "ackMessage"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 866
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public greylist getActiveClientTransactionCount()I
    .registers 2

    .line 2278
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public greylist getAddressResolver()Lgov/nist/core/net/AddressResolver;
    .registers 2

    .line 2070
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    return-object v0
.end method

.method public greylist getClientTransactionTableSize()I
    .registers 2

    .line 1420
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public greylist getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 6
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 755
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 756
    .local v0, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 757
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 759
    :cond_32
    return-object v0
.end method

.method public greylist getDialogs()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    .line 2301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2302
    .local v0, "dialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2303
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2304
    return-object v0
.end method

.method public greylist getDialogs(Ljavax/sip/DialogState;)Ljava/util/Collection;
    .registers 7
    .param p1, "state"    # Ljavax/sip/DialogState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sip/DialogState;",
            ")",
            "Ljava/util/Collection<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    .line 2312
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2313
    .local v0, "matchingDialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    sget-object v1, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v1, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2314
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_41

    .line 2316
    :cond_17
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2317
    .local v1, "dialogs":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/stack/SIPDialog;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 2318
    .local v3, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2319
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2321
    .end local v3    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_40
    goto :goto_21

    .line 2323
    .end local v1    # "dialogs":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/stack/SIPDialog;>;"
    :cond_41
    :goto_41
    return-object v0
.end method

.method public greylist getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .registers 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 2489
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return-object v0
.end method

.method public greylist getHostAddress()Ljava/lang/String;
    .registers 2

    .line 1832
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getJoinDialog(Lgov/nist/javax/sip/header/extensions/JoinHeader;)Ljavax/sip/Dialog;
    .registers 8
    .param p1, "joinHeader"    # Lgov/nist/javax/sip/header/extensions/JoinHeader;

    .line 2376
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 2377
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getFromTag()Ljava/lang/String;

    move-result-object v1

    .line 2378
    .local v1, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getToTag()Ljava/lang/String;

    move-result-object v2

    .line 2380
    .local v2, "toTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2383
    .local v3, "retval":Ljava/lang/StringBuffer;
    const-string v4, ":"

    if-eqz v2, :cond_1b

    .line 2384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2385
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2388
    :cond_1b
    if-eqz v1, :cond_23

    .line 2389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2390
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2392
    :cond_23
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/Dialog;

    return-object v4
.end method

.method public greylist getMaxMessageSize()I
    .registers 2

    .line 1741
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    return v0
.end method

.method protected greylist getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;
    .registers 4

    .line 1926
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v0

    .line 1927
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lgov/nist/javax/sip/stack/MessageProcessor;

    monitor-exit v0

    return-object v1

    .line 1928
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist getNetworkLayer()Lgov/nist/core/net/NetworkLayer;
    .registers 2

    .line 1700
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    if-nez v0, :cond_7

    .line 1701
    sget-object v0, Lgov/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov/nist/core/net/DefaultNetworkLayer;

    return-object v0

    .line 1703
    :cond_7
    return-object v0
.end method

.method public greylist getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;
    .registers 4
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1780
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1782
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_e

    .line 1783
    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    return-object v0

    .line 1785
    :cond_e
    return-object v1

    .line 1789
    :cond_f
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    if-eqz v0, :cond_20

    goto :goto_2a

    .line 1791
    :cond_20
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_29

    .line 1792
    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    return-object v0

    .line 1794
    :cond_29
    return-object v1

    .line 1790
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    return-object v0
.end method

.method public greylist getReceiveUdpBufferSize()I
    .registers 2

    .line 2417
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    return v0
.end method

.method public greylist getReplacesDialog(Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)Ljavax/sip/Dialog;
    .registers 11
    .param p1, "replacesHeader"    # Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .line 2332
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 2333
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    move-result-object v1

    .line 2334
    .local v1, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    move-result-object v2

    .line 2336
    .local v2, "toTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2339
    .local v3, "dialogId":Ljava/lang/StringBuffer;
    const-string v4, ":"

    if-eqz v2, :cond_1b

    .line 2340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2341
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2344
    :cond_1b
    if-eqz v1, :cond_23

    .line 2345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2346
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2348
    :cond_23
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2349
    .local v4, "did":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 2350
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Looking for dialog "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2354
    :cond_4b
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/sip/Dialog;

    .line 2358
    .local v5, "replacesDialog":Ljavax/sip/Dialog;
    if-nez v5, :cond_77

    .line 2359
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2360
    .local v7, "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v8

    if-eqz v8, :cond_76

    .line 2361
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v5

    .line 2362
    goto :goto_77

    .line 2364
    .end local v7    # "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_76
    goto :goto_5f

    .line 2367
    :cond_77
    :goto_77
    return-object v5
.end method

.method public greylist getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 3
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public greylist getRouter()Ljavax/sip/address/Router;
    .registers 2

    .line 1874
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-object v0
.end method

.method public greylist getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;
    .registers 4
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1851
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1852
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    return-object v0

    .line 1853
    :cond_9
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-eqz v0, :cond_10

    .line 1854
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-object v0

    .line 1856
    :cond_10
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1857
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_39

    .line 1860
    :cond_31
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_36

    .line 1861
    return-object v0

    .line 1863
    :cond_36
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    return-object v0

    .line 1858
    :cond_39
    :goto_39
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    return-object v0
.end method

.method public greylist getSendUdpBufferSize()I
    .registers 2

    .line 2437
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    return v0
.end method

.method public greylist getServerLogger()Lgov/nist/core/ServerLogger;
    .registers 2

    .line 1731
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    return-object v0
.end method

.method public greylist getServerTransactionTableSize()I
    .registers 2

    .line 1429
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public greylist getStackLogger()Lgov/nist/core/StackLogger;
    .registers 2

    .line 1722
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    return-object v0
.end method

.method public greylist getThreadAuditor()Lgov/nist/core/ThreadAuditor;
    .registers 2

    .line 2097
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    return-object v0
.end method

.method public greylist getTimer()Ljava/util/Timer;
    .registers 2

    .line 2406
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public greylist isAlive()Z
    .registers 2

    .line 1883
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist isCancelClientTransactionChecked()Z
    .registers 2

    .line 2287
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    return v0
.end method

.method public greylist isEventForked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ename"    # Ljava/lang/String;

    .line 2057
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2058
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEventForked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    .line 2059
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2058
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2061
    :cond_30
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist isLogStackTraceOnMessageSend()Z
    .registers 2

    .line 2477
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    return v0
.end method

.method public greylist isLoggingEnabled()Z
    .registers 2

    .line 1713
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    :goto_a
    return v0
.end method

.method public greylist isNon2XXAckPassedToListener()Z
    .registers 2

    .line 2269
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    return v0
.end method

.method public greylist isRemoteTagReassignmentAllowed()Z
    .registers 2

    .line 2291
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    return v0
.end method

.method public greylist isRfc2543Supported()Z
    .registers 2

    .line 2283
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    return v0
.end method

.method public greylist isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .registers 4
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 893
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "branchId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public greylist mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 3
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1127
    iget-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    if-eqz v0, :cond_5

    .line 1128
    return-void

    .line 1129
    :cond_5
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 1132
    return-void
.end method

.method public greylist newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .registers 9
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "requestMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1152
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageChannel(Ljava/lang/Object;)V

    .line 1156
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1159
    .local v1, "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1160
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 1163
    :cond_18
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1164
    .local v3, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    const/4 v1, 0x0

    .line 1165
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "z9hg4bk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 1166
    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    if-nez v1, :cond_45

    .line 1168
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1171
    .local v4, "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1174
    move-object v1, v4

    goto :goto_2f

    .line 1180
    .end local v4    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_45
    if-nez v1, :cond_66

    .line 1181
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v1

    .line 1182
    if-eqz v1, :cond_5a

    .line 1184
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 1185
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1186
    return-object v1

    .line 1188
    :cond_59
    return-object v2

    .line 1192
    :cond_5a
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v1

    .line 1193
    if-eqz v1, :cond_66

    .line 1195
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1197
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 1206
    .end local v3    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_66
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 1207
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newSIPServerRequest( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1208
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1207
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1211
    :cond_a6
    if-eqz v1, :cond_b1

    .line 1212
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v3, p1, v1}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V

    .line 1215
    :cond_b1
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1216
    return-object v1

    .line 1217
    :cond_ba
    if-eqz v1, :cond_f0

    .line 1223
    :try_start_bc
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 1224
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 1225
    const/16 v3, 0x64

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 1226
    .local v3, "trying":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    .line 1227
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_e0} :catch_e1

    .line 1232
    .end local v3    # "trying":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_e0
    goto :goto_ef

    .line 1229
    :catch_e1
    move-exception v3

    .line 1230
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 1231
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v5, "Exception occured sending TRYING"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1233
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_ef
    :goto_ef
    return-object v2

    .line 1235
    :cond_f0
    return-object v2
.end method

.method public greylist newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .registers 10
    .param p1, "responseReceived"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "responseMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1258
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1265
    .local v1, "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    const-string v2, "before processing"

    const/16 v3, 0x10

    if-eqz v1, :cond_20

    .line 1266
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 1267
    const-string v4, "z9hg4bk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 1270
    :cond_20
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1271
    .local v4, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    const/4 v1, 0x0

    .line 1272
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    if-nez v1, :cond_41

    .line 1274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1277
    .local v5, "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v5, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1281
    move-object v1, v5

    goto :goto_2b

    .line 1288
    .end local v5    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_41
    if-nez v1, :cond_5a

    .line 1292
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1293
    nop

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1293
    invoke-virtual {p2, p1, v5, v6, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    .line 1298
    :cond_53
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v2, p1, p2}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v2

    return-object v2

    .line 1305
    .end local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_5a
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z

    move-result v4

    .line 1308
    .local v4, "acquired":Z
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, p1, v5, v6, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    .line 1313
    :cond_6d
    const/4 v2, 0x0

    if-eqz v4, :cond_8f

    .line 1314
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v3, p1, v1}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v3

    .line 1316
    .local v3, "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v3, :cond_7c

    .line 1317
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V

    .line 1325
    .end local v3    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    goto :goto_9e

    .line 1319
    .restart local v3    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_7c
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 1320
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v6, "returning null - serverResponseInterface is null!"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1322
    :cond_8b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    .line 1323
    return-object v2

    .line 1326
    .end local v3    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_8f
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 1327
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v5, "Could not aquire semaphore !!"

    invoke-interface {v3, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1330
    :cond_9e
    :goto_9e
    if-eqz v4, :cond_a1

    .line 1331
    return-object v1

    .line 1333
    :cond_a1
    return-object v2
.end method

.method public greylist obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .registers 6
    .param p1, "dst"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgov/nist/javax/sip/stack/IOHandler;->obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public greylist printDialogTable()V
    .registers 4

    .line 558
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 559
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 560
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    :cond_3c
    return-void
.end method

.method public greylist putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 6
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .line 605
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "dialogId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 607
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 608
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog: dialog already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 609
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 611
    :cond_3c
    return-void

    .line 613
    :cond_3d
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 614
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 616
    :cond_67
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 617
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 618
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 619
    :cond_77
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public greylist putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 5
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1114
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "mergeKey":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1116
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :cond_b
    return-void
.end method

.method public greylist putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 5
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1686
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1687
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putPendingTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1689
    :cond_20
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    return-void
.end method

.method protected greylist reInit()V
    .registers 3

    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 484
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Re-initializing !"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 487
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 489
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    .line 492
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 493
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 494
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 495
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 496
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 498
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 499
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 500
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 501
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 503
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 505
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 507
    return-void
.end method

.method public greylist removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 8
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .line 697
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getEarlyDialogId()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "earlyId":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 702
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_14
    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 711
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 713
    .local v3, "old":Ljava/lang/Object;
    if-ne v3, p1, :cond_24

    .line 714
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_24
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_56

    .line 722
    new-instance v4, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 727
    .local v4, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_56

    .line 731
    .end local v3    # "old":Ljava/lang/Object;
    .end local v4    # "event":Ljavax/sip/DialogTerminatedEvent;
    :cond_3b
    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    if-eqz v3, :cond_56

    .line 732
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v3

    if-nez v3, :cond_57

    .line 733
    new-instance v3, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 738
    .local v3, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_57

    .line 731
    .end local v3    # "event":Ljavax/sip/DialogTerminatedEvent;
    :cond_56
    :goto_56
    nop

    .line 743
    :cond_57
    :goto_57
    return-void
.end method

.method public greylist removeDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 769
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 770
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Silently removing dialog from table"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 772
    :cond_f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    return-void
.end method

.method public greylist removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 4
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1098
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1099
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Removing tx from merge table "

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1101
    :cond_f
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 1103
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    :cond_20
    return-void
.end method

.method protected greylist removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .registers 4
    .param p1, "oldMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 1911
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v0

    .line 1912
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1913
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    .line 1915
    :cond_e
    monitor-exit v0

    .line 1916
    return-void

    .line 1915
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 5
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1084
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1085
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePendingTx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1087
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    return-void
.end method

.method public greylist removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 9
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1450
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1451
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Transaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1454
    :cond_2e
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    const-string v1, "INVITE"

    if-eqz v0, :cond_7f

    .line 1455
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1456
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1457
    :cond_41
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1459
    .local v2, "removed":Ljava/lang/Object;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 1460
    .local v3, "method":Ljava/lang/String;
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1461
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    .line 1462
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1463
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1466
    :cond_67
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    .line 1467
    .local v1, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-eqz v2, :cond_7e

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1468
    new-instance v4, Ljavax/sip/TransactionTerminatedEvent;

    move-object v5, p1

    check-cast v5, Ljavax/sip/ServerTransaction;

    invoke-direct {v4, v1, v5}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V

    .line 1471
    .local v4, "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1, v4, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1474
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    .end local v2    # "removed":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/String;
    .end local v4    # "event":Ljavax/sip/TransactionTerminatedEvent;
    :cond_7e
    goto :goto_ec

    .line 1476
    :cond_7f
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1477
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1479
    .restart local v2    # "removed":Ljava/lang/Object;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 1480
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVED client tx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KEY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1481
    if-eqz v2, :cond_d5

    .line 1482
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1483
    .local v3, "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v1, :cond_d5

    .line 1484
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;

    invoke-direct {v1, p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 1485
    .local v1, "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    iget v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1491
    .end local v1    # "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    .end local v3    # "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_d5
    if-eqz v2, :cond_ec

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1492
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    .line 1493
    .local v1, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    new-instance v3, Ljavax/sip/TransactionTerminatedEvent;

    move-object v4, p1

    check-cast v4, Ljavax/sip/ClientTransaction;

    invoke-direct {v3, v1, v4}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V

    .line 1496
    .local v3, "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1, v3, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1500
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    .end local v2    # "removed":Ljava/lang/Object;
    .end local v3    # "event":Ljavax/sip/TransactionTerminatedEvent;
    :cond_ec
    :goto_ec
    return-void
.end method

.method protected greylist removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 7
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1579
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1580
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-nez v0, :cond_7

    .line 1581
    return-void

    .line 1582
    :cond_7
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_3a

    .line 1583
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1584
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1585
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1586
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing client Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1588
    :cond_34
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "key":Ljava/lang/String;
    goto :goto_68

    .line 1590
    :cond_3a
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_68

    .line 1591
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1592
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1594
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing server Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_69

    .line 1590
    .end local v1    # "key":Ljava/lang/String;
    :cond_68
    :goto_68
    nop

    .line 1597
    :cond_69
    :goto_69
    return-void
.end method

.method public greylist removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .registers 4
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 877
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 879
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const/4 v1, 0x1

    return v1

    .line 882
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public greylist setAddressResolver(Lgov/nist/core/net/AddressResolver;)V
    .registers 2
    .param p1, "addressResolver"    # Lgov/nist/core/net/AddressResolver;

    .line 2079
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    .line 2080
    return-void
.end method

.method public greylist setDeliverDialogTerminatedEventForNullDialog()V
    .registers 2

    .line 2481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 2482
    return-void
.end method

.method protected greylist setHostAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "stackAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1815
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v1, v0, :cond_33

    .line 1816
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_33

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    goto :goto_35

    .line 1819
    :cond_33
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    .line 1820
    :goto_35
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackInetAddress:Ljava/net/InetAddress;

    .line 1821
    return-void
.end method

.method public greylist setLogRecordFactory(Lgov/nist/javax/sip/LogRecordFactory;)V
    .registers 2
    .param p1, "logRecordFactory"    # Lgov/nist/javax/sip/LogRecordFactory;

    .line 2088
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    .line 2089
    return-void
.end method

.method public greylist setLogStackTraceOnMessageSend(Z)V
    .registers 2
    .param p1, "logStackTraceOnMessageSend"    # Z

    .line 2470
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 2471
    return-void
.end method

.method public greylist setMaxConnections(I)V
    .registers 2
    .param p1, "nconnections"    # I

    .line 1770
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    .line 1771
    return-void
.end method

.method protected greylist setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .registers 2
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1987
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1988
    return-void
.end method

.method public greylist setNon2XXAckPassedToListener(Z)V
    .registers 2
    .param p1, "passToListener"    # Z

    .line 2262
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    .line 2263
    return-void
.end method

.method public greylist setReceiveUdpBufferSize(I)V
    .registers 2
    .param p1, "receiveUdpBufferSize"    # I

    .line 2427
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    .line 2428
    return-void
.end method

.method protected greylist setRouter(Ljavax/sip/address/Router;)V
    .registers 2
    .param p1, "router"    # Ljavax/sip/address/Router;

    .line 1842
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    .line 1843
    return-void
.end method

.method public greylist setSendUdpBufferSize(I)V
    .registers 2
    .param p1, "sendUdpBufferSize"    # I

    .line 2447
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    .line 2448
    return-void
.end method

.method public greylist setSingleThreaded()V
    .registers 2

    .line 1750
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 1751
    return-void
.end method

.method public greylist setStackLogger(Lgov/nist/core/StackLogger;)V
    .registers 2
    .param p1, "stackLogger"    # Lgov/nist/core/StackLogger;

    .line 2454
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    .line 2455
    return-void
.end method

.method public greylist setStackName(Ljava/lang/String;)V
    .registers 2
    .param p1, "stackName"    # Ljava/lang/String;

    .line 1804
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackName:Ljava/lang/String;

    .line 1805
    return-void
.end method

.method public greylist setThreadPoolSize(I)V
    .registers 2
    .param p1, "size"    # I

    .line 1761
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 1762
    return-void
.end method

.method public greylist setTimer(Ljava/util/Timer;)V
    .registers 2
    .param p1, "timer"    # Ljava/util/Timer;

    .line 2399
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 2400
    return-void
.end method

.method public greylist stopStack()V
    .registers 5

    .line 1641
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 1642
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1645
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 1646
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    .line 1648
    monitor-enter p0

    .line 1649
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1650
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_5b

    .line 1651
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1652
    :try_start_1a
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1653
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_58

    .line 1655
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1658
    :try_start_23
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    .line 1659
    .local v0, "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    const/4 v2, 0x0

    .local v2, "processorIndex":I
    :goto_28
    array-length v3, v0

    if-ge v2, v3, :cond_33

    .line 1660
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1659
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1662
    .end local v2    # "processorIndex":I
    :cond_33
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/IOHandler;->closeAll()V

    .line 1665
    .end local v0    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_55

    .line 1668
    const-wide/16 v0, 0x3e8

    :try_start_3b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1671
    goto :goto_40

    .line 1670
    :catch_3f
    move-exception v0

    .line 1672
    :goto_40
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1673
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1675
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1676
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-interface {v0}, Lgov/nist/core/ServerLogger;->closeLogFile()V

    .line 1678
    return-void

    .line 1665
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0

    .line 1653
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1

    .line 1650
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public declared-synchronized greylist transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .registers 5
    .param p1, "transactionErrorEvent"    # Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    monitor-enter p0

    .line 1605
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1607
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 1609
    sget-object v1, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1610
    instance-of v1, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_1d

    .line 1612
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    const/4 v2, 0x0

    iput v2, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1614
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :cond_1d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    .line 1615
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 1618
    :cond_23
    monitor-exit p0

    return-void

    .line 1604
    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local p1    # "transactionErrorEvent":Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method
