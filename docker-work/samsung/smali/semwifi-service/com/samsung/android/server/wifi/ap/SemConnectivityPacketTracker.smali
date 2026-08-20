.class public Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "SemConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MARK_NAMED_START:Ljava/lang/String; = "--- START (%s) ---"

.field private static final MARK_NAMED_STOP:Ljava/lang/String; = "--- STOP (%s) ---"

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String; = "SemConnectivityPacketTracker"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

.field private mRunning:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 61
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->DBG:Z

    :try_start_6
    const-string v1, "wifipackettrackerjni"

    .line 83
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "SemConnectivityPacketTracker"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded wifipackettrackerjni lib DBG value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_21} :catch_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_2b

    :catch_22
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    :catch_27
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)V
    .registers 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_24

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemConnectivityPacketTracker."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 78
    new-instance p3, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;-><init>(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    return-void

    .line 74
    :cond_24
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

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mRunning:Z

    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->start()Z

    return-void
.end method

.method public stop()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mPacketListener:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->stop()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mRunning:Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->mDisplayName:Ljava/lang/String;

    return-void
.end method
