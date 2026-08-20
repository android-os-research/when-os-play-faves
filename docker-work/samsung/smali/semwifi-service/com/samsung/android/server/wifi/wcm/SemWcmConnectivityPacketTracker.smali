.class public Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "SemWcmConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MARK_NAMED_START:Ljava/lang/String; = "--- START (%s) ---"

.field private static final MARK_NAMED_STOP:Ljava/lang/String; = "--- STOP (%s) ---"

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String; = "SemWcmConnectivityPacketTracker"


# instance fields
.field private mConsecutiveBroadcastArpQueriesToGateway:I

.field private mDisplayName:Ljava/lang/String;

.field private mGateway:Ljava/lang/String;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

.field private mRunning:Z

.field private final mTag:Ljava/lang/String;

.field mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mConsecutiveBroadcastArpQueriesToGateway:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mGateway:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mConsecutiveBroadcastArpQueriesToGateway:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 60
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->DBG:Z

    :try_start_6
    const-string v0, "wifipackettrackerjni"

    .line 88
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SemWcmConnectivityPacketTracker"

    const-string v1, "Loaded wifipackettrackerjni lib"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_12} :catch_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_1c

    :catch_13
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_1c
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 7

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mGateway:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mConsecutiveBroadcastArpQueriesToGateway:I

    if-eqz p2, :cond_30

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWcmConnectivityPacketTracker."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 82
    new-instance p3, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 83
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    return-void

    .line 78
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null InterfaceParams"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native attachWifiControlPacketFilter(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mRunning:Z

    .line 102
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->start()Z

    return-void
.end method

.method public stop()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->stop()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mRunning:Z

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public updateGateway(Ljava/lang/String;)V
    .registers 4

    .line 113
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateGateway: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWcmConnectivityPacketTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1a
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mGateway:Ljava/lang/String;

    return-void
.end method
