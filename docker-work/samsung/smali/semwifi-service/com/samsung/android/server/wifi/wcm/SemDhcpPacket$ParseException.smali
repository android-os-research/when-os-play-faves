.class public Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;
.super Ljava/lang/Exception;
.source "SemDhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 823
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 824
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket$ParseException;->errorCode:I

    return-void
.end method
