.class public final Lcom/android/server/am/Pageboost$PageboostdProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageboostdProxy"
.end annotation


# static fields
.field public static final PAGEBOOST_ACTIVELAUNCH:I = 0x4

.field public static final PAGEBOOST_HALT:I = 0x2

.field public static final PAGEBOOST_MEMRECLAIM:I = 0x3

.field public static final PAGEBOOST_PREFETCH:I = 0x1

.field public static conn:Lcom/android/server/am/Pageboost$DaemonConnector; = null

.field public static final socketName:Ljava/lang/String; = "pageboostd"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeCmd(ILjava/lang/String;)V
    .registers 5

    .line 2653
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p0, v0, :cond_24

    .line 2658
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2659
    array-length p1, p0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2660
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2661
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2662
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2663
    sget-object p0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_67

    :cond_24
    const/4 v0, 0x2

    const/4 v2, 0x4

    if-ne p0, v0, :cond_35

    .line 2666
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2667
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2668
    sget-object p1, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_67

    :cond_35
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4c

    .line 2671
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2672
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2673
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2674
    sget-object p1, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {p1, p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_67

    :cond_4c
    if-ne p0, v2, :cond_67

    .line 2676
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 2677
    array-length p1, p0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2678
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2679
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2680
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2681
    sget-object p0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public static initPageboostdProxy()V
    .registers 2

    .line 2649
    new-instance v0, Lcom/android/server/am/Pageboost$DaemonConnector;

    const-string/jumbo v1, "pageboostd"

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    return-void
.end method
