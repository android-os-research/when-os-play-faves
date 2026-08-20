.class Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;
.super Ljava/lang/Object;
.source "SemRoamingChannelList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemRoamingChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemRoamingChannelList;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;->this$0:Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)I
    .registers 8

    .line 149
    iget p0, p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->totalCount:I

    iget v0, p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->totalCount:I

    const/4 v1, -0x1

    if-le p0, v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    if-ge p0, v0, :cond_c

    return v2

    .line 152
    :cond_c
    iget-wide p0, p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->hitTime:J

    iget-wide v3, p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->hitTime:J

    cmp-long p2, p0, v3

    if-lez p2, :cond_15

    return v1

    :cond_15
    cmp-long p0, p0, v3

    if-gez p0, :cond_1a

    return v2

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 146
    check-cast p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    check-cast p2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;->compare(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)I

    move-result p0

    return p0
.end method
