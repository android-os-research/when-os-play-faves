.class Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;
.super Ljava/lang/Object;
.source "SemRoamingChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemRoamingChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelData"
.end annotation


# instance fields
.field frequency:I

.field hitTime:J

.field totalCount:I


# direct methods
.method constructor <init>(IJI)V
    .registers 5

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    .line 141
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->hitTime:J

    .line 142
    iput p4, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->totalCount:I

    return-void
.end method
