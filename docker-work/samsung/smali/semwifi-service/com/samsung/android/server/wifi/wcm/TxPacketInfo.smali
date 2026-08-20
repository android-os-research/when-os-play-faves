.class public Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;
.super Ljava/lang/Object;
.source "TxPacketInfo.java"


# static fields
.field public static final DISCONNECTED:I = 0x3

.field public static final FAILED:I = 0x2

.field public static final SUCCESS:I = 0x1


# instance fields
.field public mTxbad:I

.field public mTxgood:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
