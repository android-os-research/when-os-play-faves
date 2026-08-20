.class public Lcom/samsung/android/bbccommon/HexDumpHelper;
.super Ljava/lang/Object;
.source "HexDumpHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDumpHexString([BII)Ljava/lang/String;
    .registers 3

    .line 9
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexStringToByteArray(Ljava/lang/String;)[B
    .registers 1

    .line 13
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
